%--------------------------------------------------------------------------
%Plot_FoodWebStats.m: Plot statistics of R,C,P
%
%Authors: Nicole Abib
%
%Date: 3/27/18

%% Regular Dam Scenario
figure()
sgtitle('Run of River','fontsize',15)
% Mean
subplot (1,3,1) %mean of R by return period
plot (Ret_P,R_mean,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean R(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,2) %mean of C by return period
plot (Ret_P,C_mean,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean C(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,3) %mean of P by return period
plot (Ret_P,P_mean,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean P(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])
saveas(gcf,'../figures/runOfRiver_FoodWebReturn.png')

%% Flood Management
figure()
sgtitle('Flood Management','fontsize',15)
% Mean
subplot (1,3,1) %mean of R by return period
plot (Ret_P,R_mean_flood,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean R(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1]) %set y-axis same for R, C, and P

subplot (1,3,2) %mean of C by return period
plot (Ret_P,C_mean_flood,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean C(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,3) %mean of P by return period
plot (Ret_P,P_mean_flood,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean P(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])
saveas(gcf,'../figures/flood_FoodWebReturn.png')

%% Drought Management
figure()
sgtitle('Drought Management','fontsize',15)
% Mean
subplot (1,3,1) %mean of R by return period
plot (Ret_P,R_mean_drought,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean R(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,2) %mean of C by return period
plot (Ret_P,C_mean_drought,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean C(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,3) %mean of P by return period
plot (Ret_P,P_mean_drought,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean P(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])
saveas(gcf,'../figures/drought_FoodWebReturn.png')

%% Natural Variability
figure()
sgtitle('Natural Variability','fontsize',15)
% Mean
subplot (1,3,1) %mean of R by return period
plot (Ret_P,R_mean_natvar,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean R(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,2) %mean of C by return period
plot (Ret_P,C_mean_natvar,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean C(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,3) %mean of P by return period
plot (Ret_P,P_mean_natvar,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean P(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])
saveas(gcf,'../figures/natvar_FoodWebReturn.png')

%% Minimum Flow
figure()
sgtitle('Minimum Flow','fontsize',15)
% Mean
subplot (1,3,1) %mean of R by return period
plot (Ret_P,R_mean_minflo,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean R(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,2) %mean of C by return period
plot (Ret_P,C_mean_minflo,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean C(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (1,3,3) %mean of P by return period
plot (Ret_P,P_mean_minflo,'ko','markersize',5,'linewidth',3)
set(gca,'FontSize',10)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean P(t)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])
saveas(gcf,'../figures/minflo_FoodWebReturn.png')
