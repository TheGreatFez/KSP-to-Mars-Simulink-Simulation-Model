Planet = 'Earth'; % Choice between Earth and Mars

[R_planet,Omega_planet,AtmoAlt_planet,GM_planet,Planet] = PlanetParameters(Planet);

entry_angle = 6.5; % degrees
entry_speed = 11000; % m/s

Px = 0; % m
Py = R_planet+130000; % m

Vx = entry_speed*cosd(entry_angle); % m/s
Vy = -entry_speed*sind(entry_angle); % m/s

CraftInitialV = [Vx;Vy];
CraftInitialP = [Px;Py];

RefSurfArea = 4.975; % m^2
Cd = 3.65;
Mass = 5600; % kg

load 'DragData_3manCap.mat'
load 'EarthAtmoDataRSS.mat'