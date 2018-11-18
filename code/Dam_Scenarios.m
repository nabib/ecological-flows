%Different Dam Management Scenarios

%Flood Management: If storage exceeds 50% of the dam's capacity, the
%"spillway" will be released in addition to general outflow. 

Qspillway=0;
 %inside loop
 
 Qspillway=max(0, Sd(i)-0.5*Vcapacity);
 Od(i)=alpha*((Sd(i)+eps))^(beta)+Qspillway;
 Sdtemp=Sd(i+1); %flood management
 Sdtemp(i+1)=min(Sd(i+1),0.5*Vcapacity);

%Drought Management: If storage is less than 50% of the dam's capacity, no
%water will be released from the dam.

%Seasonal Flow: Seasonal Flow describes high summer- and low winter flows. 

%Natural Variability: Outflow equals Inflow. 

%Managed Natural Variability: 

%Minimum Flow: The dam releases its mean inflow at all times. 


