%Different Dam Management Scenarios

%Given Parameters (ET, Sd, :
Reservoir_Watershed_Parameters
ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
Sd(1)=0.5*Vcapacity;

%%
%Flood Management: If storage exceeds 50% of the dam's capacity, the
%"spillway" will be released in addition to general outflow. 

Qspillway=0;
for i=1:Ntot
 Qspillway=max(0, Sd(i)-0.5*Vcapacity); %either 0 or volume by which half the capacity is exceeded.
 Od(i)=alpha*((Sd(i)+eps))^(beta)+Qspillway; %original outflow plus spillway 
 Sd(i+1)=max(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES),100*eps);
end

figure(6)
plot (1:Ntot+1,Sd)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))
figure(8)
plot (1:Ntot,Ih1)
%%
%Drought Management: If storage is less than 50% of the dam's capacity, no
%water will be released from the dam.

Sd_drought=0;
for i=1:Ntot
 Sd_drought=max(0,0.5*Vcapacity-Sd)
 Od(i)=alpha*((Sd(i)+eps))^(beta)-Sd_drought;  
 Sd(i+1)=max(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES),100*eps);
end

figure(8)
plot (1:Ntot+1,Sd)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))
%%
%Seasonal Flow: Seasonal Flow describes high summer- and low winter flows. 

%Natural Variability: Outflow equals Inflow.(5

%Managed Natural Variability: 

%Minimum Flow: The dam releases its mean inflow at all times. 


