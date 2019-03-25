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
%clear all; clf

%------ Import N,O,P from flow routing model
Dam_Scenarios
NitPhytRelation
OutPhytRelation

xc=0.056; xp=0.01; yc=2.01; yp=5;Ro=0.161; Co=0.5;

%------- Set time step and number of time increments to compute
%dt=0.01;N=1000000;

%% Regular Dam Scenario

%------- Initialize the vectors
R=[]; C=[]; P=[];t=[];

%------- Set initial guess at t=0
R(1)=1; C(1)=1; P(1)=1;t(1)=0;

phyt_calc = phi1./(1+exp(-(phi2+phi3.*N_reg)));
phyt_max = (phi1./(1+exp(-(phi2+phi3.*N_in_reg))));
K_phyt = phyt_calc/phyt_max;
MMn=length(Od);
dt=0.01;
for i=1:MMn-1
    Rn(i)=R(i)/(R(i)+Ro);
    Cn(i)=C(i)/(C(i)+Co);
    %------ Resource budget
    R(i+1)=max(0,R(i)+dt*(R(i)*(K_phyt(i)-R(i))-(xc*yc*C(i)*Rn(i))./y_norm(i)));
    %------ Consumer budget
    C(i+1)=C(i)+dt*(xc*C(i)*(-1+yc*Rn(i))-((xp*yp*P(i)*Cn(i))./y_norm(i)));
    %------ Predator budget
    P(i+1)=P(i)+dt*(xp*P(i)*(-1+yp*Cn(i)));
    t(i+1)=t(i)+dt;
end

