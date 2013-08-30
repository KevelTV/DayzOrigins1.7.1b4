/*

*/
private ["_playerID","_playerName","_object","_characterID","_timeout","_playerIDtoarray"];
_playerID = _this select 0;
_playerName = _this select 1;
_object = call compile format["player%1",_playerID];
_characterID =	_object getVariable ["characterID","0"];
_timeout = _object getVariable["combattimeout",0];

_playerIDtoarray = [];
_playerIDtoarray = toArray _playerID;

if (vehicle _object != _object) then {
	_object action ["eject", vehicle _object];
};

if (59 in _playerIDtoarray) exitWith { 	diag_log ("Exited"); };

if ((_timeout - time) > 0) then {
	//_playerName call player_combatLogged;
	//_playerName = name player;
	_timeout = _object getVariable["combattimeout",0];

	diag_log format["COMBAT LOGGED: %1 (%2)", _playerName,_timeout];
};

diag_log format["DISCONNECT: %1 (%2) Object: %3, _characterID: %4", _playerName,_playerID,_object,_characterID];
dayz_disco = dayz_disco - [_playerID];

if (isNull _object) exitWith { diag_log format["DISCONNECT ERROR : NO OBJECT!"];};

private["_debug","_distance"];
_debug = getMarkerpos "respawn_west";
_charPos 	= getPosATL _object;
//diag_log format ["_debugspS = %1",_debug];
_distance = _debug distance _charPos;
if (_distance < 250) exitWith { 
	diag_log format["DISCONNECT ERROR : Cannot Sync Player %1 [%2]. Position in debug! %3",_playerName,_characterID,_charPos];
};


if (!isNull _object) then {
//Update Vehicle
	{ [_x,"gear"] call server_updateObject } foreach 
		(nearestObjects [getPosATL _object, ["Car", "Helicopter", "Motorcycle", "Ship", "TentStorage", "TentStorageR", "wooden_shed_lvl_1","log_house_lvl_2","wooden_house_lvl_3","large_shed_lvl_1","small_house_lvl_2","big_house_lvl_3","small_garage","big_garage","object_x"], 10]);
	if (alive _object) then {
		[_object,[],true] call server_playerSync;
		// spawn bot, if player in combat mode
		diag_log format["BOTLOG spawn disco_playerMorph: %1 (%2) %3", _object,_playerID,_characterID];
		[_object,_playerID,_characterID,30] spawn disco_playerMorph;
		_id = [_playerID,_characterID,2] spawn dayz_recordLogin;
	};
};
