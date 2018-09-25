function [UH] = Generate_Unit_Hydrograph(a,b,TTmax,dt)
% The hydrograph is assumed to be gamma distributed
aa=a-1;
Const=((b^a)*gamma(a))^(-1);
th=[dt/2:dt:TTmax];
Nhyd=length(th);
UH=(Const*(th.^aa).*exp(-th/b));
end

