%--------------------------------------------------------------------------
%Plot_OF_ReturnPeriod.m: plot statistics of outflow vs return period of daily rainfall
%
%Authors: Nicole Abib
%
%Date: 3/27/18
%% Regular Dam Scenario
% figure()
% clf
% sgtitle('Run of River','fontsize',20)
% subplot (2,2,1)
% plot (Ret_P,Rout_eff,'ko','markersize',5,'linewidth',3)
% %plot (Ret_P,In_F,'ko','markersize',5,'linewidth',3)
% ylabel ('\it{<O>/<I>}','fontweight','bold','fontsize',12)
% 
% subplot (2,2,2)
% plot (Ret_P,Rout_dissip,'ko','markersize',5,'linewidth',3)
% ylabel ('\it{Std(O)/Std(I)}','fontweight','bold','fontsize',12)
% 
% subplot (2,2,3)
% plot (Ret_P,OutF_mean,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
% ylabel ('\it{Mean(O)}','fontweight','bold','fontsize',12)
% 
% subplot (2,2,4)
% plot (Ret_P,OutF_CV,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
% ylabel ('\it{CV(O)}','fontweight','bold','fontsize',12)

%% Flood Management
figure()
clf
sgtitle('Flood Management','fontsize',20)
subplot (2,2,1)
plot (Ret_P,Rout_eff_flood,'ko','markersize',5,'linewidth',3)
%plot (Ret_P,In_F,'ko','markersize',5,'linewidth',3)
ylabel ('\it{<O>/<I>}','fontweight','bold','fontsize',12)
axis ([0 30 1 1.75])

subplot (2,2,2)
plot (Ret_P,Rout_dissip_flood,'ko','markersize',5,'linewidth',3)
ylabel ('\it{Std(O)/Std(I)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (2,2,3)
plot (Ret_P,OutF_mean_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean(O)}','fontweight','bold','fontsize',12)
axis ([0 30 1*10^6 1.75*10^6])

subplot (2,2,4)
plot (Ret_P,OutF_CV_flood,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{CV(O)}','fontweight','bold','fontsize',12)
axis ([0 30 0 2])
saveas(gcf,'../figures/flood_hydro_return.png')
%% Drought Management
% figure()
% clf
% sgtitle('Drought Management','fontsize',20)
% subplot (2,2,1)
% plot (Ret_P,Rout_eff_drought,'ko','markersize',5,'linewidth',3)
% plot (Ret_P,In_F,'ko','markersize',5,'linewidth',3)
% ylabel ('\it{<O>/<I>}','fontweight','bold','fontsize',12)
% 
% subplot (2,2,2)
% plot (Ret_P,Rout_dissip_drought,'ko','markersize',5,'linewidth',3)
% ylabel ('\it{Std(O)/Std(I)}','fontweight','bold','fontsize',12)
% 
% subplot (2,2,3)
% plot (Ret_P,OutF_mean_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
% ylabel ('\it{Mean(O)}','fontweight','bold','fontsize',12)
% 
% subplot (2,2,4)
% plot (Ret_P,OutF_CV_drought,'ko','markersize',5,'linewidth',3)
% xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
% ylabel ('\it{CV(O)}','fontweight','bold','fontsize',12)

%% Natural Variability
figure()
clf
sgtitle('Natural Variability','fontsize',20)
subplot (2,2,1)
plot (Ret_P,Rout_eff_natvar,'ko','markersize',5,'linewidth',3)
%plot (Ret_P,In_F,'ko','markersize',5,'linewidth',3)
ylabel ('\it{<O>/<I>}','fontweight','bold','fontsize',12)
axis ([0 30 1 1.75])

subplot (2,2,2)
plot (Ret_P,Rout_dissip_natvar,'ko','markersize',5,'linewidth',3)
ylabel ('\it{Std(O)/Std(I)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (2,2,3)
plot (Ret_P,OutF_mean_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean(O)}','fontweight','bold','fontsize',12)
axis ([0 30 1*10^6 1.75*10^6])

subplot (2,2,4)
plot (Ret_P,OutF_CV_natvar,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{CV(O)}','fontweight','bold','fontsize',12)
axis ([0 30 0 2])

saveas(gcf,'../figures/natvar_hydro_return.png')
%% Minimum Flow
figure()
clf
sgtitle('Minimum Flow','fontsize',20)
subplot (2,2,1)
plot (Ret_P,Rout_eff_minflo,'ko','markersize',5,'linewidth',3)
%plot (Ret_P,In_F,'ko','markersize',5,'linewidth',3)
ylabel ('\it{<O>/<I>}','fontweight','bold','fontsize',12)
axis ([0 30 1 1.75])

subplot (2,2,2)
plot (Ret_P,Rout_dissip_minflo,'ko','markersize',5,'linewidth',3)
ylabel ('\it{Std(O)/Std(I)}','fontweight','bold','fontsize',12)
axis ([0 30 0 1])

subplot (2,2,3)
plot (Ret_P,OutF_mean_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{Mean(O)}','fontweight','bold','fontsize',12)
axis ([0 30 1*10^6 1.75*10^6])

subplot (2,2,4)
plot (Ret_P,OutF_CV_minflo,'ko','markersize',5,'linewidth',3)
xlabel ('\it{Return Period (d)}','fontweight','bold','fontsize',12)
ylabel ('\it{CV(O)}','fontweight','bold','fontsize',12)
axis ([0 30 0 2])

saveas(gcf,'../figures/minflo_hydro_return.png')