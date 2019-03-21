%--------------------------------------------------------------------------
%McCann_Yodzis1994.m: Solves the three species food chain with type II 
%                     functional response (R=Resource, C = Consumer, 
%                     P = Predator).
%
%Authors: Nicole Abib, Gaby Katul, Hannah Doherty, and Mary Tchamkina
%
%Date: 3/25/2016
%
%Reference: McCann, K. and P. Yodzis, 1994, Biological conditions for choas
%           in a three species food chain, Ecology, 75(2), 561-564.
%--------------------------------------------------------------------------
clear all; clf

%------ Import N,O,P from flow routing model
Dam_Scenarios
NitPhytRelation
OutPhytRelation

xc=0.056; xp=0.01; yc=2.01; yp=5;Ro=0.161; Co=0.5;

%------- Set time step and number of time increments to compute
%dt=0.01;N=1000000;
%------- Initialize the vectors
R=[]; C=[]; P=[];t=[];

%------- Set initial guess at t=0
R(1)=1; C(1)=1; P(1)=1;t(1)=0;

%% ------- Define carrying capacity and intrinsic production-biomass ratio

% Connect flow rate to search algorithm
% stage discharge that will give us stored water
% manning's formula

r = 1;
phyt_calc = phi1./(1+exp(-(phi2+phi3.*C_natvar)));
phyt_max = (phi1./(1+exp(-(phi2+phi3.*C_in))));
K_phyt = phyt_calc/phyt_max;
MMn=length(Od_natvar);
dt=0.01;
for i=1:MMn-1
    Rn(i)=R(i)/(R(i)+Ro);
    Cn(i)=C(i)/(C(i)+Co);
    %------ Resource budget
    R(i+1)=max(0,R(i)+dt*(R(i)*(K_phyt(i)-R(i))-(xc*yc*C(i)*Rn(i))/y_minflo_norm(i)));
    %------ Consumer budget
    C(i+1)=C(i)+dt*(xc*C(i)*(-1+yc*Rn(i))-((xp*yp*P(i)*Cn(i))/y_norm(i)));
    %------ Predator budget
    P(i+1)=P(i)+dt*(xp*P(i)*(-1+yp*Cn(i)));
    t(i+1)=t(i)+dt;
end

figure(1)
clf
subplot (3,1,1)
plot (t(1:MMn),R(1:MMn))
hold on
plot (t(1),R(1),'ro','markersize',5,'linewidth',4)
ylabel ('\it{R(t)}','fontweight','bold','fontsize',10)

subplot (3,1,2)
plot (t(1:MMn),C(1:MMn))
hold on
plot (t(1),C(1),'ro','markersize',5,'linewidth',4)

ylabel ('\it{C(t)}','fontweight','bold','fontsize',10)
subplot (3,1,3)
plot (t(1:MMn),P(1:MMn))
hold on
plot (t(1),P(1),'ro','markersize',5,'linewidth',4)

xlabel ('\it{Time}','fontweight','bold','fontsize',10)
ylabel ('\it{P(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig1

figure(2)
clf
plot3 (R(1:MMn),C(1:MMn),P(1:MMn),'-')
hold on
plot3 (R(1),C(1),P(1),'ro','markersize',10,'linewidth',4)

xlabel ('\it{R(t)}','fontweight','bold','fontsize',10)
ylabel ('\it{C(t)}','fontweight','bold','fontsize',10)
zlabel ('\it{P(t)}','fontweight','bold','fontsize',10)
%print -djpeg99 Fig2