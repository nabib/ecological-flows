%--------------------------------------------------------------------------
%Plot_FoodWebStats.m: Plot statistics of R,C,P
%
%Authors: Nicole Abib
%
%Date: 3/27/18
%% Regular Dam Scenario
% Mean
subplot (2,3,1) %mean of R by return period
plot (Ret_P,R_mean,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean R}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,2) %mean of C by return period
plot (Ret_P,C_mean,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean C}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,3) %mean of P by return period
plot (Ret_P,P_mean,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean P}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P


% CV
subplot (2,3,4) %CV of R by return period
plot (Ret_P,R_CV,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV(R)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,5) %CV of C by return period
plot (Ret_P,C_CV,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV(C)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,6) %CV of P by return period
plot (Ret_P,P_CV,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV(P)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

% --- plot statistics of R,C,P
%% Flood Management
% Mean
subplot (2,3,1) %mean of R by return period
plot (Ret_P,R_mean_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean R_flood}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,2) %mean of C by return period
plot (Ret_P,C_mean_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean C_flood}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,3) %mean of P by return period
plot (Ret_P,P_mean_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean P_flood}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P


% CV
subplot (2,3,4) %CV of R by return period
plot (Ret_P,R_CV_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_flood(R)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,5) %CV of C by return period
plot (Ret_P,C_CV_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_flood(C)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,6) %CV of P by return period
plot (Ret_P,P_CV_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_flood(P)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

% --- plot statistics of R,C,P
%% Drought Management
% Mean
subplot (2,3,1) %mean of R by return period
plot (Ret_P,R_mean_drought,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean R_drought}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,2) %mean of C by return period
plot (Ret_P,C_mean_drought,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean C_drought}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,3) %mean of P by return period
plot (Ret_P,P_mean_drought,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean P_drought}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P


% CV
subplot (2,3,4) %CV of R by return period
plot (Ret_P,R_CV_drought,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_drought(R)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,5) %CV of C by return period
plot (Ret_P,C_CV_drought,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_drought(C)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,6) %CV of P by return period
plot (Ret_P,P_CV_drought,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_drought(P)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

%% Natural Variability
% Mean
subplot (2,3,1) %mean of R by return period
plot (Ret_P,R_mean_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean R_natvar}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,2) %mean of C by return period
plot (Ret_P,C_mean_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean C_natvar}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,3) %mean of P by return period
plot (Ret_P,P_mean_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean P_natvar}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P


% CV
subplot (2,3,4) %CV of R by return period
plot (Ret_P,R_CV_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_natvar(R)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,5) %CV of C by return period
plot (Ret_P,C_CV_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_natvar(C)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,6) %CV of P by return period
plot (Ret_P,P_CV_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_natvar(P)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P


%% Minimum Flow
% Mean
subplot (2,3,1) %mean of R by return period
plot (Ret_P,R_mean_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean R_minflo}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,2) %mean of C by return period
plot (Ret_P,C_mean_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean C_minflo}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P

subplot (2,3,3) %mean of P by return period
plot (Ret_P,P_mean_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{Mean P_minflo}','fontweight','bold','fontsize',10)
axis ([0 30 0.15 0.9]) %set y-axis same for R, C, and P


% CV
subplot (2,3,4) %CV of R by return period
plot (Ret_P,R_CV_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_minflo(R)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,5) %CV of C by return period
plot (Ret_P,C_CV_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_minflo(C)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P

subplot (2,3,6) %CV of P by return period
plot (Ret_P,P_CV_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{CV_minflo(P)}','fontweight','bold','fontsize',10)
axis ([0 30 0.3 2.6]) %set y-axis same for R, C, and P
