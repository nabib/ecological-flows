%Different Dam Management Scenarios


Reservoir_Watershed_Parameters


ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
Sd(1)=0.5*Vcapacity;

figure(15)
plot(1:Ntot+1, Ih1, 'r')

hold on
plot(1:Ntot, Od)

%%
%%
%Regular Dam Scenario
%C=nutrient loss (unit/m^3)
%C_in=nutrient inflow constant (unit/m^3) 
%k=nutrient decay rate (1/t)
C_in=0.9; %mg/l
k=0.001;
C(1)=0.9;

Sd(1)=0.5*Vcapacity;
frac_gate=0.7;
[alpha,beta]=Parameters_Gate_Regulation(frac_gate);

for i=1:Ntot
 Od(i)=alpha*((Sd(i)+eps))^(beta); 
 Sd(i+1)=(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES));
 C(i+1)=(Sd(i)*C(i)+dt*(Ih1(i)*C_in-Od(i)*C(i)-k*C(i)))/Sd(i+1);
end

%%
%Flood Management: If storage exceeds 50% of the dam's capacity, the
%"spillway" will be released in addition to general outflow. 


Sd_flood(1)=0.5*Vcapacity;
frac_gate_normal=0.5;
frac_gate_max=1;
for i=1:Ntot
    Ind_fun=min(floor(Sd_flood(i)/(0.5*Vcapacity)),1);
    
 frac_gate=Ind_fun*frac_gate_max+(1-Ind_fun)*frac_gate_normal;
 [alpha,beta]=Parameters_Gate_Regulation(frac_gate);
 Od_flood(i)=alpha*((Sd_flood(i)+eps))^(beta); 
 Sd_flood(i+1)=max(Sd_flood(i)+dt*(Ih1(i)-Od_flood(i)-ET_RES),100*eps);
 
end

figure(4) % Inflow and Outflow under flood management scenario
plot (1:Ntot+1,Ih1)
hold on
plot (1:Ntot,Od)

figure(5) % Storage under flood management scenario 
plot (1:Ntot+1,Sd_flood)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))

%%
%Drought Management: If storage is less than 50% of the dam's capacity, no
%water will be released from the dam.
Sd_drought(1)=0.5*Vcapacity;
Sd_extra=0; %inflow that is not available for release but is stored instead

for i=1:Ntot
    if Sd_drought(i)<0.5*Vcapacity
        Sd_extra=0.5*Vcapacity-Sd_drought(i);
    else
        Sd_extra=0;
    end

Od_drought(i)=(alpha*((Sd_drought(i)+eps))^(beta))-Sd_extra; 
Sd_drought(i+1)=max(Sd_drought(i)+dt*(Ih1(i)-Od_drought(i)-ET_RES+Sd_extra),100*eps);
end

figure(6) % Storage under drought management scenario (why slightly below .5 capacity?)
plot (1:Ntot+1,Sd_drought)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))

%% Compare storage Flood versus Drought

figure(7)
plot (1:Ntot+1,Sd_drought)
hold on
plot (1:Ntot+1,Sd_flood)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(.5*Vcapacity))

%% Natural Variability: Outflow equals Inflow.

Sd_natvar(1:Ntot+1)=0;
Od_natvar=Ih1;

%% Compare Outflows

figure(8)
plot (1:Ntot+1,Od_natvar)
hold on 
plot (1:Ntot,Od_drought)
hold on
plot (1:Ntot,Od_flood)


%% ???
%Minimum Flow: The dam releases its mean inflow at all times. 
Sd_min(1)=0.5*Vcapacity;
for i=1:10000
 Od_min(i)=mean(Ih1);  
 Sd_min(i+1)=max(Sd_min(i)+dt*(Ih1(i)-Od_min(i)-ET_RES),100*eps);
end

figure(10)

plot (1:10000+1,Sd_min)


%%
%Seasonal Flow: Seasonal Flow describes high summer- and low winter flows. 

%Managed Natural Variability: 

figure(8)
plot (t,Ih1)
