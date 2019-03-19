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
w = 3000; %channel width (meters)

% Switched to Od_flood because it has no zeros
% Flow rate derived from outflow hydrograph
y = ((Od_flood.*n)./(sqrt(So)*w)).^(3/5);

% Normalize the depth
y_norm = y/max(y);
plot(y_norm)

% problem is that there are outflows that are 0, which generate a 0 river
% depth which then generates a negative resource concentration. How do i
% normalize this in a way that the river will not empty.