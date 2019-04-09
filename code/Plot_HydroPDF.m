% Assign colors for plotting
colorblue1 = [0, 0.4470, 0.7410];
colorgreen= [0.4660 0.6740 0.1880];
colorblue2 = [0.3010, 0.7450, 0.9330];

%% PDF of precipitation and Inflow

%PDF of Precip
[yy,xx]=hist(Precip_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxPrecip=xx; 
yyPrecip=yy; 

%PDF of Precip
[yy,xx]=hist(Precip_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxPrecip_mid=xx; 
yyPrecip_mid=yy; 

%PDF of Precip
[yy,xx]=hist(Precip_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxPrecip_end=xx; 
yyPrecip_end=yy; 

%PDF of Ih1
[yy,xx]=hist(Ih1_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxIh1=xx; 
yyIh1=yy; 

%PDF of Ih1
[yy,xx]=hist(Ih1_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxIh1_mid=xx; 
yyIh1_mid=yy; 

%PDF of Ih1
[yy,xx]=hist(Ih1_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxIh1_end=xx; 
yyIh1_end=yy; 

%% Natural Variability

%PDF of Od
[yy,xx]=hist(Od_natvar_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_natvar=xx; 
yyOd_natvar=yy; 

%PDF of Od
[yy,xx]=hist(Od_natvar_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_natvar_mid=xx; 
yyOd_natvar_mid=yy; 

%PDF of Od
[yy,xx]=hist(Od_natvar_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_natvar_end=xx; 
yyOd_natvar_end=yy; 

figure()
sgtitle('Natural Variability','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/natvar_PDF.png')

%% Minimum Flow

%PDF of Od
[yy,xx]=hist(Od_minflo_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_minflo=xx; 
yyOd_minflo=yy; 

%PDF of Od
[yy,xx]=hist(Od_minflo_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_minflo_mid=xx; 
yyOd_minflo_mid=yy; 

%PDF of Od
[yy,xx]=hist(Od_minflo_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_minflo_end=xx; 
yyOd_minflo_end=yy; 

figure()
sgtitle('Minimum Flow','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_minflo,yyOd_minflo,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_minflo_mid,yyOd_minflo_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_minflo_end,yyOd_minflo_end,':','color',colorgreen, 'linewidth',2)
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Minimum Flow - Return Period = 1','Minimum Flow - Return Period = 15','Minimum Flow - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/minflo_PDF.png')

figure()
sgtitle('Minimum Flow','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_minflo,yyOd_minflo,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_minflo_mid,yyOd_minflo_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_minflo_end,yyOd_minflo_end,':','color',colorgreen, 'linewidth',2)
axis([3E5 4E6 1E-9 1E-4]);
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Minimum Flow - Return Period = 1','Minimum Flow - Return Period = 15','Minimum Flow - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/minflo_PDF_zoom.png')

%% Flood Management
%PDF of Sd
[yy,xx]=hist(Sd_flood_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxSd_flood=xx; 
yySd_flood=yy; 

%PDF of Od
[yy,xx]=hist(Od_flood_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_flood=xx; 
yyOd_flood=yy; 

%PDF of Od
[yy,xx]=hist(Od_flood_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_flood_mid=xx; 
yyOd_flood_mid=yy; 

%PDF of Od
[yy,xx]=hist(Od_flood_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_flood_end=xx; 
yyOd_flood_end=yy; 

figure()
sgtitle('Flood Management','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_flood,yyOd_flood,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_flood_mid,yyOd_flood_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_flood_end,yyOd_flood_end,':','color',colorgreen, 'linewidth',2)
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Flood Management - Return Period = 1','Flood Management - Return Period = 15','Flood Management - Return Period = 29',...
	'fontsize',12);
saveas(gcf,'../figures/flood_PDF.png')

figure()
sgtitle('Flood Management','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_flood,yyOd_flood,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_flood_mid,yyOd_flood_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_flood_end,yyOd_flood_end,':','color',colorgreen, 'linewidth',2)
axis([3E5 4E6 1E-9 1E-4]);
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Flood Management - Return Period = 1','Flood Management - Return Period = 15','Flood Management - Return Period = 29',...
	'fontsize',12);
saveas(gcf,'../figures/flood_PDF_zoom.png')

%% Regular Dam Scenario

%PDF of Od
[yy,xx]=hist(Od_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd=xx; 
yyOd=yy; 

%PDF of Od
[yy,xx]=hist(Od_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_mid=xx; 
yyOd_mid=yy; 

%PDF of Od
[yy,xx]=hist(Od_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_end=xx; 
yyOd_end=yy; 
%%
figure()
sgtitle('Run of River','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd,yyOd,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_mid,yyOd_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_end,yyOd_end,':','color',colorgreen, 'linewidth',2)
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Run of River - Return Period = 1','Run of River - Return Period = 15','Run of River - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/runOfRiver_PDF.png')

figure()
sgtitle('Run of River','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd,yyOd,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_mid,yyOd_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_end,yyOd_end,':','color',colorgreen, 'linewidth',2)
axis([3E5 3E6 1E-8 1E-4]);
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Run Of River - Return Period = 1','Run Of River - Return Period = 15','Run Of River - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/runOfRiver_PDF_zoom.png')

%% Drought Management

%PDF of Od
[yy,xx]=hist(Od_drought_return(1,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_drought=xx; 
yyOd_drought=yy; 

%PDF of Od
[yy,xx]=hist(Od_drought_return(floor((1/2)*kk),:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_drought_mid=xx; 
yyOd_drought_mid=yy; 

%PDF of Od
[yy,xx]=hist(Od_drought_return(kk,:),50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxOd_drought_end=xx; 
yyOd_drought_end=yy; 
%%
figure()
sgtitle('Drought Management','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_drought,yyOd_drought,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_drought_mid,yyOd_drought_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_drought_end,yyOd_drought_end,':','color',colorgreen, 'linewidth',2)
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Drought Management - Return Period = 1','Drought Management - Return Period = 15','Drought Management - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/drought_PDF.png')

figure()
sgtitle('Drought Management','fontsize',15)
loglog(xxOd_natvar,yyOd_natvar,'color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_mid,yyOd_natvar_mid,'--','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_natvar_end,yyOd_natvar_end,':','color',colorblue2, 'linewidth',2)
hold on
loglog(xxOd_drought,yyOd_drought,'color',colorgreen,'linewidth',2)
hold on
loglog(xxOd_drought_mid,yyOd_drought_mid,'--','color',colorgreen, 'linewidth',2)
hold on
loglog(xxOd_drought_end,yyOd_drought_end,':','color',colorgreen, 'linewidth',2)
axis([4E5 2E6 1E-8 1E-4]);
set(gca,'FontSize',10)
xlabel ('\it{Flow Rate (m^{3}/d)}','fontweight','bold','fontsize',12)
ylabel ('\it{PDF}','fontweight','bold','fontsize',12)
legend('Natural Variability - Return Period = 1','Natural Variability - Return Period = 15','Natural Variability - Return Period = 29',...
	'Drought Management - Return Period = 1','Drought Management- Return Period = 15','Drought Management - Return Period = 29','fontsize',12)
saveas(gcf,'../figures/drought_PDF_zoom.png')