%--------------------------------------------------------------------------
%Plot_Simulations.m: Graph the inflow and outflow hydrographs
%
%Authors: Nicole Abib
%
%Date: 3/27/18

% Set all figures at same scale
%% Regular Dam Scenario
figure(1)
clf
sgtitle('Run of River')
subplot (2,2,1)
plot (t(1:Ntot),P(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{P(mm)}','fontweight','bold','fontsize',10)

subplot (2,2,2)
plot (t(1:Ntot),Ih1(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{I(m3/d)}','fontweight','bold','fontsize',10)

subplot (2,2,3)
plot (t(1:Ntot),Sd(1:Ntot)/Aplanar/Hmax,'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{h/H{max}}','fontweight','bold','fontsize',10)

subplot (2,2,4)
plot (t(1:Ntot),Od(1:Ntot),'k-')
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{O (m3/d)}','fontweight','bold','fontsize',10)
%% Flood Management

figure(2)
clf
sgtitle('Flood Management')
subplot (2,2,1)
plot (t(1:Ntot),P(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{P(mm)}','fontweight','bold','fontsize',10)

subplot (2,2,2)
plot (t(1:Ntot),Ih1(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{I(m3/d)}','fontweight','bold','fontsize',10)

subplot (2,2,3)
plot (t(1:Ntot),Sd_flood(1:Ntot)/Aplanar/Hmax,'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{h/H{max}}','fontweight','bold','fontsize',10)

subplot (2,2,4)
plot (t(1:Ntot),Od_flood(1:Ntot),'k-')
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{O (m3/d)}','fontweight','bold','fontsize',10)

%% Drought Management

figure(3)
clf
sgtitle('Drought Management')
subplot (2,2,1)
plot (t(1:Ntot),P(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{P(mm)}','fontweight','bold','fontsize',10)

subplot (2,2,2)
plot (t(1:Ntot),Ih1(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{I(m3/d)}','fontweight','bold','fontsize',10)

subplot (2,2,3)
plot (t(1:Ntot),Sd_drought(1:Ntot)/Aplanar/Hmax,'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{h/H{max}}','fontweight','bold','fontsize',10)

subplot (2,2,4)
plot (t(1:Ntot),Od_drought(1:Ntot),'k-')
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{O (m3/d)}','fontweight','bold','fontsize',10)

%% Natural Variability

figure(4)
clf
sgtitle('Natural Variability')
subplot (2,2,1)
plot (t(1:Ntot),P(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{P(mm)}','fontweight','bold','fontsize',10)

subplot (2,2,2)
plot (t(1:Ntot),Ih1(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{I(m3/d)}','fontweight','bold','fontsize',10)

subplot (2,2,3)
plot (t(1:Ntot),Sd_natvar(1:Ntot)/Aplanar/Hmax,'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{h/H{max}}','fontweight','bold','fontsize',10)

subplot (2,2,4)
plot (t(1:Ntot),Od_natvar(1:Ntot),'k-')
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{O (m3/d)}','fontweight','bold','fontsize',10)

%% Minimum Flow

figure(5)
clf
sgtitle('Minimum Flow')
subplot (2,2,1)
plot (t(1:Ntot),P(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{P(mm)}','fontweight','bold','fontsize',10)

subplot (2,2,2)
plot (t(1:Ntot),Ih1(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{I(m3/d)}','fontweight','bold','fontsize',10)

subplot (2,2,3)
plot (t(1:Ntot),Sd_minflo(1:Ntot)/Aplanar/Hmax,'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{h/H{max}}','fontweight','bold','fontsize',10)

subplot (2,2,4)
plot (t(1:Ntot),Od_minflo(1:Ntot),'k-')
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{O (m3/d)}','fontweight','bold','fontsize',10)
