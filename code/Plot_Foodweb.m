%--------------------------------------------------------------------------
%Plot_Foodweb.m: Program to plot the foodweb time series and phase diagrams
%
%Authors: Nicole Abib
%
%Date: 3/27/18

%% Regular Dam Scenario

figure()
clf
sgtitle('Run of River','fontsize',15)
subplot (3,1,1)
plot (t(1:MMn),R_return(1,1:MMn),'k-')
hold on
plot (t(1),R_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',12)

subplot (3,1,2)
plot (t(1:MMn),C_return(1,1:MMn),'k-')
hold on
set(gca,'FontSize',10)
plot (t(1),C_return(1,1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)

subplot (3,1,3)
plot (t(1:MMn),P_return(1,1:MMn),'k-')
hold on
plot (t(1),P_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{Time}','fontweight','bold','fontsize',12)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/runOfRiver_Foodweb_tseries.png')

figure()
clf
sgtitle('Run of River','fontsize',15)
plot3 (R_return(1,1:MMn),C_return(1,1:MMn),P_return(1,1:MMn),'k-')
hold on
plot3 (R_return(1,1),C_return(1,1),P_return(1,1),'ro','markersize',10,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/runOfRiver_Foodweb_3d.png')

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
saveas(gcf,'../figures/flood_Foodweb_tseries.png')

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
saveas(gcf,'../figures/flood_Foodweb_3d.png')

%% Drought Management

figure()
clf
sgtitle('Drought Management','fontsize',15)
subplot (3,1,1)
plot (t(1:MMn),R_drought_return(1,1:MMn),'k-')
hold on
plot (t(1),R_drought_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',12)

subplot (3,1,2)
plot (t(1:MMn),C_drought_return(1,1:MMn),'k-')
hold on
set(gca,'FontSize',10)
plot (t(1),C_drought_return(1,1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)

subplot (3,1,3)
plot (t(1:MMn),P_drought_return(1,1:MMn),'k-')
hold on
plot (t(1),P_drought_return(1,1),'ro','markersize',5,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{Time}','fontweight','bold','fontsize',12)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/drought_Foodweb_tseries.png')

figure()
clf
sgtitle('Drought Management','fontsize',15)
plot3 (R_drought_return(1,1:MMn),C_drought_return(1,1:MMn),P_drought_return(1,1:MMn),'k-')
hold on
plot3 (R_drought_return(1,1),C_drought_return(1,1),P_drought_return(1,1),'ro','markersize',10,'linewidth',4)
set(gca,'FontSize',10)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/drought_Foodweb_3d.png')

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
saveas(gcf,'../figures/natvar_Foodweb_tseries.png')

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
saveas(gcf,'../figures/natvar_Foodweb_3d.png')

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
saveas(gcf,'../figures/minflo_Foodweb_tseries.png')

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
saveas(gcf,'../figures/minflo_Foodweb_3d.png')
