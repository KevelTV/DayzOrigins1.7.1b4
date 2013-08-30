infAmmoIndex = _this select 1;

while {(vars select infAmmoIndex) == "1"} do
{
	vehicle player setVehicleAmmo 0.99;
	sleep 0.01;
}




