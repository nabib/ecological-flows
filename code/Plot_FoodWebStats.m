%--------------------------------------------------------------------------
%Plot_FoodWebStats.m: Plot statistics of R,C,P
%
%Authors: Nicole Abib
%
%Date: 3/27/18
%% Regular Dam Scenario
% figure()
% sgtitle('Run of River')
% % Mean
% subplot (2,3,1) %mean of R by return period
% plot (Ret_P,R_mean,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{Mean R}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P
% 
% subplot (2,3,2) %mean of C by return period
% plot (Ret_P,C_mean,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{Mean C}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P
% 
% subplot (2,3,3) %mean of P by return period
% plot (Ret_P,P_mean,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{Mean P}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P
% 
% 
% % CV
% subplot (2,3,4) %CV of R by return period
% plot (Ret_P,R_CV,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV(R)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,5) %CV of C by return period
% plot (Ret_P,C_CV,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV(C)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,6) %CV of P by return period
% plot (Ret_P,P_CV,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV(P)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

% --- plot statistics of R,C,P
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
saveas(gcf,'../figures/Flood_FoodWebReturn.png')

% % CV
% subplot (2,3,4) %CV of R by return period
% plot (Ret_P,R_CV_flood,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_flood(R)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,5) %CV of C by return period
% plot (Ret_P,C_CV_flood,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_flood(C)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,6) %CV of P by return period
% plot (Ret_P,P_CV_flood,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_flood(P)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

% --- plot statistics of R,C,P
%% Drought Management
% figure()
% sgtitle('Drought Management')
% % Mean
% subplot (2,3,1) %mean of R by return period
% plot (Ret_P,R_mean_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{Mean R_drought}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P
% 
% subplot (2,3,2) %mean of C by return period
% plot (Ret_P,C_mean_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{Mean C_drought}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P
% 
% subplot (2,3,3) %mean of P by return period
% plot (Ret_P,P_mean_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{Mean P_drought}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P
% 
% 
% % CV
% subplot (2,3,4) %CV of R by return period
% plot (Ret_P,R_CV_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_drought(R)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,5) %CV of C by return period
% plot (Ret_P,C_CV_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_drought(C)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,6) %CV of P by return period
% plot (Ret_P,P_CV_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_drought(P)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

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

saveas(gcf,'../figures/Natvar_FoodWebReturn.png')

% % CV
% subplot (2,3,4) %CV of R by return period
% plot (Ret_P,R_CV_natvar,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_natvar(R)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,5) %CV of C by return period
% plot (Ret_P,C_CV_natvar,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_natvar(C)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,6) %CV of P by return period
% plot (Ret_P,P_CV_natvar,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_natvar(P)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P


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
saveas(gcf,'../figures/Minflo_FoodWebReturn.png')


% % CV
% subplot (2,3,4) %CV of R by return period
% plot (Ret_P,R_CV_minflo,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_minflo(R)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,5) %CV of C by return period
% plot (Ret_P,C_CV_minflo,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_minflo(C)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
% 
% subplot (2,3,6) %CV of P by return period
% plot (Ret_P,P_CV_minflo,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
% ylabel ('\it{CV_minflo(P)}','fontweight','bold','fontsize',10)
% %axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
