/*
created by infiSTAR aka iniinfi
Repairs you and vehicle 15m around you
working at 19:22 10/10/12 UTC+1, Germany
*/
hint "repair.sqf executed";
/*ON PLAYER*/
(vehicle player) setvehicleammo 1;

myVeh = (vehicle player);

_hitpoints = myVeh call vehicle_getHitpoints;
{_selection = getText(configFile >> "cfgVehicles" >> typeOf myVeh >> "HitPoints" >> _x >> "name");
dayzSetFix = [myVeh, _selection, 0];
publicVariable "dayzSetFix";
if (local myVeh) then {dayzSetFix call object_setFixServer;};} forEach _hitpoints;


/*REMOTE STUFF*/
/*----------------------#YOU_CAN_CHANGE_THESE#----------------------------*/
distance = 100;
fuelQuantity = 1000;
/*----------------------#YOU_CAN_CHANGE_THESE#----------------------------*/

//xyzaa = (getPosATL player) nearObjects ["all", distance];
xyzaa = (getPosATL player) nearEntities [["Air","Car","Motorcycle","Tank","Ship"],distance];
{
_vehicle = _x;

_vehicle setvehicleammo 1;

/*repair method 1*/
_hitpoints = _vehicle call vehicle_getHitpoints;
{_selection = getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> _x >> "name");
dayzSetFix = [_vehicle, _selection, 0];
publicVariable "dayzSetFix";
if (local _vehicle) then {dayzSetFix call object_setFixServer;};} forEach _hitpoints;

_vehicle setvelocity [0,0,1];

/*refuel*/
_canSize = fuelQuantity;
_configVeh = 	configFile >> "cfgVehicles" >> TypeOf(_vehicle);
_capacity = 	getNumber(_configVeh >> "fuelCapacity");
_nameType = 	getText(_configVeh >> "displayName");
_curFuel = 		((fuel _vehicle) * _capacity);
_newFuel = 		(_curFuel + _canSize);

if (_newFuel > _capacity) then {_newFuel = _capacity};
_newFuel = (_newFuel / _capacity);

dayzSetFuel = [_vehicle,_newFuel];
dayzSetFuel spawn local_sefFuel;
publicVariable "dayzSetFuel";

call fnc_usec_medic_removeActions;
r_action = false;


_text = format["%1 vehicle repaired", xyzaa];
cutText [_text,"PLAIN DOWN"]; titleFadeOut 10;

} forEach xyzaa;