clc; clear all

Flood_Routing_Main;

%Data from Roanoke NWIS
phytopl=csvread('../data/RoanokePhytoplData.csv',1);
%--- Phytoplankton vs Outflow Regression
outfl = phytopl(:,1);
phyt = phytopl(:,6);
x=outfl;y=phyt;
uo = [mean(x);1.5;100000];
beta = nlinfit(x,y,@gamma_dist,uo);

% Fit the distribution
xx=[0:0.1:2*max(Od)];
yy=gamma_dist(beta,xx);

% Plot the data and distribution
plot(xx,yy,'k-')
hold on
plot(x,y,'s')
hold off

%% Calculate dP/dQ
dpdq=diff(yy)./diff(xx);
xxavg=(xx(2:length(xx))+xx(1:length(xx)-1))/2;
% Pass the flow rate from dam and get dydq fitted to data
%Qi=x(3);
dpdq_q=interp1(xxavg,dpdq,Od,'linear');

%% Calculate dQ/dt
denom = (1:length(Od))*dt;
dqdt = diff(Od)./diff(denom);
Odavg = (Od(2:length(Od))+Od(1:length(Od)-1))/2;
dqdt_q = interp1(Odavg,dqdt,Od,'linear');

%% Calculate dP/dt
dpdt = (dpdq_q .* dqdt_q);
if_q=find(dpdt<0);
dpdt(if_q)=0;