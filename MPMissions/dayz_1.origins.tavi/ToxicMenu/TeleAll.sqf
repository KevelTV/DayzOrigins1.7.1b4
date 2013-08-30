telegps_RANDSTR = 
{
	hint "Tele-GPS Enabled";
	hint "Alt + Click on map to teleport";
	_config = "itemGPS";_isOK = [player,_config] call BIS_fnc_invAdd;
	player setVariable ["lastPosition", monky];
	player setVariable ["lastTimes", monky];
	if !("ItemMap" in items player) then {player addWeapon "ItemMap"};
	(findDisplay 46) displayAddEventHandler ["KeyDown", "altstate = _this select 4"];
	((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonUp", "if (((_this select 1) == 0) && altstate) then
	{
		_bowenpos = (_this select 0) posScreenToWorld [_this select 2, _this select 3];
		[_bowenpos] spawn bowonkytp_RANDSTR;
	};"];
	bowonkytp_RANDSTR =
	{
		_mylastPos = (_this select 0);
		player setPosATL _mylastPos;
	};
};