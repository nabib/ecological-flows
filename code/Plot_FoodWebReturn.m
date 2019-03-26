%% Regular Dam Scenario
figure(1)
clf
sgtitle('Run of River')
subplot(1,3,1)
plot3 (R_return(1,1:MMn),C_return(1,1:MMn),P_return(1,1:MMn),'-')
hold on
plot3 (R_return(1,1),C_return(1,1),P_return(1,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

subplot(1,3,2)
plot3 (R_return(floor((1/2)*kk),1:MMn),C_return(floor((1/2)*kk),1:MMn),P_return(floor((1/2)*kk),1:MMn),'-')
hold on
plot3 (R_return(floor((1/2)*kk),1),C_return(floor((1/2)*kk),1),P_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)

xlim([0 1])
ylim([0 1.5])
zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

subplot(1,3,3)
plot3 (R_return(kk,1:MMn),C_return(kk,1:MMn),P_return(kk,1:MMn),'-')
hold on
plot3 (R_return(kk,1),C_return(kk,1),P_return(kk,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2
% 
% figure(2)
% clf
% sgtitle('Run of River')
% subplot (3,1,1)
% plot (t(1:MMn),R_return(kk,1:MMn))
% hold on
% plot (t(1),R(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C_return(kk,1:MMn))
% hold on
% plot (t(1),C(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P_return(kk,1:MMn))
% hold on
% plot (t(1),P(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

%% Minimum Flow
figure(2)
clf
sgtitle('Run of River')
subplot(1,3,1)
plot3 (R_minflo_return(1,1:MMn),C_minflo_return(1,1:MMn),P_minflo_return(1,1:MMn),'-')
hold on
plot3 (R_minflo_return(1,1),C_minflo_return(1,1),P_minflo_return(1,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

subplot(1,3,2)
plot3 (R_minflo_return(floor((1/2)*kk),1:MMn),C_minflo_return(floor((1/2)*kk),1:MMn),P_minflo_return(floor((1/2)*kk),1:MMn),'-')
hold on
plot3 (R_minflo_return(floor((1/2)*kk),1),C_minflo_return(floor((1/2)*kk),1),P_minflo_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

subplot(1,3,3)
plot3 (R_minflo_return(kk,1:MMn),C_minflo_return(kk,1:MMn),P_minflo_return(kk,1:MMn),'-')
hold on
plot3 (R_minflo_return(kk,1),C_minflo_return(kk,1),P_minflo_return(kk,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

%% Natural Variability
figure(3)
clf
sgtitle('Run of River')
subplot(1,3,1)
plot3 (R_natvar_return(1,1:MMn),C_natvar_return(1,1:MMn),P_natvar_return(1,1:MMn),'-')
hold on
plot3 (R_natvar_return(1,1),C_natvar_return(1,1),P_natvar_return(1,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

subplot(1,3,2)
plot3 (R_natvar_return(floor((1/2)*kk),1:MMn),C_natvar_return(floor((1/2)*kk),1:MMn),P_natvar_return(floor((1/2)*kk),1:MMn),'-')
hold on
plot3 (R_natvar_return(floor((1/2)*kk),1),C_natvar_return(floor((1/2)*kk),1),P_natvar_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

subplot(1,3,3)
plot3 (R_natvar_return(kk,1:MMn),C_natvar_return(kk,1:MMn),P_natvar_return(kk,1:MMn),'-')
hold on
plot3 (R_natvar_return(kk,1),C_natvar_return(kk,1),P_natvar_return(kk,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

%% Flood Scenario
figure(4)
clf
sgtitle('Flood Management')
subplot(1,3,1)
plot3 (R_flood_return(1,1:MMn),C_flood_return(1,1:MMn),P_flood_return(1,1:MMn),'-')
hold on
plot3 (R_flood_return(1,1),C_flood_return(1,1),P_flood_return(1,1),'ro','markersize',10,'linewidth',4)
% 
% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

subplot(1,3,2)
plot3 (R_flood_return(floor((1/2)*kk),1:MMn),C_flood_return(floor((1/2)*kk),1:MMn),P_flood_return(floor((1/2)*kk),1:MMn),'-')
hold on
plot3 (R_flood_return(floor((1/2)*kk),1),C_flood_return(floor((1/2)*kk),1),P_flood_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

subplot(1,3,3)
plot3 (R_flood_return(kk,1:MMn),C_flood_return(kk,1:MMn),P_flood_return(kk,1:MMn),'-')
hold on
plot3 (R_flood_return(kk,1),C_flood_return(kk,1),P_flood_return(kk,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

%% Drought Scenario
figure(5)
clf
sgtitle('Drought Management')
subplot(1,3,1)
plot3 (R_drought_return(1,1:MMn),C_drought_return(1,1:MMn),P_drought_return(1,1:MMn),'-')
hold on
plot3 (R_drought_return(1,1),C_drought_return(1,1),P_drought_return(1,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

subplot(1,3,2)
plot3 (R_drought_return(floor((1/2)*kk),1:MMn),C_drought_return(floor((1/2)*kk),1:MMn),P_drought_return(floor((1/2)*kk),1:MMn),'-')
hold on
plot3 (R_drought_return(floor((1/2)*kk),1),C_drought_return(floor((1/2)*kk),1),P_drought_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
% 
% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2

subplot(1,3,3)
plot3 (R_drought_return(kk,1:MMn),C_drought_return(kk,1:MMn),P_drought_return(kk,1:MMn),'-')
hold on
plot3 (R_drought_return(kk,1),C_drought_return(kk,1),P_drought_return(kk,1),'ro','markersize',10,'linewidth',4)

% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)