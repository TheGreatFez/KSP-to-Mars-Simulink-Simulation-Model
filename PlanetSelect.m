Planet = 'Earth'; % Choice between Earth and Mars

[R_planet,Omega_planet,AtmoAlt_planet,GM_planet,Planet] = PlanetParameters(Planet);

entry_angle = 6.5; % degrees
entry_speed = 11000; % m/s

Px = 0; % m
Py = R_planet + 10; % m

X = [Px;Py;0];
Y = [0;0;Omega_planet];
Z = cross(X,Y);

Vx = Z(1); % m/s
Vy = Z(2); % m/s

CraftInitialV = [Vx;Vy];
CraftInitialP = [Px;Py];

RefSurfArea = 1.23; % m^2
Cd = 3.65;
%Mass = 5600; % kg
WetMass = 11600; % kg
DryMass = 3600; % kg 
load 'DragData_3manCap.mat'
load 'EarthAtmoDataRSS.mat'

g0 = 9.80665; % m/s^2 standard gravity
q0 = 1.1577; % kg/m^3