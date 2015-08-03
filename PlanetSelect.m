Planet = 'Mars'; % Choice between Earth and Mars
load 'DragData_3manCap.mat'
load 'EarthAtmoDataRSS.mat'
load 'Mars Atmo Data.mat'
[R_planet,Omega_planet,AtmoAlt_planet,GM_planet,Planet] = PlanetParameters(Planet);

if strcmp('Earth',Planet) == 1
    AtmoData = EarthAtmoDataRSS;
elseif strcmp('Mars',Planet) == 1
    AtmoData = MarsAtmoDataRSS;
else
    AtmoData = 0;   
end


entry_angle = 6.5; % degrees
entry_speed = 11000; % m/s

Px = 0; % m
Py = 3600000; % m

X = [Px;Py;0];
Y = [0;0;Omega_planet];
Z = cross(X,Y);

Vx = sqrt(GM_planet/Py)-100; % m/s
Vy = 0; % m/s

CraftInitialV = [Vx;Vy];
CraftInitialP = [Px;Py];

RefSurfArea = 1; % m^2
Cd = 1;
%Mass = 5600; % kg
WetMass = 10000; % kg
DryMass = 0; % kg 

g0 = 9.80665; % m/s^2 standard gravity
q0 = 1.1577; % kg/m^3