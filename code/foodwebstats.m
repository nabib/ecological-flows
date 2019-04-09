%% Regular Dam Scenario
%PDF of Rf 
[yy,xx]=hist(R,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxR_outRoR=xx; 
yyR_outRoR=yy; 

%PDF of Cf
[yy,xx]=hist(C,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxC_outRoR=xx; 
yyC_outRoR=yy; 

%PDF of Pf
[yy,xx]=hist(P,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxP_outRoR=xx; 
yyP_outRoR=yy; 

%save distributions for plotting
Res_xx(kk,:)=xxR_outRoR;
Res_yy(kk,:)=yyR_outRoR;
Cons_xx(kk,:)=xxC_outRoR;
Cons_yy(kk,:)=yyC_outRoR;
Pred_xx(kk,:)=xxP_outRoR;
Pred_yy(kk,:)=yyP_outRoR;

R_mean(kk)=mean(R);
R_std(kk)=std(R);
R_CV(kk)=R_std(kk)/R_mean(kk);

C_mean(kk)=mean(C);
C_std(kk)=std(C);
C_CV(kk)=C_std(kk)/C_mean(kk);

P_mean(kk)=mean(P);
P_std(kk)=std(P);
P_CV(kk)=P_std(kk)/P_mean(kk);

%% Flood Management
%PDF of Rf 
[yy,xx]=hist(R_flood,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxR_flood=xx; 
yyR_flood=yy; 

%PDF of Cf
[yy,xx]=hist(C_flood,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxC_flood=xx; 
yyC_flood=yy; 

%PDF of Pf
[yy,xx]=hist(P_flood,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxP_flood=xx; 
yyP_flood=yy; 

%save distributions for plotting
Res_xx_flood(kk,:)=xxR_flood;
Res_yy_flood(kk,:)=yyR_flood;
Cons_xx_flood(kk,:)=xxC_flood;
Cons_yy_flood(kk,:)=yyC_flood;
Pred_xx_flood(kk,:)=xxP_flood;
Pred_yy_flood(kk,:)=yyP_flood;

R_mean_flood(kk)=mean(R_flood);
R_std_flood(kk)=std(R_flood);
R_CV_flood(kk)=R_std_flood(kk)/R_mean_flood(kk);

C_mean_flood(kk)=mean(C_flood);
C_std_flood(kk)=std(C_flood);
C_CV_flood(kk)=C_std_flood(kk)/C_mean_flood(kk);

P_mean_flood(kk)=mean(P_flood);
P_std_flood(kk)=std(P_flood);
P_CV_flood(kk)=P_std_flood(kk)/P_mean_flood(kk);

%% Drought Management
%PDF of Rf 
[yy,xx]=hist(R_drought,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxR_drought=xx; 
yyR_drought=yy; 

%PDF of Cf
[yy,xx]=hist(C_drought,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxC_drought=xx; 
yyC_drought=yy; 

%PDF of Pf
[yy,xx]=hist(P_drought,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxP_drought=xx; 
yyP_drought=yy; 

%save distributions for plotting
Res_xx_drought(kk,:)=xxR_drought;
Res_yy_drought(kk,:)=yyR_drought;
Cons_xx_drought(kk,:)=xxC_drought;
Cons_yy_drought(kk,:)=yyC_drought;
Pred_xx_drought(kk,:)=xxP_drought;
Pred_yy_drought(kk,:)=yyP_drought;

R_mean_drought(kk)=mean(R_drought);
R_std_drought(kk)=std(R_drought);
R_CV_drought(kk)=R_std_drought(kk)/R_mean_drought(kk);

C_mean_drought(kk)=mean(C_drought);
C_std_drought(kk)=std(C_drought);
C_CV_drought(kk)=C_std_drought(kk)/C_mean_drought(kk);

P_mean_drought(kk)=mean(P_drought);
P_std_drought(kk)=std(P_drought);
P_CV_drought(kk)=P_std_drought(kk)/P_mean_drought(kk);

%% Natural Variability
%PDF of Rf 
[yy,xx]=hist(R_natvar,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxR_natvar=xx; 
yyR_natvar=yy; 

%PDF of Cf
[yy,xx]=hist(C_drought,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxC_natvar=xx; 
yyC_natvar=yy; 

%PDF of Pf
[yy,xx]=hist(P_drought,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxP_natvar=xx; 
yyP_natvar=yy; 

%save distributions for plotting
Res_xx_natvar(kk,:)=xxR_natvar;
Res_yy_natvar(kk,:)=yyR_natvar;
Cons_xx_natvar(kk,:)=xxC_natvar;
Cons_yy_natvar(kk,:)=yyC_natvar;
Pred_xx_natvar(kk,:)=xxP_natvar;
Pred_yy_natvar(kk,:)=yyP_natvar;

R_mean_natvar(kk)=mean(R_natvar);
R_std_natvar(kk)=std(R_natvar);
R_CV_natvar(kk)=R_std_natvar(kk)/R_mean_natvar(kk);

C_mean_natvar(kk)=mean(C_natvar);
C_std_natvar(kk)=std(C_natvar);
C_CV_natvar(kk)=C_std_natvar(kk)/C_mean_natvar(kk);

P_mean_natvar(kk)=mean(P_natvar);
P_std_natvar(kk)=std(P_natvar);
P_CV_natvar(kk)=P_std_natvar(kk)/P_mean_natvar(kk);

%% Minimum Flow
%PDF of Rf 
[yy,xx]=hist(R_minflo,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxR_minflo=xx; 
yyR_minflo=yy; 

%PDF of Cf
[yy,xx]=hist(C_minflo,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxC_minflo=xx; 
yyC_minflo=yy; 

%PDF of Pf
[yy,xx]=hist(P_minflo,50);
dx=xx(2)-xx(1);
yy=yy/(dx*sum(yy));
xxP_minflo=xx; 
yyP_minflo=yy; 

%save distributions for plotting
Res_xx_minflo(kk,:)=xxR_minflo;
Res_yy_minflo(kk,:)=yyR_minflo;
Cons_xx_minflo(kk,:)=xxC_minflo;
Cons_yy_minflo(kk,:)=yyC_minflo;
Pred_xx_minflo(kk,:)=xxP_minflo;
Pred_yy_minflo(kk,:)=yyP_minflo;

R_mean_minflo(kk)=mean(R_minflo);
R_std_minflo(kk)=std(R_minflo);
R_CV_minflo(kk)=R_std_minflo(kk)/R_mean_minflo(kk);

C_mean_minflo(kk)=mean(C_minflo);
C_std_minflo(kk)=std(C_minflo);
C_CV_minflo(kk)=C_std_minflo(kk)/C_mean_minflo(kk);

P_mean_minflo(kk)=mean(P_minflo);
P_std_minflo(kk)=std(P_minflo);
P_CV_minflo(kk)=P_std_minflo(kk)/P_mean_minflo(kk);