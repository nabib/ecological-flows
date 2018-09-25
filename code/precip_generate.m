%--------------------------------------------------------------------------
%precip_generate.m generates random daily rainfall with 
%depth and interpulse durations from exponential distribution. 
%The daily precipitation approximates a marked Poisson process
%
%Pr = daily rainfall
%dep = rainfall depth (mm/d)
%freq = return frequency of rainfall (1/d)
%N = length of series to be generated (days)
%--------------------------------------------------------------------------
function [Pr]=precip_generate (freq,dep, N)
P=[];Pr=[];
P=zeros(1,N);
Pr=zeros(1,N);
t=[1:1:N]; %N is number of days

%--------- Generate Durations and Depth of Precipitation using Poisson dist
%is this the best? 

r=rand(1,N);
beta=freq;
tau=(-1/beta)*(log(1-r+eps));

beta=1/dep;
eta=(-1/beta)*(log(1-r+eps));

tt=cumsum(tau)-tau(1)+1;
tti=floor(tt);
P(tti)=eta;
Pr=P(1:N);


