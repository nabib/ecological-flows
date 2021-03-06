%--------------------------------------------------------------------------
%Flood_Routing_Main.m: Program to model outflow hydrograph from inflow
%hydrograph knowing 1) the storage-outflow relation, 2) the shape of unit 
%hydrograph, 3) watershed attributes, and 4) precipitation statistics
%
%Authors:Gaby Katul, Nicole Abib, Sophie Erfurth, Mary Tchamkina, and Hannah Doherty
%
%Date: 02/07/2016
%NOTES:
%1 Cubic Foot = 0.0283168466 m3
%g = 9.81 m/s/s - Gravitational acceleration
%--------------------------------------------------------------------------
clearvars 
clc
g=9.81;              % Gravitational constant (m/s/s)
% ----------- Use geometry of Lake Wheeler dam ----------------------------
% (https://en.wikipedia.org/wiki/Wheeler_Dam)
Reservoir_Watershed_Parameters;
%----------------------- Watershed area 
Area_WS=50;                    % Watershed contributing to inflow (km2)
%ftp://ftp.odot.state.or.us/techserv/Geo-Environmental/Hydraulics/Hydraulics%20Manual/Chapter_07/Chapter_07_appendix_F/CHAPTER_07_appendix_F.pdf
C_runoff=0.5;                  % Runoff coefficient, varies with LULC
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Nday=365*200;                   % Number of days to model (d)(*200) 200 years
dt=0.01;                        % Time increment to compute outflow (d) 14.4 minutes
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%---- Generate Unit hydrograph (UH) for watershed
a=3;b=0.5;              % dictate the shape of the UH, a (dim), b (1/d)
TTmax=20;               % The maximum extend of the hydrograph duration (d)
[UH] = Generate_Unit_Hydrograph(a,b,TTmax,dt);
MM=length(UH);
%Plot_UH;
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

%---- Generate stats of rainfall (on daily basis-assumed as marked Poisson)
Dur=4/24;                       % Duration of storm (hours per day) %climate change model can feed in here
annual_precip=1200;             % Annual precip. (mm/year)
%--- Loop over return period of daily rainfall
for kk=1:29 %30 days
    Ret_P(kk)=kk+1; %stays
    kk
    freq=1/(Ret_P(kk));             % Return frequency between days (1/d)

    dep=(annual_precip/365)/freq;   % Expected water depth (mm)
    Precip=[];
    [Precip] = Precip_generate_series(freq,dep,Dur,Nday,dt);
    Ntot=length(Precip);
    %++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    %---- Assume PET
    PET = 0;                        % ET losses from reservoir (mm/d) factor in ET at some point
    ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
    %---- Convert rainfall to inflow using the unit hydrograph and runoff coef.
    Factor=C_runoff*(Area_WS*(1000*1000))*((1/Dur)*(0.001));
    Ids_F=Factor*conv(Precip,UH);    % Determine inflow from convolution of P and UH
    Ih1=[];
    Ih1=Ids_F(1:Ntot+1);        % This is the inflow in m3/d
    t=[0:1:Ntot]*dt;
    %---------- Check conservation of mass
    Mass_Out=dt*sum(Ids_F);
    Mass_rain=sum(Precip)*Factor;
    Ratio_out_2_in=Mass_Out/Mass_rain;
    %++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    %--- Compute outflow from inflow using dS/dt = Inflow - Outflow - ET
    Sd(1)=0.5*Vcapacity;

    Precip_return(kk,:) = Precip;
    Ih1_return(kk,:) = Ih1;
    baseflow = 0.01*max(Ih1_return(1,:));
    Ih1 = (Ih1 + baseflow);
    Ih1_return(kk,:) = Ih1;
    
    McCann_Yodzis1994_Foodweb

    Sd_return(kk,:) = Sd;
    Sd_flood_return(kk,:) = Sd_flood;
    Sd_drought_return(kk,:) = Sd_drought;
    Sd_natvar_return(kk,:) = Sd_natvar;
    Sd_minflo_return(kk,:) = Sd_minflo;

    Od_return(kk,:) = Od;
    Od_flood_return(kk,:) = Od_flood;
    Od_drought_return(kk,:) = Od_drought;
    Od_natvar_return(kk,:) = Od_natvar;
    Od_minflo_return(kk,:) = Od_minflo;

    N_return(kk,:) = N_reg;
    N_flood_return(kk,:) = N_flood;
    N_drought_return(kk,:) = N_drought;
    N_natvar_return(kk,:) = N_natvar;
    N_minflo_return(kk,:) = N_minflo;

    R_return(kk,:) = R;
    C_return(kk,:) = C;
    P_return(kk,:) = P;

    R_drought_return(kk,:) = R_drought;
    C_drought_return(kk,:) = C_drought;
    P_drought_return(kk,:) = P_drought;

    R_flood_return(kk,:) = R_flood;
    C_flood_return(kk,:) = C_flood;
    P_flood_return(kk,:) = P_flood;

    R_natvar_return(kk,:) = R_natvar;
    C_natvar_return(kk,:) = C_natvar;
    P_natvar_return(kk,:) = P_natvar;

    R_minflo_return(kk,:) = R_minflo;
    C_minflo_return(kk,:) = C_minflo;
    P_minflo_return(kk,:) = P_minflo;
    
    foodwebstats
    %%
    %++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    %Plot_Simulations  %for each return frequency (commented for now)
    %Plot_Foodweb
    % %++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    %--- Determine the statistical characteristics of the outflow after
    %ignoring the first 20% of the model runs (transients - affected by the
    %fact that the reservoir was empty).
    Od1=Od(floor(Ntot/5):Ntot);
    Od1_flood=Od_flood(floor(Ntot/5):Ntot);
    Od1_drought=Od_drought(floor(Ntot/5):Ntot);
    Od1_natvar=Od_natvar(floor(Ntot/5):Ntot);
    Od1_minflo=Od_minflo(floor(Ntot/5):Ntot);
    
    % --- compute the mean and std of inflow series
    In_F(kk)=mean(Ih1);
    In_std(kk)=std(Ih1);
    
    % --- compute the mean and std of outflow series as well as their CV
    OutF_mean(kk)=mean(Od1);
    OutF_mean_flood(kk)=mean(Od1_flood);
    OutF_mean_drought(kk)=mean(Od1_drought);
    OutF_mean_natvar(kk)=mean(Od1_natvar);
    OutF_mean_minflo(kk)=mean(Od1_minflo);
    
    OutF_std(kk)=std(Od1);
    OutF_std_flood(kk)=std(Od1_flood);
    OutF_std_drought(kk)=std(Od1_drought);
    OutF_std_natvar(kk)=std(Od1_natvar);
    OutF_std_minflo(kk)=std(Od1_minflo);
    
    OutF_CV(kk)=OutF_std(kk)/OutF_mean(kk);
    OutF_CV_flood(kk)=OutF_std_flood(kk)/OutF_mean_flood(kk);
    OutF_CV_drought(kk)=OutF_std_drought(kk)/OutF_mean_drought(kk);
    OutF_CV_natvar(kk)=OutF_std_natvar(kk)/OutF_mean_natvar(kk);
    OutF_CV_minflo(kk)=OutF_std_minflo(kk)/OutF_mean_minflo(kk);
    
    %--- check that the longterm outflow to inflow is close to unity
    %(stationarity check)
    Rout_eff(kk)=OutF_mean(kk)/In_F(kk);
    Rout_eff_flood(kk)=OutF_mean_flood(kk)/In_F(kk);
    Rout_eff_drought(kk)=OutF_mean_drought(kk)/In_F(kk);
    Rout_eff_natvar(kk)=OutF_mean_natvar(kk)/In_F(kk);
    Rout_eff_minflo(kk)=OutF_mean_minflo(kk)/In_F(kk);
    
    %--- Check the variability of outflow to inflow
    Rout_dissip(kk)=OutF_std(kk)/In_std(kk);
    Rout_dissip_flood(kk)=OutF_std_flood(kk)/In_std(kk);
    Rout_dissip_drought(kk)=OutF_std_drought(kk)/In_std(kk);
    Rout_dissip_natvar(kk)=OutF_std_natvar(kk)/In_std(kk);
    Rout_dissip_minflo(kk)=OutF_std_minflo(kk)/In_std(kk);
end