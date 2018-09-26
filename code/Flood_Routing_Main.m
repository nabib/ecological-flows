%--------------------------------------------------------------------------
%Flood_Routing_Main.m: Program to model outflow hydrograph from inflow
%hydrograph knowing 1) the storage-outflow relation, 2) the shape of unit 
%hydrograph, 3) watershed attributes, and 4) precipitation statistics
%
%Authors:Gaby Katul, Mary Tchamkina, and Hannah Doherty
%
%Date: 02/07/2016
%NOTES:
%1 Cubic Foot = 0.0283168466 m3
%g = 9.81 m/s/s - Gravitational acceleration
%--------------------------------------------------------------------------
clear all
clc
g=9.81;              % Gravitational constant (m/s/s) -stays
% ----------- Use geometry of Lake Wheeler dam ----------------------------
% (https://en.wikipedia.org/wiki/Wheeler_Dam)
Reservoir_Watershed_Parameters
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Nday=365*200;                   % Number of days to model (d) -stays
dt=0.01;                        % Time increment to compute outflow (d) - stays
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%---- Generate Unit hydrograph (UH) for watershed
a=3;b=0.5;              % dictate the shape of the UH, a (dim), b (1/d) % do we change these?????
TTmax=20;               % The maximum extend of the hydrograph duration (d)- stays
[UH] = Generate_Unit_Hydrograph(a,b,TTmax,dt);
MM=length(UH); %stays
Plot_UH %stays
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

%---- Generate stats of rainfall (on daily basis-assumed as marked Poisson)
Dur=4/24;                       % Duration of storm (hours per day) %climate change model can feed in 
annual_precip=1200;             % Annual precip. (mm/year)

% --- compute sediment outflow relationship downstream from dam (units =
% tons/day for sediment, cfs for outflow)
OutF_model_cfs = [13000 8100 4600 2700 1400 830 420 250 190 155 127 105 81 51 25 13.5];
% convert Outflow to m3/d
OutF_model = (OutF_model_cfs * 0.0283168466)*(60*60*24)
Sed_model = [2700000 1600000 820000 425000 185000 93000 39000 19500 13600 10200 7500 5700 3800 1720 325 17.5];
s1 = polyfit(OutF_model,Sed_model,1);
slope1=s1(1);
intercept1=s1(2);
y_hat1=slope1*OutF_model+intercept1;
%plot (OutF_model,Sed_model,'bo')
%hold on
%plot (OutF_model,y_hat1,'k-')

%--- Compute nutrient outflow relationship downstream from dam (N,P,O)


%--- Loop over return period of daily rainfall
for kk=1:2 %why 29?
Ret_P(kk)=kk+1; %stays
freq=1/(Ret_P(kk));             % Return frequency between days (1/d %stays
 
dep=(annual_precip/365)/freq;   % Expected water depth (mm) %stays ----ask gaby
P=[];
[P] = Precip_generate_series(freq,dep,Dur,Nday,dt);
Ntot=length(P); %stays
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%---- Assume PET
PET = 0;                        % ET losses from reservoir (mm/d) factor in ET at some point
%---- Convert rainfall to inflow using the unit hydrograph and runoff coef.
Factor=C_runoff*(Area_WS*(1000*1000))*((1/Dur)*(0.001)); %stays
Ids_F=Factor*conv(P,UH);    % Determine inflow from convolution of P and UH %stays
Ih1=[];
Ih1=Ids_F(1:Ntot+1);        % This is the inflow in m3/d
t=[0:1:Ntot]*dt;
%---------- Check conservation of mass
Mass_Out=dt*sum(Ids_F);
Mass_rain=sum(P)*Factor;
Ratio_out_2_in=Mass_Out/Mass_rain
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

%--- Compute outflow from inflow using dS/dt = Inflow - Outflow - ET
ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
Sd(1)=0.01*Vcapacity; 
for i=1:Ntot
  Od(i)=alpha*((Sd(i)+eps))^(beta); %storage outflow relationship
%--- This is the mass balance equation:dS/dt = I - (S/alpha)^(1/beta)-ET 
  Sd(i+1)=max(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES),100*eps);
  %--- Compute sediment amount given outflow
  Sed(i) = slope1*Od(i) + intercept1;
  %--- Compute N,P given sedimentation
  %--- Compute O given outflow
end
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%Plot_Simulations  %for each return frequency (commented for now)
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%--- Determine the statistical characteristics of the outflow after
%ignoring the first 20% of the model runs (transients - affected by the
%fact that the reservoir was empty).

Od1=Od(floor(Ntot/5):Ntot);

% --- compute the mean and std of inflow series
In_F(kk)=mean(Ih1);
In_std(kk)=std(Ih1);

% --- compute the mean and std of outflow series as well as their CV
OutF_mean(kk)=mean(Od1);
OutF_std(kk)=std(Od1);
OutF_CV(kk)=OutF_std(kk)/OutF_mean(kk);
%--- check that the longterm outflow to inflow is close to unity
%(stationarity check)
Rout_eff(kk)=OutF_mean(kk)/In_F(kk);
%--- Check the variability of outflow to inflow
Rout_dissip(kk)=OutF_std(kk)/In_std(kk);

%--- assume for now - a minimum environmental flow to be maintained
Ocrit=In_F(kk);   %m3/year converted to m3/d - minimum environmental flow %Mean inflow
Uc=[];
%--- find the fraction of time the outflow drops below this minimum
Uc=find(Od1<Ocrit);
OutF_exe(kk)=length(Uc)/length(Od1);
end

plot(1:Ntot,Sed)

%Plot_OF_ReturnPeriod
%print -djpeg99 Fig_As50