%Different Dam Management Scenarios


Reservoir_Watershed_Parameters
ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
Sd(1)=0.5*Vcapacity;

%%
%Flood Management: If storage exceeds 50% of the dam's capacity, the
%"spillway" will be released in addition to general outflow. 
Sd_flood(1)=0.5*Vcapacity;
Qspillway=0;
for i=1:Ntot
 Qspillway=max(0, Sd_flood(i)-0.5*Vcapacity); %either 0 or volume by which half the capacity is exceeded.
 Od_flood(i)=alpha*((Sd_flood(i)+eps))^(beta)+Qspillway; %original outflow plus spillway 
 Sd_flood(i+1)=max(Sd_flood(i)+dt*(Ih1(i)-Od_flood(i)-ET_RES),100*eps);
end

figure(6)
plot (1:Ntot+1,Sd_flood)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))

%%
%Drought Management: If storage is less than 50% of the dam's capacity, no
%water will be released from the dam.
Sd_drought=0.5*Vcapacity;
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

figure(9)
plot (1:Ntot+1,Sd_drought)
hold on
plot (1:Ntot+1,ones(size(1:Ntot+1))*(0.5*Vcapacity))
%hold on
%plot (1:Ntot+1,ones(size(1:Ntot+1))*(Vcapacity))
hold on
plot (1:Ntot+1,Sd_flood)
%%
figure(10)
plot (1:Ntot,Od_drought)
%hold on
%plot (1:Ntot,Od_flood)
%Seasonal Flow: Seasonal Flow describes high summer- and low winter flows. 

%Natural Variability: Outflow equals Inflow.(5

%Managed Natural Variability: 

%Minimum Flow: The dam releases its mean inflow at all times. 


