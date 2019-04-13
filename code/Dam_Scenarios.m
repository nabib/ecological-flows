%--------------------------------------------------------------------------
%Dam_Scenarios.m: Determines inflow, storage, outflow, nutrient
%                   relationships for 5 different dam management scenarios
%
%Authors: Sophie Erfurth, Gaby Katul, Hannah Doherty, and Mary Tchamkina
%
%Date: 3/25/2016
%--------------------------------------------------------------------------
%% Regular Dam Scenario
%C=nutrient loss (unit/m^3)
%C_in=nutrient inflow constant (unit/m^3) 
%k=nutrient decay rate (1/t)
N_bg=0.3; %mg/l
N_reg(1)=N_bg;
N_in_bg=0.6;
k=.001;
N_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; %if Ih dev from mean is higher 5*std


Sd(1)=0.5*Vcapacity;
frac_gate=0.7;
[alpha,beta]=Parameters_Gate_Regulation(frac_gate);


for i=1:Ntot
    Od(i)=alpha*((Sd(i)+eps))^(beta); 
    Sd(i+1)=(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES));
    N_in_reg=(1-N_ind(i))*N_in_bg; %high inflow generates washout
    N_reg(i+1)=(Sd(i)*N_reg(i))/Sd(i+1)+dt*(((Ih1(i)*N_in_reg-Od(i)*N_reg(i)-Sd(i)*k*N_reg(i))/Sd(i+1)));
end

%Add baseflow
Od = Od+baseflow;

% figure (1)
% plot(Ih1)
% xlabel('dt')
% ylabel('Inflow (m^3/dt)')
% title('Run-of-River')
% 
% figure (2)
% plot(Od)
% xlabel('dt')
% ylabel('Outflow (m^3/dt)')
% title('Run-of-River')
% 
% figure (3)
% plot(Sd)
% xlabel('dt')
% ylabel('Storage (m^3)')
% title('Run-of-River')
% 
% figure (4)
% plot(Od, C_reg(1:Ntot))
% xlabel('Outflow (m^3/dt)')
% ylabel('Nutrients (unit/m^3)')
% title('Run-of-River')

%% Flood Management

%If storage exceeds 50% of the dam's capacity, 
%gates will be opened to frac_gate_max. 

Sd_flood(1)=0.5*Vcapacity;
frac_gate_normal=0.5;
frac_gate_max=1;

%Nutrient parameters:
N_bg=0.3; %mg/l
N_flood(1)=N_bg;
N_in_bg=0.6;
k=.001;
N_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; 

for i=1:Ntot
    Ind_fun=min(floor(Sd_flood(i)/(0.5*Vcapacity)),1); %below 50% = 0, above = 1
    frac_gate=Ind_fun*frac_gate_max+(1-Ind_fun)*frac_gate_normal; %either general or flood management
    [alpha,beta]=Parameters_Gate_Regulation(frac_gate);
    Od_flood(i)=alpha*((Sd_flood(i)+eps))^(beta); 
    Sd_flood(i+1)=max(Sd_flood(i)+dt*(Ih1(i)-Od_flood(i)-ET_RES),100*eps);
 
    N_in_flood=(1-N_ind(i))*N_in_bg; %high inflow generates washout
    N_flood(i+1)=(Sd_flood(i)*N_flood(i))/Sd_flood(i+1)+dt*(((Ih1(i)*N_in_flood-Od_flood(i)*N_flood(i)-Sd_flood(i)*k*N_flood(i))/Sd_flood(i+1)));

end

%Add baseflow
Od_flood = Od_flood+baseflow;

% figure (5)
% plot(Od_flood)
% xlabel('dt')
% ylabel('Outflow (m^3/dt)')
% title('Flood Management')
% % 
% % figure (6)
% plot(Sd_flood)
% xlabel('dt')
% ylabel('Storage (m^3)')
% title('Flood Management')
% hold on
% plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))
% 
% figure (7)
% plot(Od_flood, C_flood(1:Ntot))
% xlabel('Outflow (m^3/dt)')
% ylabel('Nutrients (unit/m^3)')
% title('Flood Management')

%% Drought Management

%If storage is less than 50% of the dam's capacity, no
%water will be released from the dam (frac_gate_min).
Sd_drought(1)=0.5*Vcapacity;
frac_gate_normal=0.8;
frac_gate_min=0;

%Nutrient parameters:
N_bg=0.3; %mg/l
N_drought(1)=N_bg;
N_in_bg=0.6;
k=.001;
N_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; 

