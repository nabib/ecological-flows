%Different Dam Management Scenarios


Reservoir_Watershed_Parameters
Flood_Routing_Main

ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
Sd(1)=0.5*Vcapacity;

%% Regular Dam Scenario
%C=nutrient loss (unit/m^3)
%C_in=nutrient inflow constant (unit/m^3) 
%k=nutrient decay rate (1/t)
C_bg=0.6; %mg/l
C(1)=C_bg;
C_in_bg=.9;
k=.001;
C_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; %if Ih dev from mean is higher 5*std


Sd(1)=0.5*Vcapacity;
frac_gate=0.7;
[alpha,beta]=Parameters_Gate_Regulation(frac_gate);


for i=1:Ntot
 Od(i)=alpha*((Sd(i)+eps))^(beta); 
 Sd(i+1)=(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES));
 C_in=(1-C_ind(i))*C_in_bg; %high inflow generates washout
 C(i+1)=(Sd(i)*C(i))/Sd(i+1)+dt*(((Ih1(i)*C_in-Od(i)*C(i)-Sd(i)*k*C(i))/Sd(i+1)));
end

plot(C)
plot(C(1:Ntot),Od)

%% Flood Management

%If storage exceeds 50% of the dam's capacity, 
%gates will be opened to frac_gate_max. 

Sd_flood(1)=0.5*Vcapacity;
frac_gate_normal=0.5;
frac_gate_max=1;

%Nutrient parameters:
C_bg=0.6; %mg/l
C_flood(1)=C_bg;
C_in_bg=.9;
k=.001;
C_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; 

for i=1:Ntot
    Ind_fun=min(floor(Sd_flood(i)/(0.5*Vcapacity)),1); %below 50% = 0, above = 1
    
 frac_gate=Ind_fun*frac_gate_max+(1-Ind_fun)*frac_gate_normal; %either general or flood management
 [alpha,beta]=Parameters_Gate_Regulation(frac_gate);
 Od_flood(i)=alpha*((Sd_flood(i)+eps))^(beta); 
 Sd_flood(i+1)=max(Sd_flood(i)+dt*(Ih1(i)-Od_flood(i)-ET_RES),100*eps);
 
 C_in_flood=(1-C_ind(i))*C_in_bg; %high inflow generates washout
 C_flood(i+1)=(Sd_flood(i)*C_flood(i))/Sd_flood(i+1)+dt*(((Ih1(i)*C_in_flood-Od_flood(i)*C_flood(i)-Sd_flood(i)*k*C_flood(i))/Sd_flood(i+1)));

end

%figure(4) % Inflow and Outflow under flood management scenario
%plot (1:Ntot+1,Ih1)
%hold on
%plot (1:Ntot,Od)

figure(5) % Storage under flood management scenario 
plot (1:Ntot+1,Sd_flood)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))

plot(C_flood)
plot(C_flood(1:Ntot),Od_flood)

%% Drought Management

%If storage is less than 50% of the dam's capacity, no
%water will be released from the dam (frac_gate_min).
Sd_drought(1)=0.5*Vcapacity;
frac_gate_normal=0.7;
frac_gate_min=0;

%Nutrient parameters:
C_bg=0.6; %mg/l
C_drought(1)=C_bg;
C_in_bg=.9;
k=.001;
C_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; 

for i=1:Ntot
 
    Ind_fun=min(floor(Sd_drought(i)/(0.5*Vcapacity)),1); %below 50% = 0, above = 1
    
 frac_gate=Ind_fun*frac_gate_normal+(1-Ind_fun)*frac_gate_min; %either general or drought management
 [alpha,beta]=Parameters_Gate_Regulation(frac_gate);

Od_drought(i)=alpha*((Sd_drought(i)+eps))^(beta); 
Sd_drought(i+1)=max(Sd_drought(i)+dt*(Ih1(i)-Od_drought(i)-ET_RES),100*eps);

 C_in_drought=(1-C_ind(i))*C_in_bg; %high inflow generates washout
 C_drought(i+1)=(Sd_drought(i)*C_drought(i))/Sd_drought(i+1)+dt*(((Ih1(i)*C_in_drought-Od_drought(i)*C_drought(i)-Sd_drought(i)*k*C_drought(i))/Sd_drought(i+1)));

end

figure(6) % Storage under drought management scenario (why slightly below .5 capacity?)
plot (1:Ntot+1,Sd_drought)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))


%% Natural Variability: Outflow equals Inflow.

Sd_natvar(1:Ntot+1)=0;
Od_natvar=Ih1;

%Nutrient parameters:
C_bg=0.6; %mg/m^3
C_natvar=C_bg;


%% Minimum Flow ??

%If outflow is less than min. flow, gates are opened to frac_gate_max.

Sd_minflo(1)=0.5*Vcapacity;
frac_gate_normal=0.5;
frac_gate=0.5;
frac_gate_max=1;

%Nutrient parameters:
C_bg=0.6; %mg/l
C_minflo(1)=C_bg;
C_in_bg=.9;
k=.001;
C_ind=(1+(sign(Ih1-mean(Ih1)-5*std(Ih1))))/2; 

for i=1:Ntot
    
 [alpha,beta]=Parameters_Gate_Regulation(frac_gate);
 Od_minflo(i)=alpha*((Sd_minflo(i)+eps))^(beta); 
 Sd_minflo(i+1)=max(Sd_minflo(i)+dt*(Ih1(i)-Od_minflo(i)-ET_RES),100*eps);
 
 Ind_fun(i)=min(floor(Od_minflo(i)/(400000)),1); %below 400000 = 0, above = 1
 frac_gate=Ind_fun(i)*frac_gate_normal+(1-Ind_fun(i))*frac_gate_max; %either general or flood management

 C_in_minflo=(1-C_ind(i))*C_in_bg; %high inflow generates washout
 C_minflo(i+1)=(Sd_minflo(i)*C_minflo(i))/Sd_minflo(i+1)+dt*(((Ih1(i)*C_in_minflo-Od_minflo(i)*C_minflo(i)-Sd_minflo(i)*k*C_minflo(i))/Sd_minflo(i+1)));

end


%% Compare Outflows

figure(8)
plot (1:Ntot+1,Od_natvar)
hold on 
plot (1:Ntot,Od_drought)
hold on
plot (1:Ntot,Od_flood)
