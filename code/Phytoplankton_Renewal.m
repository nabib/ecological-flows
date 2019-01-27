clc; clear all

%Data from Roanoke NWIS
phytopl=csvread('../data/RoanokePhytoplData.csv',1);
%--- Phytoplankton vs Outflow Regression
outfl = phytopl(:,1);
phyt = phytopl(:,6);
x=outfl;y=phyt;
uo = [mean(x);1.5;100000];
%modelfun = @(u,x)(((x/u(1)).^(u(2))).*(exp(-x/u(1)))*u(3));

%modelfun = @(u,x)(u(1)*x.^2+u(2)*x+u(3))

beta = nlinfit(x,y,@gamma_dist,uo);
xx=[1:1:2*max(y)];
yy=gamma_dist(beta,xx);
plot(xx,yy,'k-')
hold on
plot(x,y,'s')
dydq=diff(yy)./diff(xx);
xxavg=(xx(2:length(xx))+xx(1:length(xx)-1))/2;
% Pass the flow rate from dam and get dydq fitted to data
Qi=x(3);
dydq_q=interp1(xxavg,dydq,Qi,'linear');