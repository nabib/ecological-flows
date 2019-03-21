%--------------------------------------------------------------------------
%OutPhytRelation.m: Derives downstream search area given an
%                   outflow time series from the reservoir.
%
%Authors: Nicole Abib
%
%Date: 3/18/2019
%--------------------------------------------------------------------------
n=0.035; %manning's roughness coefficient for natural stream/major rivers
So = 0.01; %bedslope
w = 3; %channel width (meters)

% Switched to Od_flood because it has no zeros
% Flow rate derived from outflow hydrograph
y_natvar = ((Od_natvar.*n)./(sqrt(So)*w)).^(3/5);

% Normalize the depth by ymax for natvar
y_norm_natvar = y_natvar/max(y_natvar);
plot(y_norm_natvar)

%% Regular dam scenario

% Flow rate derived from outflow hydrograph
y = ((Od.*n)./(sqrt(So)*w)).^(3/5);

% Normalize the depth by ymax for natvar
y_norm = y/max(y_natvar);
plot(y_norm)

%% Flood management

% Flow rate derived from outflow hydrograph
y_flood = ((Od_flood.*n)./(sqrt(So)*w)).^(3/5);

% Normalize the depth by ymax for natvar
y_flood_norm = y_flood/max(y_natvar);
plot(y_flood_norm)

%% Drought management

% Flow rate derived from outflow hydrograph
y_drought = ((Od_drought.*n)./(sqrt(So)*w)).^(3/5);

% Normalize the depth by ymax for natvar
y_drought_norm = y_drought/max(y_natvar);
plot(y_drought_norm)

%% Minimum flow

% Flow rate derived from outflow hydrograph
y_minflo = ((Od_minflo.*n)./(sqrt(So)*w)).^(3/5);

% Normalize the depth by ymax for natvar
y_minflo_norm = y_flood/max(y_minflo);
plot(y_minflo_norm)