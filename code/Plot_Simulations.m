%--------------------------------------------------------------------------
%Plot_Simulations.m: Graph the inflow and outflow hydrographs
%
%Authors: Nicole Abib
%
%Date: 3/27/18

%% Regular Dam Scenario
figure()
clf
sgtitle('Run of River','fontsize',15)
subplot (2,2,1)
plot (t(1:Ntot),Precip_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Precipitation (mm)}','fontweight','bold','fontsize',12)

subplot (2,2,2)
plot (t(1:Ntot),Ih1_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Inflow (m3/d)}','fontweight','bold','fontsize',12)

subplot (2,2,3)
plot (t(1:Ntot),Sd_return(1,1:Ntot)/Aplanar/Hmax,'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Normalized Storage}','fontweight','bold','fontsize',12)

subplot (2,2,4)
plot (t(1:Ntot),Od_return(1,1:Ntot),'k-')
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Outflow (m3/d)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/runOfRiver_simulation.png')

%% Flood Management

figure()
clf
sgtitle('Flood Management','fontsize',15)
subplot (2,2,1)
plot (t(1:Ntot),Precip_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Precipitation (mm)}','fontweight','bold','fontsize',12)

subplot (2,2,2)
plot (t(1:Ntot),Ih1_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Inflow (m3/d)}','fontweight','bold','fontsize',12)

subplot (2,2,3)
plot (t(1:Ntot),Sd_flood_return(1,1:Ntot)/Aplanar/Hmax,'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Normalized Storage}','fontweight','bold','fontsize',12)

subplot (2,2,4)
plot (t(1:Ntot),Od_flood_return(1,1:Ntot),'k-')
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Outflow (m3/d)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/flood_simulation.png')

%% Drought Management
figure()
clf
sgtitle('Drought Management','fontsize',15)
subplot (2,2,1)
plot (t(1:Ntot),Precip_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Precipitation (mm)}','fontweight','bold','fontsize',12)

subplot (2,2,2)
plot (t(1:Ntot),Ih1_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Inflow (m3/d)}','fontweight','bold','fontsize',12)

subplot (2,2,3)
plot (t(1:Ntot),Sd_drought_return(1,1:Ntot)/Aplanar/Hmax,'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Normalized Storage}','fontweight','bold','fontsize',12)

subplot (2,2,4)
plot (t(1:Ntot),Od_drought_return(1,1:Ntot),'k-')
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Outflow (m3/d)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/drought_simulation.png')

%% Natural Variability
figure()
clf
sgtitle('Natural Variability','fontsize',15)
subplot (2,2,1)
plot (t(1:Ntot),Precip_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Precipitation (mm)}','fontweight','bold','fontsize',12)


subplot (2,2,2)
plot (t(1:Ntot),Ih1_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Inflow (m3/d)}','fontweight','bold','fontsize',12)

subplot (2,2,3)
plot (t(1:Ntot),Sd_natvar_return(1,1:Ntot)/Aplanar/Hmax,'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Normalized Storage}','fontweight','bold','fontsize',12)

subplot (2,2,4)
plot (t(1:Ntot),Od_natvar_return(1,1:Ntot),'k-')
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Outflow (m3/d)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/natVar_simulation.png')

%% Minimum Flow
figure()
clf
sgtitle('Minimum Flow','fontsize',15)
subplot (2,2,1)
plot (t(1:Ntot),Precip_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Precipitation (mm)}','fontweight','bold','fontsize',12)


subplot (2,2,2)
plot (t(1:Ntot),Ih1_return(1,1:Ntot),'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Inflow (m3/d)}','fontweight','bold','fontsize',12)

subplot (2,2,3)
plot (t(1:Ntot),Sd_minflo_return(1,1:Ntot)/Aplanar/Hmax,'k-')
hold on
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Normalized Storage}','fontweight','bold','fontsize',12)

subplot (2,2,4)
plot (t(1:Ntot),Od_minflo_return(1,1:Ntot),'k-')
set(gca,'FontSize',10)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Outflow (m3/d)}','fontweight','bold','fontsize',12)
saveas(gcf,'../figures/minflo_simulation.png')