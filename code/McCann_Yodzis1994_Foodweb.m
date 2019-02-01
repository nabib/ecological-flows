%--------------------------------------------------------------------------
%McCann_Yodzis1994.m: Solves the three species food chain with type II 
%                     functional response (R=Resource, C = Consumer, 
%                     P = Predator).
%
%Authors: Gaby Katul, Hannah Doherty, and Mary Tchamkina
%
%Date: 3/25/2016
%
%Reference: McCann, K. and P. Yodzis, 1994, Biological conditions for choas
%           in a three species food chain, Ecology, 75(2), 561-564.
%--------------------------------------------------------------------------
%clear all; clf

%------ Import N,O,P from flow routing model
Phytoplankton_Renewal
%Dam_Scenarios;

%Data from Roanoke NWIS
%phytopl=csvread('../data/RoanokePhytoplData.csv',1);
%--- Phytoplankton vs Outflow Regression
%outfl = phytopl(:,1);
%phyt = phytopl(:,6);
%s6 = polyfit(outfl,phyt,1);
%slope6=s6(1);
% intercept6=s6(2);
% y_hat6=slope6*outfl+intercept6;
%figure(1)
%plot (outfl,phyt,'bo')
%hold on
%plot(outfl,y_hat6,'k-')

%------ Build relationship between N,P and ingestion
%------ Build relationship between O and ingestion

xc=0.056; xp=0.01; yc=2.01; yp=5; 
Ro=0.161; Co=0.5;

%------- Set time step and number of time increments to compute
%dt=0.01;N=1000000;
%------- Initialize the vectors
R=[]; C=[]; P=[];t=[];

%------- Set initial guess at t=0
R(1)=1; C(1)=1; P(1)=1;t(1)=0;

%% ------- Define carrying capacity and intrinsic production-biomass ratio
r = 1;
K = 1;
%K(1) = 1;

% Create source vector
S = [];
S=dpdt/mean(dpdt);
%Knorm = K/mean(K);
% add S - phytoplankton conc/time
for i=1:length(Od1)
    Rn=R(i)/(R(i)+Ro);
    Cn=C(i)/(C(i)+Co);
    %------ Resource budget
    R(i+1)=R(i)+dt*((r*R(i)*(1-(R(i)/K)))-xc*yc*C(i)*Rn) + S(i)*dt;
    %------ Consumer budget
    C(i+1)=C(i)+dt*(xc*C(i)*(-1+yc*Rn)-xp*yp*P(i)*Cn);
    %------ Predator budget
    P(i+1)=P(i)+dt*(xp*P(i)*(-1+yp*Cn));
    t(i+1)=t(i)+dt;
end

figure(1)
clf
subplot (3,1,1)
plot (t,R)
hold on
plot (t(1),R(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t,C)
hold on
plot (t(1),C(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t,P)
hold on
plot (t(1),P(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(2)
clf
plot3 (R,C,P,'-')
hold on
plot3 (R(1),C(1),P(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2