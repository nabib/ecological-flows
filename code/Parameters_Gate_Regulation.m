function [alpha_outflow,beta_outflow]=Parameters_Gate_Regulation(frac_gate)
g=9.81;
%----------------------- Reservoir Properties -----------------------------
L=2000;                         % Length of reservoir (m) - stays
Hmax=22;                        % Maximum water level (m) - stays
Vcapacity=402712000;            % Maximum capacity (m3) - stays
W=Vcapacity/(Hmax*L);           % Estimated width (m) - stays
Aplanar=L*W;                    % Planar area of reservoir (m2) - stays
hgate=0.2*Hmax;                 % Operational gates are about 0.2 Hmax - vary based on reservoir operating scheme
Ao=W*(hgate)*frac_gate;
% Estimate open area of discharge (m2) - vary based on reservoir operating scheme
% Parameters of storage outflow relation O = (2g/LW)^(1/2) S^(beta)
alpha_outflow=Ao*(2*g/Aplanar)^(1/2); 
beta_outflow=0.5; % kinetic energy(-frictional losses?)
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%----------------------- Watershed area 
Area_WS=50;                    % Watershed contributing to inflow (km2)
%ftp://ftp.odot.state.or.us/techserv/Geo-Environmental/Hydraulics/Hydraulics%20Manual/Chapter_07/Chapter_07_appendix_F/CHAPTER_07_appendix_F.pdf
C_runoff=0.5;                  % Runoff coefficient, varies with LU
