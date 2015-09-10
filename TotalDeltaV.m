Isp = ThrustMassData(4);

last = size(tout,1);

a = .5*(Ra(last) + Rp(last)) + R_planet;
Vap = sqrt((GM_planet/a)*((1-ecc(last))/(1+ecc(last))));
Vcir = sqrt(GM_planet/(TargetOrbit+R_planet));
TotalFuel = ThrustMassData(1)-ThrustMassData(2);
FuelLeft = Mass(last)-ThrustMassData(2);
DeltaVLeft = g0*Isp*log(Mass(last)/ThrustMassData(2));
DeltaVCir = Vcir - Vap;
FuelUsed = Mass(last)-Mass(last)/exp(DeltaVCir/(g0*Isp));
Burn1 = ThrustMassData(1) - Mass(last);
DeltaVAsc = g0*Isp*log(ThrustMassData(1)/Mass(last));
DeltaVTotal = DeltaVCir + DeltaVAsc;
FuelLeftOver = FuelLeft-FuelUsed;