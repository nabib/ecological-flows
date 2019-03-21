%--------------------------------------------------------------------------
%NitPhytRelation.m: Derives downstream nitrate concentration given an
%                   outflow time series from the reservoir.
%
%Authors: Nicole Abib
%
%Date: 3/18/2019
%--------------------------------------------------------------------------

%% Regular Dam Scenario
nitrate = C;
phi1 = 3284.239;
phi2 = -45.14348;
phi3 = 185.6056;
x = [min(nitrate):(max(nitrate)-min(nitrate))/7300000:max(nitrate)];
min(nitrate)
max(nitrate)
phyt = phi1./(1+exp(-(phi2+phi3.*x)));

subplot(2,3,1)
%figure(1)
plot(x,phyt)
xlabel("Nitrate (mg/L)")
ylabel("Phytoplankton (cells/mL)")
hold on

%% Flood Management
nitrate = C_flood;
phi1 = 3284.239;
phi2 = -45.14348;
phi3 = 185.6056;
x = [min(nitrate):(max(nitrate)-min(nitrate))/7300000:max(nitrate)];
phyt = phi1./(1+exp(-(phi2+phi3.*x)));
min(nitrate)
max(nitrate)

subplot(2,3,2)
%figure(2)
plot(x,phyt)
xlabel("Nitrate (mg/L)")
ylabel("Phytoplankton (cells/mL)")
hold on
%% Drought Management
nitrate = C_drought;
phi1 = 3284.239;
phi2 = -45.14348;
phi3 = 185.6056;
x = [min(nitrate):(max(nitrate)-min(nitrate))/7300000:max(nitrate)];
phyt = phi1./(1+exp(-(phi2+phi3.*x)));
min(nitrate)
max(nitrate)

subplot(2,3,3)
%figure(3)
plot(x,phyt)
xlabel("Nitrate (mg/L)")
ylabel("Phytoplankton (cells/mL)")
hold on
%% Natural Variability: Outflow equals Inflow.
nitrate = C_natvar;
phi1 = 3284.239;
phi2 = -45.14348;
phi3 = 185.6056;
x = [min(nitrate):(max(nitrate)-min(nitrate))/7300000:max(nitrate)];
phyt = phi1./(1+exp(-(phi2+phi3.*x)));
min(nitrate);
max(nitrate);

subplot(2,3,4)
%figure(4)
plot(x,phyt)
xlabel("Nitrate (mg/L)")
ylabel("Phytoplankton (cells/mL)")
hold on
%% Minimum Flow
nitrate = C_minflo;
phi1 = 3284.239;
phi2 = -45.14348;
phi3 = 185.6056;
x = [min(nitrate):(max(nitrate)-min(nitrate))/7300000:max(nitrate)];
phyt = phi1./(1+exp(-(phi2+phi3.*x)));
min(nitrate)
max(nitrate)

%figure(5)
subplot(2,3,5)
plot(x,phyt)
xlabel("Nitrate (mg/L)")
ylabel("Phytoplankton (cells/mL)")
hold off