% figure(1)
% clf
% subplot (3,1,1)
% plot (t(1:MMn),R(1:MMn))
% hold on
% plot (t(1),R(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C(1:MMn))
% hold on
% plot (t(1),C(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P(1:MMn))
% hold on
% plot (t(1),P(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig1
% 
% figure(2)
% clf
% plot3 (R(1:MMn),C(1:MMn),P(1:MMn),'-')
% hold on
% plot3 (R(1),C(1),P(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_reg(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_reg(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_reg(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2

%% Flood Management

%------- Initialize the vectors
R_flood=[]; C_flood=[]; P_flood=[];t=[];

%------- Set initial guess at t=0
R_flood(1)=1; C_flood(1)=1; P_flood(1)=1;t(1)=0;

phyt_calc_flood = phi1./(1+exp(-(phi2+phi3.*N_flood)));
phyt_max_flood = (phi1./(1+exp(-(phi2+phi3.*N_in_flood))));
K_phyt_flood = phyt_calc_flood/phyt_max_flood;
MMn=length(Od_flood);
dt=0.01;
for i=1:MMn-1
    Rn_flood(i)=R_flood(i)/(R_flood(i)+Ro);
    Cn_flood(i)=C_flood(i)/(C_flood(i)+Co);
    %------ Resource budget
    R_flood(i+1)=max(0,R_flood(i)+dt*(R_flood(i)*(K_phyt_flood(i)-R_flood(i))-(xc*yc*C_flood(i)*Rn_flood(i))/y_flood_norm(i)));
    %------ Consumer budget
    C_flood(i+1)=C_flood(i)+dt*(xc*C_flood(i)*(-1+yc*Rn_flood(i))-((xp*yp*P_flood(i)*Cn_flood(i))/y_flood_norm(i)));
    %------ Predator budget
    P_flood(i+1)=P_flood(i)+dt*(xp*P_flood(i)*(-1+yp*Cn_flood(i)));
    t(i+1)=t(i)+dt;
end

% figure(1)
% clf
% subplot (3,1,1)
% plot (t(1:MMn),R_flood(1:MMn))
% hold on
% plot (t(1),R_flood(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_flood(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C_flood(1:MMn))
% hold on
% plot (t(1),C_flood(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_flood(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P_flood(1:MMn))
% hold on
% plot (t(1),P_flood(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_flood(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig1
% 
% figure(2)
% clf
% plot3 (R_flood(1:MMn),C_flood(1:MMn),P_flood(1:MMn),'-')
% hold on
% plot3 (R_flood(1),C_flood(1),P_flood(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_flood(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_flood(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_flood(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2

%% Drought Management

%------- Initialize the vectors
R_drought=[]; C_drought=[]; P_drought=[];t=[];

%------- Set initial guess at t=0
R_drought(1)=1; C_drought(1)=1; P_drought(1)=1;t(1)=0;

phyt_calc_drought = phi1./(1+exp(-(phi2+phi3.*N_drought)));
phyt_max_drought = (phi1./(1+exp(-(phi2+phi3.*N_in_drought))));
K_phyt_drought = phyt_calc_drought/phyt_max_drought;
MMn=length(Od_drought);
dt=0.01;
for i=1:MMn-1
    Rn_drought(i)=R_drought(i)/(R_drought(i)+Ro);
    Cn_drought(i)=C_drought(i)/(C_drought(i)+Co);
    %------ Resource budget
    R_drought(i+1)=max(0,R_drought(i)+dt*(R_drought(i)*(K_phyt_drought(i)-R_drought(i))-(xc*yc*C_drought(i)*Rn_drought(i))/y_drought_norm(i)));
    %------ Consumer budget
    C_drought(i+1)=C_drought(i)+dt*(xc*C_drought(i)*(-1+yc*Rn_drought(i))-((xp*yp*P_drought(i)*Cn_drought(i))/y_drought_norm(i)));
    %------ Predator budget
    P_drought(i+1)=P_drought(i)+dt*(xp*P_drought(i)*(-1+yp*Cn_drought(i)));
    t(i+1)=t(i)+dt;
end

% figure(1)
% clf
% subplot (3,1,1)
% plot (t(1:MMn),R_drought(1:MMn))
% hold on
% plot (t(1),R_drought(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_drought(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C_drought(1:MMn))
% hold on
% plot (t(1),C_drought(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_drought(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P_drought(1:MMn))
% hold on
% plot (t(1),P_drought(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_drought(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig1
% 
% figure(2)
% clf
% plot3 (R_drought(1:MMn),C_drought(1:MMn),P_drought(1:MMn),'-')
% hold on
% plot3 (R_drought(1),C_drought(1),P_drought(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_drought(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_drought(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_drought(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2
% 
%% Natural Variability

%------- Initialize the vectors
R_natvar=[]; C_natvar=[]; P_natvar=[];t=[];

%------- Set initial guess at t=0
R_natvar(1)=1; C_natvar(1)=1; P_natvar(1)=1;t(1)=0;

phyt_calc_natvar = phi1./(1+exp(-(phi2+phi3.*N_natvar)));
phyt_max_natvar = (phi1./(1+exp(-(phi2+phi3.*N_in_natvar))));
K_phyt_natvar = phyt_calc_natvar/phyt_max_natvar;
MMn=length(Od_natvar);
dt=0.01;
for i=1:MMn-1
    Rn_natvar(i)=R_natvar(i)/(R_natvar(i)+Ro);
    Cn_natvar(i)=C_natvar(i)/(C_natvar(i)+Co);
    %------ Resource budget
    R_natvar(i+1)=max(0,R_natvar(i)+dt*(R_natvar(i)*(K_phyt_natvar(i)-R_natvar(i))-(xc*yc*C_natvar(i)*Rn_natvar(i))/y_norm_natvar(i)));
    %------ Consumer budget
    C_natvar(i+1)=C_natvar(i)+dt*(xc*C_natvar(i)*(-1+yc*Rn_natvar(i))-((xp*yp*P_natvar(i)*Cn_natvar(i))/y_norm_natvar(i)));
    %------ Predator budget
    P_natvar(i+1)=P_natvar(i)+dt*(xp*P_natvar(i)*(-1+yp*Cn_natvar(i)));
    t(i+1)=t(i)+dt;
end

% figure(1)
% clf
% subplot (3,1,1)
% plot (t(1:MMn),R_natvar(1:MMn))
% hold on
% plot (t(1),R_natvar(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_natvar(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C_natvar(1:MMn))
% hold on
% plot (t(1),C_natvar(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_natvar(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P_natvar(1:MMn))
% hold on
% plot (t(1),P_natvar(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_natvar(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig1
% 
% figure(2)
% clf
% plot3 (R_natvar(1:MMn),C_natvar(1:MMn),P_natvar(1:MMn),'-')
% hold on
% plot3 (R_natvar(1),C_natvar(1),P_natvar(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_natvar(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_natvar(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_natvar(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2

%% Minimum Flow

%------- Initialize the vectors
R_minflo=[]; C_minflo=[]; P_minflo=[];t=[];

%------- Set initial guess at t=0
R_minflo(1)=1; C_minflo(1)=1; P_minflo(1)=1;t(1)=0;

phyt_calc_minflo = phi1./(1+exp(-(phi2+phi3.*N_minflo)));
phyt_max_minflo = (phi1./(1+exp(-(phi2+phi3.*N_in_minflo))));
K_phyt_minflo = phyt_calc_minflo/phyt_max_minflo;
MMn=length(Od_minflo);
dt=0.01;
for i=1:MMn-1
    Rn_minflo(i)=R_minflo(i)/(R_minflo(i)+Ro);
    Cn_minflo(i)=C_minflo(i)/(C_minflo(i)+Co);
    %------ Resource budget
    R_minflo(i+1)=max(0,R_minflo(i)+dt*(R_minflo(i)*(K_phyt_minflo(i)-R_minflo(i))-(xc*yc*C_minflo(i)*Rn_minflo(i))/y_minflo_norm(i)));
    %------ Consumer budget
    C_minflo(i+1)=C_minflo(i)+dt*(xc*C_minflo(i)*(-1+yc*Rn_minflo(i))-((xp*yp*P_minflo(i)*Cn_minflo(i))/y_minflo_norm(i)));
    %------ Predator budget
    P_minflo(i+1)=P_minflo(i)+dt*(xp*P_minflo(i)*(-1+yp*Cn_minflo(i)));
    t(i+1)=t(i)+dt;
end

% figure(1)
% clf
% subplot (3,1,1)
% plot (t(1:MMn),R_minflo(1:MMn))
% hold on
% plot (t(1),R_minflo(1),'ro','markersize',5,'linewidth',4)
% ylabel ('\it{R_minflo(t)}','fontweight','bold','fontsize',10)
% 
% subplot (3,1,2)
% plot (t(1:MMn),C_minflo(1:MMn))
% hold on
% plot (t(1),C_minflo(1),'ro','markersize',5,'linewidth',4)
% 
% ylabel ('\it{C_minflo(t)}','fontweight','bold','fontsize',10)
% subplot (3,1,3)
% plot (t(1:MMn),P_minflo(1:MMn))
% hold on
% plot (t(1),P_minflo(1),'ro','markersize',5,'linewidth',4)
% 
% xlabel ('\it{Time}','fontweight','bold','fontsize',10)
% ylabel ('\it{P_minflo(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig1
% 
% figure(2)
% clf
% plot3 (R_minflo(1:MMn),C_minflo(1:MMn),P_minflo(1:MMn),'-')
% hold on
% plot3 (R_minflo(1),C_minflo(1),P_minflo(1),'ro','markersize',10,'linewidth',4)
% 
% xlabel ('\it{R_minflo(t)}','fontweight','bold','fontsize',10)
% ylabel ('\it{C_minflo(t)}','fontweight','bold','fontsize',10)
% zlabel ('\it{P_minflo(t)}','fontweight','bold','fontsize',10)
% %print -djpeg99 Fig2