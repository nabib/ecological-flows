%% Compute nutrient outflow relationship downstream from dam (TN, P, DO, Sed)
% --- compute sediment outflow relationship downstream from dam (units =
% tons/day for sediment, cfs for outflow)
OutF_model_cfs = [13000 8100 4600 2700 1400 830 420 250 190 155 127 105 81 51 25 13.5];
% convert Outflow to m3/d
OutF_model = (OutF_model_cfs * 0.0283168466)*(60*60*24);
Sed_model = [2700000 1600000 820000 425000 185000 93000 39000 19500 13600 10200 7500 5700 3800 1720 325 17.5];
s1 = polyfit(OutF_model,Sed_model,1);
slope1=s1(1);
intercept1=s1(2);
y_hat1=slope1*OutF_model+intercept1;
%plot (OutF_model,Sed_model,'bo')
%hold on
%plot (OutF_model,y_hat1,'k-')

%Data from Roanoke NWIS
A=load('nutrients.txt');
%--- Outflow (F)
F=A(:,1);
%--- Dissolved Oxygen (DO)
DO=A(:,2);
%--- Phosphorus (P)
P=A(:,3);
%--- Suspended Sediment (Sed)
Sed=A(:,4);
%--- Total Nitrogen (TN)
TN=A(:,5);

%% Linear Regression Regressions
% DO
s2 = polyfit(F,DO,1);
slope2=s2(1);
intercept2=s2(2);
y_hat2=slope2*F+intercept2;
%figure(1)
%plot (F,DO,'bo')
%hold on
%plot (F,y_hat2,'k-')

% P
s3 = polyfit(F,P,1);
slope3=s3(1);
intercept3=s3(2);
y_hat3=slope3*F+intercept3;
%figure(2)
%plot (F,P,'bo')
%hold on
%plot (F,y_hat3,'k-')

% Sed
s4 = polyfit(F,Sed,1);
slope4=s4(1);
intercept4=s4(2);
y_hat4=slope4*F+intercept4;
%figure(3)
%plot (F,Sed,'bo')
%hold on
%plot (F,y_hat4,'k-')

% TN
s5 = polyfit(F,TN,1);
slope5=s5(1);
intercept5=s5(2);
y_hat5=slope5*F+intercept5;
%figure(4)
%plot (F,TN,'bo')
%hold on
%plot (F,y_hat5,'k-')