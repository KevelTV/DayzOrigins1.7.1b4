private ["_characterID","_minutes","_newObject","_playerID","_playerName","_source","_method","_humm_s","_distance","_sourceName","_humanity","_weapon","_playerIDk","_deathMessage","_key","_eh","_body"];
//[unit, weapon, muzzle, mode, ammo, magazine, projectile]
//[dayz_characterID,0,_body,_playerID,dayz_playerName,_source,_method];
_characterID = _this select 0;
_minutes = _this select 1;
_newObject = _this select 2;
_playerID = _this select 3;
_playerName	= _this select 4;
_source = _this select 5;
_method = _this select 6;
_humm_s = _this select 7;

private["_distance","_sourceName","_weapon","_deathMessage","_playerIDk"];
_distance = _newObject distance _source;
_sourceName = _source getVariable["bodyName","unknown"];
_humanity = _source getVariable["humanity",2500];
_weapon = currentWeapon _source;
_playerIDk = getPlayerUID _source;

//_deathMessage = format["%1 killed by %2 using (Weapon:%4) from (Distance:%3)",_playerName,_sourceName,round(_distance),_weapon];

if ( isNull _source || _source == _newObject ) then {
//diag_log format["%1 died. (zombie? suicide? bleed?)",_playerName];
diag_log format ["DeadMSG: %1(%6) died. -> %2(%7). Distance:%3 Weapon:%4 Method:%5",_playerName,_sourceName,_distance,_weapon,_method,_playerID,_playerIDk];
} else {
//_deathMessage = format["%1 killed by %2. Distance:%3 Weapon:%4 Method:%5",_playerName,_sourceName,_distance,_weapon,_method];
_deathMessage = format["%1 killed by %2 using (Weapon:%4) from (Distance:%3)",_playerName,_sourceName,round(_distance),_weapon];
//[nil, player,rtitleCut,_deathMessage,"PLAIN DOWN",1] call RE;
_source setVehicleInit format["titleText [""%1"", ""PLAIN DOWN"", 1];", _deathMessage];
processInitCommands;
clearVehicleInit _source;
diag_log format ["DeadMSG: %1(%6) killed by %2(%7). Distance:%3 Weapon:%4 Method:%5",_playerName,_sourceName,_distance,_weapon,_method,_playerID,_playerIDk];
_humanity = _humanity + _humm_s;
_source setVariable["humanity",_humanity,true];
// _weapon may be inaccurate
// _method is inaccurate
// TODO: ...
};


dayz_disco = dayz_disco - [_playerID];
_newObject setVariable["processedDeath",time];

/*
diag_log ("DW_DEBUG: (isnil _characterID): " + str(isnil "_characterID"));
if (isnil "_characterID") then {
diag_log ("DW_DEBUG: _newObject: " + str(_newObject));	
	};
*/

if (typeName _minutes == "STRING") then 
{
	_minutes = parseNumber _minutes;
};
	
if (_characterID != "0") then 
{
	_key = format["CHILD:202:%1:%2:",_characterID,_minutes];
	//diag_log format ["HIVE: WRITE: %1",_key];
	_key call server_hiveWrite;
} 
else 
{
	deleteVehicle _newObject;
};

diag_log ("PDEATH: Player Died " + _playerID);
/*
_eh = [_newObject] spawn {
	_body = _this select 0;
	_method = _body getVariable["deathType","unknown"];
	_name = _body getVariable["bodyName","unknown"];
	waitUntil{!isPlayer _body;sleep 1};
	_body setVariable["deathType",_method,true];
	_body setVariable["bodyName",_name,true];
	diag_log ("PDEATH: Player Left Body " + _name);
};
*/
//dead_bodyCleanup set [count dead_bodyCleanup,_newObject];
