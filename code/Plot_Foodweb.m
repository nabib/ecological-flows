%---- Graph the foodweb time series and phase diagrams
% Fix labels
% Common scale?
%% Regular Dam Scenario

figure(1)
clf
sgtitle('Run of River')
subplot (3,1,1)
plot (t(1:MMn),R(1:MMn))
hold on
plot (t(1),R(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t(1:MMn),C(1:MMn))
hold on
plot (t(1),C(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t(1:MMn),P(1:MMn))
hold on
plot (t(1),P(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(2)
clf
sgtitle('Run of River')
plot3 (R(1:MMn),C(1:MMn),P(1:MMn),'-')
hold on
plot3 (R(1),C(1),P(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

%% Flood Management

figure(3)
clf
sgtitle('Flood Management')
subplot (3,1,1)
plot (t(1:MMn),R_flood(1:MMn))
hold on
plot (t(1),R_flood(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R_flood(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t(1:MMn),C_flood(1:MMn))
hold on
plot (t(1),C_flood(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C_flood(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t(1:MMn),P_flood(1:MMn))
hold on
plot (t(1),P_flood(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P_flood(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(4)
sgtitle('Flood Management')
clf
plot3 (R_flood(1:MMn),C_flood(1:MMn),P_flood(1:MMn),'-')
hold on
plot3 (R_flood(1),C_flood(1),P_flood(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R_flood(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_flood(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_flood(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

%% Drought Management

figure(5)
clf
sgtitle('Drought Management')
subplot (3,1,1)
plot (t(1:MMn),R_drought(1:MMn))
hold on
plot (t(1),R_drought(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R_drought(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t(1:MMn),C_drought(1:MMn))
hold on
plot (t(1),C_drought(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C_drought(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t(1:MMn),P_drought(1:MMn))
hold on
plot (t(1),P_drought(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P_drought(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(6)
clf
sgtitle('Drought Management')
plot3 (R_drought(1:MMn),C_drought(1:MMn),P_drought(1:MMn),'-')
hold on
plot3 (R_drought(1),C_drought(1),P_drought(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R_drought(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_drought(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_drought(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2


%% Natural Variability

figure(7)
clf
sgtitle('Natural Variability')
subplot (3,1,1)
plot (t(1:MMn),R_natvar(1:MMn))
hold on
plot (t(1),R_natvar(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R_natvar(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t(1:MMn),C_natvar(1:MMn))
hold on
plot (t(1),C_natvar(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C_natvar(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t(1:MMn),P_natvar(1:MMn))
hold on
plot (t(1),P_natvar(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P_natvar(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(8)
clf
sgtitle('Natural Variability')
plot3 (R_natvar(1:MMn),C_natvar(1:MMn),P_natvar(1:MMn),'-')
hold on
plot3 (R_natvar(1),C_natvar(1),P_natvar(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R_natvar(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_natvar(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_natvar(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

%% Minimum Flow

figure(9)
clf
sgtitle('Minimum Flow')
subplot (3,1,1)
plot (t(1:MMn),R_minflo(1:MMn))
hold on
plot (t(1),R_minflo(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R_minflo(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t(1:MMn),C_minflo(1:MMn))
hold on
plot (t(1),C_minflo(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C_minflo(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t(1:MMn),P_minflo(1:MMn))
hold on
plot (t(1),P_minflo(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P_minflo(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(10)
clf
sgtitle('Minimum Flow')
plot3 (R_minflo(1:MMn),C_minflo(1:MMn),P_minflo(1:MMn),'-')
hold on
plot3 (R_minflo(1),C_minflo(1),P_minflo(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R_minflo(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_minflo(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_minflo(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2