for i=1:Ntot
 
    Ind_fun=min(floor(Sd_drought(i)/(0.5*Vcapacity)),1); %below 50% = 0, above = 1
    
    frac_gate=Ind_fun*frac_gate_normal+(1-Ind_fun)*frac_gate_min; %either general or drought management
    [alpha,beta]=Parameters_Gate_Regulation(frac_gate);

    Od_drought(i)=alpha*((Sd_drought(i)+eps))^(beta); 
    Sd_drought(i+1)=max(Sd_drought(i)+dt*(Ih1(i)-Od_drought(i)-ET_RES),100*eps);

    N_in_drought=(1-N_ind(i))*N_in_bg; %high inflow generates washout
    N_drought(i+1)=(Sd_drought(i)*N_drought(i))/Sd_drought(i+1)+dt*(((Ih1(i)*N_in_drought-Od_drought(i)*N_drought(i)-Sd_drought(i)*k*N_drought(i))/Sd_drought(i+1)));

end

%Add baseflow
Od_drought = Od_drought+baseflow;

% figure (8)
% plot(Od_drought)
% xlabel('dt')
% ylabel('Outflow (m^3/dt)')
% title('Drought Management')
% 
% figure (9)
% plot(Sd_drought)
% xlabel('dt')
% ylabel('Storage (m^3)')
% title('Drought Management')
% hold on
% plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))
% 
% figure (10)
% plot(Od_drought, C_drought(1:Ntot))
% xlabel('Outflow (m^3/dt)')
% ylabel('Nutrients (unit/m^3)')
% title('Drought Management')

%% Natural Variability: Outflow equals Inflow.

Sd_natvar(1:Ntot+1)=0;
% Od_natvar=Ih1 + baseflow;
Od_natvar=Ih1;


%Nutrient parameters:
N_bg=0.3; %mg/l
N_natvar(1)=N_bg;
N_in_bg=0.6;
k=0;
N_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; %Washout

%Nutrient parameters: washout yes, k no
for i=1:Ntot
 N_in_natvar=(1-N_ind(i))*N_in_bg; %high inflow generates washout
 N_natvar(i+1)=N_in_natvar;
end


% figure (11)
% plot(Od_natvar)
% xlabel('dt')
% ylabel('Outflow (m^3/dt)')
% title('Natural Variability')
% 
% figure (13)
% plot(Od_natvar(1:Ntot), C_natvar(1:Ntot))
% xlabel('Outflow (m^3/dt)')
% ylabel('Nutrients (unit/m^3)')
% title('Natural Variability')
%% Minimum Flow

%If outflow is less than min. flow, gates are opened to frac_gate_max.

Sd_minflo(1)=0.5*Vcapacity;
frac_gate_normal=0.6;
frac_gate=0.6;
frac_gate_max=0.8;

%Nutrient parameters:
N_bg=0.3; %mg/l
N_minflo(1)=N_bg;
N_in_bg=0.6;
k=.001;
N_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; 

Ih_mean=mean(Ih1);
lag=floor(10/dt);
for i=1:Ntot
    [alpha,beta]=Parameters_Gate_Regulation(frac_gate);
    Od_minflo(i)=alpha*((Sd_minflo(i)+eps))^(beta); 
    Sd_minflo(i+1)=max(Sd_minflo(i)+dt*(Ih1(i)-Od_minflo(i)-ET_RES),100*eps);
 
    ind_min_flo=1-min(floor(i/lag),1);
    Od_min_lag=[];
    Od_min_lag=mean(Od_minflo((i+(ind_min_flo*lag))-(lag-1):i));
    Ind_fun(i)=min(floor(Od_min_lag/(Ih_mean)),1);
    frac_gate=Ind_fun(i)*frac_gate_normal+(1-Ind_fun(i))*frac_gate_max; %either general or flood management

    N_in_minflo=(1-N_ind(i))*N_in_bg; %high inflow generates washout
    N_minflo(i+1)=(Sd_minflo(i)*N_minflo(i))/Sd_minflo(i+1)+dt*(((Ih1(i)*N_in_minflo-Od_minflo(i)*N_minflo(i)-Sd_minflo(i)*k*N_minflo(i))/Sd_minflo(i+1)));

end

%Add baseflow
Od_minflo = Od_minflo+baseflow;

%yy1= smooth(Od_minflo,C_minflo(1:Ntot), 0.1, 'loess') smooth
% figure (14)
% plot(Od_minflo)
% xlabel('dt')
% ylabel('Outflow (m^3/dt)')
% title('Minimum Flow')
% axis([1 Ntot 0 600000]);
%hold on
%plot (1:Ntot+1,ones(size(1:Ntot+1))*(400000))

%figure (15)
%plot(Sd_minflo)
%xlabel('dt')
%ylabel('Storage (m^3)')
%title('Minimum Flow')

%figure (20)
%plot(Ih1)
%hold on 
%plot(Od_minflo)

%figure (16)
%plot(Od_minflo, C_minflo(1:Ntot))
%xlabel('Outflow (m^3/dt)')
%ylabel('Nutrients (unit/m^3)')
%title('Minimum Flow')
%% Compare Outflows

%figure(8)
%plot (1:Ntot+1,Od_natvar)
%hold on 
%plot (1:Ntot,Od_drought)
%hold on
%plot (1:Ntot,Od_flood)
