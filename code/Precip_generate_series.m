function [P] = Precip_generate_series(freq,dep,Dur,Nday,dt)
%Generates sub-daily precipitation time series from modeled daily rainfall
Pr=[];
%----- Generate daily precipitation
[Pr]=precip_generate (freq,dep, Nday);
%----- Downscale it to sub-daily assuming precip. is distributed over 24h
t_day=[dt:dt:1];
M=length(t_day);
daydis=zeros(1,M);

I_c=find(t_day>dt & t_day<=Dur); %find locations where downscaled dt is > original dt and less than duration of a storm
daydis(I_c)=1; %Create a logical vector
daydis=daydis/sum(daydis);

P=[];
for i=1:Nday
    Ps=Pr(i)*daydis(1:M);
    P=[P Ps];
end

end

