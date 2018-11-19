%Different Dam Management Scenarios

%Given Parameters (ET, Sd, :
Reservoir_Watershed_Parameters
ET_RES=PET*Aplanar*0.001; % ET loss from reservoir (not watershed)
Sd(1)=0.01*Vcapacity;

%Flood Management: If storage exceeds 50% of the dam's capacity, the
%"spillway" will be released in addition to general outflow. 

Qspillway=0;
%inside loop 
for i=1:Ntot
 Qspillway=max(0, Sd(i)-0.5*Vcapacity); %either 0 or volume by which half the capacity is exceeded.
 Od(i)=alpha*((Sd(i)+eps))^(beta)+Qspillway; %original outflow plus spillway 
 Sd(i+1)=max(Sd(i)+dt*(Ih1(i)-Od(i)-ET_RES),100*eps);
 Od(i)=alpha*((Sd(i)+eps))^(beta)+Qspillway;
 Sdtemp=Sd(i+1); %flood management
 Sdtemp(i+1)=min(Sd(i+1),0.5*Vcapacity);
end


%Drought Management: If storage is less than 50% of the dam's capacity, no
%water will be released from the dam.

%Seasonal Flow: Seasonal Flow describes high summer- and low winter flows. 

%Natural Variability: Outflow equals Inflow. 

%Managed Natural Variability: 

%Minimum Flow: The dam releases its mean inflow at all times. 


