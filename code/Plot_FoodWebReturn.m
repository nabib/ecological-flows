%--------------------------------------------------------------------------
%Plot_Foodweb.m: Program to plot the foodweb phase diagrams at 3 different
%return period spanning the length of the data
%
%Authors: Nicole Abib
%
%Date: 3/27/18

% Set figures to same scale?
%% Regular Dam Scenario
% figure()
% clf
% sgtitle('Run of River','fontsize',15)
% subplot(1,3,1)
% plot3 (R_return(1,1:MMn),C_return(1,1:MMn),P_return(1,1:MMn),'-')
% hold on
% plot3 (R_return(1,1),C_return(1,1),P_return(1,1),'ro','markersize',10,'linewidth',4)
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% 
% subplot(1,3,2)
% plot3 (R_return(floor((1/2)*kk),1:MMn),C_return(floor((1/2)*kk),1:MMn),P_return(floor((1/2)*kk),1:MMn),'-')
% hold on
% plot3 (R_return(floor((1/2)*kk),1),C_return(floor((1/2)*kk),1),P_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
% 
% xlim([0 1])
% ylim([0 1.5])
% zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2
% 
% subplot(1,3,3)
% plot3 (R_return(kk,1:MMn),C_return(kk,1:MMn),P_return(kk,1:MMn),'-')
% hold on
% plot3 (R_return(kk,1),C_return(kk,1),P_return(kk,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
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
% figure()
% clf
% sgtitle('Minimum Flow')
% subplot(1,3,1)
% plot3 (R_minflo_return(1,1:MMn),C_minflo_return(1,1:MMn),P_minflo_return(1,1:MMn),'-')
% hold on
% plot3 (R_minflo_return(1,1),C_minflo_return(1,1),P_minflo_return(1,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% 
% subplot(1,3,2)
% plot3 (R_minflo_return(floor((1/2)*kk),1:MMn),C_minflo_return(floor((1/2)*kk),1:MMn),P_minflo_return(floor((1/2)*kk),1:MMn),'-')
% hold on
% plot3 (R_minflo_return(floor((1/2)*kk),1),C_minflo_return(floor((1/2)*kk),1),P_minflo_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2
% 
% subplot(1,3,3)
% plot3 (R_minflo_return(kk,1:MMn),C_minflo_return(kk,1:MMn),P_minflo_return(kk,1:MMn),'-')
% hold on
% plot3 (R_minflo_return(kk,1),C_minflo_return(kk,1),P_minflo_return(kk,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)

%% Natural Variability Movie
figure()
sgtitle('Natural Variability','fontsize',15)
subplot(1,3,1)
curve1 = animatedline('Linewidth',1);
set(gca,'XLim',[0 1],'YLim',[0,1],'ZLim',[0,0.6]);
hold on
plot3 (R_natvar_return(1,1),C_natvar_return(1,1),P_natvar_return(1,1),'ro','markersize',10,'linewidth',4)
title('Return Period = 1','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);

subplot(1,3,2)
curve2 = animatedline('Linewidth',1);
hold on
plot3 (R_natvar_return(floor((1/2)*kk),1),C_natvar_return(floor((1/2)*kk),1),P_natvar_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
set(gca,'XLim',[0 1],'YLim',[0,1],'ZLim',[0,0.6]);
title('Return Period = 15','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);

subplot(1,3,3)
curve3 = animatedline('Linewidth',1);
hold on
plot3 (R_natvar_return(kk,1),C_natvar_return(kk,1),P_natvar_return(kk,1),'ro','markersize',10,'linewidth',4)
set(gca,'XLim',[0 1],'YLim',[0,1],'ZLim',[0,0.6]);
title('Return Period = 29','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);
set(gcf,'color','w')
v = VideoWriter('../figures/natvar_movie.avi');
open(v);

for i=1:10000:length(R_natvar_return(1,:)) 
    addpoints(curve1,R_natvar_return(1,i),C_natvar_return(1,i),P_natvar_return(1,i));
    addpoints(curve2,R_natvar_return(floor((1/2)*kk),i),C_natvar_return(floor((1/2)*kk),i),P_natvar_return(floor((1/2)*kk),i));
    addpoints(curve3,R_natvar_return(kk,i),C_natvar_return(kk,i),P_natvar_return(kk,i));
    drawnow limitrate
    frame = getframe(gcf);
    writeVideo(v,frame);
end
close(v);

%% Minimum Flow Movie
figure()
sgtitle('Minimum Flow','fontsize',15)
subplot(1,3,1)
curve1 = animatedline('Linewidth',1);
set(gca,'XLim',[0 1],'YLim',[0,4],'ZLim',[0,5]);
hold on
plot3 (R_minflo_return(1,1),C_minflo_return(1,1),P_minflo_return(1,1),'ro','markersize',10,'linewidth',4)
title('Return Period = 1','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);

subplot(1,3,2)
curve2 = animatedline('Linewidth',1);
hold on
plot3 (R_minflo_return(floor((1/2)*kk),1),C_minflo_return(floor((1/2)*kk),1),P_minflo_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
set(gca,'XLim',[0 1],'YLim',[0,4],'ZLim',[0,5]);
title('Return Period = 15','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);

subplot(1,3,3)
curve3 = animatedline('Linewidth',1);
hold on
plot3 (R_minflo_return(kk,1),C_minflo_return(kk,1),P_minflo_return(kk,1),'ro','markersize',10,'linewidth',4)
set(gca,'XLim',[0 1],'YLim',[0,4],'ZLim',[0,5]);
title('Return Period = 29','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);
set(gcf,'color','w')
v = VideoWriter('../figures/minflo_movie.avi');
open(v);

for i=1:10000:length(R_minflo_return(1,:)) 
    addpoints(curve1,R_minflo_return(1,i),C_minflo_return(1,i),P_minflo_return(1,i));
    addpoints(curve2,R_minflo_return(floor((1/2)*kk),i),C_minflo_return(floor((1/2)*kk),i),P_minflo_return(floor((1/2)*kk),i));
    addpoints(curve3,R_minflo_return(kk,i),C_minflo_return(kk,i),P_minflo_return(kk,i));
    drawnow limitrate
    frame = getframe(gcf);
    writeVideo(v,frame);
end
close(v);

%% Flood Management Movie
figure()
sgtitle('Flood Management','fontsize',15)
subplot(1,3,1)
curve1 = animatedline('Linewidth',1);
set(gca,'XLim',[0 1],'YLim',[0,1],'ZLim',[0,0.6]);
hold on
plot3 (R_flood_return(1,1),C_flood_return(1,1),P_flood_return(1,1),'ro','markersize',10,'linewidth',4)
title('Return Period = 1','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);

subplot(1,3,2)
curve2 = animatedline('Linewidth',1);
hold on
plot3 (R_flood_return(floor((1/2)*kk),1),C_flood_return(floor((1/2)*kk),1),P_flood_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
set(gca,'XLim',[0 1],'YLim',[0,1],'ZLim',[0,0.6]);
title('Return Period = 15','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);

subplot(1,3,3)
curve3 = animatedline('Linewidth',1);
hold on
plot3 (R_flood_return(kk,1),C_flood_return(kk,1),P_flood_return(kk,1),'ro','markersize',10,'linewidth',4)
set(gca,'XLim',[0 1],'YLim',[0,1],'ZLim',[0,0.6]);
title('Return Period = 29','fontsize',13)
xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
view([-45 12]);
set(gcf,'color','w')
v = VideoWriter('../figures/flood_movie.avi');
open(v);

for i=1:10000:length(R_flood_return(1,:))
    addpoints(curve1,R_flood_return(1,i),C_flood_return(1,i),P_flood_return(1,i));
    addpoints(curve2,R_flood_return(floor((1/2)*kk),i),C_flood_return(floor((1/2)*kk),i),P_flood_return(floor((1/2)*kk),i));
    addpoints(curve3,R_flood_return(kk,i),C_flood_return(kk,i),P_flood_return(kk,i));
    drawnow limitrate
    frame = getframe(gcf);
    writeVideo(v,frame);
end
close(v);
%%
% figure()
% clf
% sgtitle('Natural Variability','fontsize',20)
% subplot(1,3,1)
% plot3 (R_natvar_return(1,1:MMn),C_natvar_return(1,1:MMn),P_natvar_return(1,1:MMn),'-')
% hold on
% plot3 (R_natvar_return(1,1),C_natvar_return(1,1),P_natvar_return(1,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R(t)}','fontweight','bold','fontsize',12)
% ylabel ('\it{C(t)}','fontweight','bold','fontsize',12)
% zlabel ('\it{P(t)}','fontweight','bold','fontsize',12)
% 
% subplot(1,3,2)
% plot3 (R_natvar_return(floor((1/2)*kk),1:MMn),C_natvar_return(floor((1/2)*kk),1:MMn),P_natvar_return(floor((1/2)*kk),1:MMn),'-')
% hold on
% plot3 (R_natvar_return(floor((1/2)*kk),1),C_natvar_return(floor((1/2)*kk),1),P_natvar_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',12)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',12)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',12)
% %print -djpeg99 Fig2
% 
% subplot(1,3,3)
% plot3 (R_natvar_return(kk,1:MMn),C_natvar_return(kk,1:MMn),P_natvar_return(kk,1:MMn),'-')
% hold on
% plot3 (R_natvar_return(kk,1),C_natvar_return(kk,1),P_natvar_return(kk,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',12)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',12)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',12)

%% Flood Scenario
% figure()
% clf
% sgtitle('Flood Management','fontsize',20)
% subplot(1,3,1)
% plot3 (R_flood_return(1,1:MMn),C_flood_return(1,1:MMn),P_flood_return(1,1:MMn),'-')
% hold on
% plot3 (R_flood_return(1,1),C_flood_return(1,1),P_flood_return(1,1),'ro','markersize',10,'linewidth',4)
% % 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',12)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',12)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',12)
% 
% subplot(1,3,2)
% plot3 (R_flood_return(floor((1/2)*kk),1:MMn),C_flood_return(floor((1/2)*kk),1:MMn),P_flood_return(floor((1/2)*kk),1:MMn),'-')
% hold on
% plot3 (R_flood_return(floor((1/2)*kk),1),C_flood_return(floor((1/2)*kk),1),P_flood_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',12)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',12)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',12)
% %print -djpeg99 Fig2
% 
% subplot(1,3,3)
% plot3 (R_flood_return(kk,1:MMn),C_flood_return(kk,1:MMn),P_flood_return(kk,1:MMn),'-')
% hold on
% plot3 (R_flood_return(kk,1),C_flood_return(kk,1),P_flood_return(kk,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',12)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',12)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',12)

%% Drought Scenario
% figure(5)
% clf
% sgtitle('Drought Management')
% subplot(1,3,1)
% plot3 (R_drought_return(1,1:MMn),C_drought_return(1,1:MMn),P_drought_return(1,1:MMn),'-')
% hold on
% plot3 (R_drought_return(1,1),C_drought_return(1,1),P_drought_return(1,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% 
% subplot(1,3,2)
% plot3 (R_drought_return(floor((1/2)*kk),1:MMn),C_drought_return(floor((1/2)*kk),1:MMn),P_drought_return(floor((1/2)*kk),1:MMn),'-')
% hold on
% plot3 (R_drought_return(floor((1/2)*kk),1),C_drought_return(floor((1/2)*kk),1),P_drought_return(floor((1/2)*kk),1),'ro','markersize',10,'linewidth',4)
% % 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2
% 
% subplot(1,3,3)
% plot3 (R_drought_return(kk,1:MMn),C_drought_return(kk,1:MMn),P_drought_return(kk,1:MMn),'-')
% hold on
% plot3 (R_drought_return(kk,1),C_drought_return(kk,1),P_drought_return(kk,1),'ro','markersize',10,'linewidth',4)
% 
% % xlim([0 1])
% % ylim([0 1.5])
% % zlim([0 1])
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)