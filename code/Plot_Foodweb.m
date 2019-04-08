%--------------------------------------------------------------------------
%Plot_Foodweb.m: Program to plot the foodweb time series and phase diagrams
%
%Authors: Nicole Abib
%
%Date: 3/27/18

% Common scale?
%% Regular Dam Scenario
% 
% figure(1)
% clf
% sgtitle('Run of River')
% subplot (3,1,1)
% plot (t(1:MMn),R(1:MMn))
% hold on
% plot (t(1),R(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C(1:MMn))
% hold on
% plot (t(1),C(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P(1:MMn))
% hold on
% plot (t(1),P(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig1
% 
% figure(2)
% clf
% sgtitle('Run of River')
% plot3 (R(1:MMn),C(1:MMn),P(1:MMn),'-')
% hold on
% plot3 (R(1),C(1),P(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2

%% Flood Management

figure()
clf
sgtitle('Flood Management','fontsize',15)
subplot (3,1,1)
plot (t(1:MMn),R_flood_return(1,1:MMn),'k-')
hold on
plot (t(1),R_flood_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',12)

subplot (3,1,2)
plot (t(1:MMn),C_flood_return(1,1:MMn),'k-')
hold on
set(gca,'FontSize',10)
plot (t(1),C_flood_return(1,1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)

subplot (3,1,3)
plot (t(1:MMn),P_flood_return(1,1:MMn),'k-')
hold on
plot (t(1),P_flood_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{Time}','fontweight','bold','fontsize',12)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/Flood_Foodweb_tseries.png')

figure()
clf
sgtitle('Flood Management','fontsize',15)
plot3 (R_flood_return(1,1:MMn),C_flood_return(1,1:MMn),P_flood_return(1,1:MMn),'k-')
hold on
plot3 (R_flood_return(1,1),C_flood_return(1,1),P_flood_return(1,1),'ro','markersize',10,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/Flood_Foodweb_3d.png')

%% Drought Management
% 
% figure(5)
% clf
% sgtitle('Drought Management')
% subplot (3,1,1)
% plot (t(1:MMn),R_drought(1:MMn))
% hold on
% plot (t(1),R_drought(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_drought(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C_drought(1:MMn))
% hold on
% plot (t(1),C_drought(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_drought(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P_drought(1:MMn))
% hold on
% plot (t(1),P_drought(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_drought(t)}','fontweight','bold','fontsize',10)
% 
% figure(6)
% clf
% sgtitle('Drought Management')
% plot3 (R_drought(1:MMn),C_drought(1:MMn),P_drought(1:MMn),'-')
% hold on
% plot3 (R_drought(1),C_drought(1),P_drought(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_drought(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_drought(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_drought(t)}','fontweight','bold','fontsize',10)
% 

%% Natural Variability

figure()
clf
sgtitle('Natural Variability','fontsize',15)
subplot (3,1,1)
plot (t(1:MMn),R_natvar_return(1,1:MMn),'k-')
hold on
plot (t(1),R_natvar_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',12)

subplot (3,1,2)
plot (t(1:MMn),C_natvar_return(1,1:MMn),'k-')
hold on
plot (t(1),C_natvar_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)

subplot (3,1,3)
plot (t(1:MMn),P_natvar_return(1,1:MMn),'k-')
hold on
plot (t(1),P_natvar_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{Time}','fontweight','bold','fontsize',12)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/Natvar_Foodweb_tseries.png')

figure()
clf
sgtitle('Natural Variability','fontsize',15)
plot3 (R_natvar_return(1,1:MMn),C_natvar_return(1,1:MMn),P_natvar_return(1,1:MMn),'k-')
hold on
plot3 (R_natvar_return(1,1),C_natvar_return(1,1),P_natvar_return(1,1),'ro','markersize',10,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/Natvar_Foodweb_3d.png')

%% Minimum Flow

figure()
clf
sgtitle('Minimum Flow','fontsize',15)
subplot (3,1,1)
plot (t(1:MMn),R_minflo_return(1,1:MMn),'k-')
hold on
plot (t(1),R_minflo_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',12)

subplot (3,1,2)
plot (t(1:MMn),C_minflo_return(1,1:MMn),'k-')
hold on
plot (t(1),C_minflo_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)

subplot (3,1,3)
plot (t(1:MMn),P_minflo_return(1,1:MMn),'k-')
hold on
plot (t(1),P_minflo_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{Time}','fontweight','bold','fontsize',12)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/Minflo_Foodweb_tseries.png')

figure()
clf
sgtitle('Minimum Flow','fontsize',15)
plot3 (R_minflo_return(1,1:MMn),C_minflo_return(1,1:MMn),P_minflo_return(1,1:MMn),'k-')
hold on
plot3 (R_minflo_return(1,1),C_minflo_return(1,1),P_minflo_return(1,1),'ro','markersize',10,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/Minflo_Foodweb_3d.png')
