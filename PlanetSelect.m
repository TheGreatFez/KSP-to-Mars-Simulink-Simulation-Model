Planet = 'Earth'; % Choice between Earth and Mars
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
Py = R_planet; % m

X = [Px;Py;0];
Y = [0;0;Omega_planet];
Z = cross(X,Y);

Vx = Z(1); % m/s
Vy = Z(2); % m/s

CraftInitialV = [Vx;Vy];
CraftInitialP = [Px;Py];

RefSurfArea = 7.06; % m^2
Cd = .15;
%Mass = 5600; % kg
WetMass = 7100; % kg
DryMass = 3100; % kg 

g0 = 9.80665; % m/s^2 standard gravity
q0 = 1.1577; % kg/m^3