/*
	fn_findKiller
	
	Description: If an AI unit is killed, surviving members of their group will aggressively pursue the killer for a set amount of time. After this amount of time has passed, the group will return to their patrol state.
	
	Last updated: 7:22 PM 8/11/2013
*/
private ["_killerPos","_unitGroup","_victim","_killer","_inPursuit","_trigger","_detectRange","_chaseDist"];

sleep 1;

_victim = _this select 0;
_killer = _this select 1;
_unitGroup = _this select 2;

_groupSize = _unitGroup getVariable ["groupSize",0];
if (_groupSize == 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: All units in group are dead. (fn_findKiller)";};};

_inPursuit = _unitGroup getVariable ["inPursuit",false];
if (_inPursuit) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Group is already in pursuit of a target. (fn_findKiller)";};};

_trigger = (group _victim) getVariable "trigger";

//Calculate detection range.
_detectRange = (350 + (random 100) - (random 100)); //Min: 250, Max: 450

if (((_victim distance _killer) < _detectRange) && (_killer isKindOf "Man")) then {
	private["_endTime"];
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Group %1 has entered pursuit state. Target: %2. (fn_findKiller)",_unitGroup,_killer];};
	_unitGroup setVariable ["inPursuit",true];
	_unitGroup reveal [_killer,4];
	(units _unitGroup) doTarget _killer;
	(units _unitGroup) doFire _killer;
	
	//Calculate maximum pursuit range, using victim's location as origin.
	_chaseDist = (400 + (random 100)); //Min: 400, Max: 500
	
	//Temporarily cancel patrol state.
	_unitGroup lockWP true;
	
	_endTime = (time + 120);
	//Begin pursuit state.
	while {(time < _endTime) && (alive _killer) && ((_unitGroup getVariable "groupSize") > 0) && !(isNull _killer) && !(isNull _unitGroup) && ((_trigger distance _killer) < _chaseDist) && (_killer isKindOf "Man")} do {
		_killerPos = getPos _killer;
		{if (alive _x) then {_x moveTo _killerPos; _x doMove _killerPos; /*diag_log "AI unit in pursuit.";*/};} forEach (units _unitGroup);
		if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: AI group %3 in pursuit state. Time: %1/%2.",time,_endTime,_unitGroup];};
		if (_killer hasWeapon "ItemRadio") then {
			[nil,_killer,"loc",rTITLETEXT,"[RADIO] You are being pursued by a group of bandits.","PLAIN DOWN",0] call RE;
		};
		sleep 15;
	};

	//End of pursuit state. Re-enable patrol state.
	_unitGroup setVariable ["inPursuit",false];
	_unitGroup lockWP false;
	_unitGroup setCurrentWaypoint ((waypoints _unitGroup) call BIS_fnc_selectRandom2);
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Pursuit state ended for group %1. Returning to patrol state. (fn_findKiller)",_unitGroup];};
	
	sleep 5;
	if (_killer hasWeapon "ItemRadio") then {
		[nil,_killer,"loc",rTITLETEXT,"[RADIO] The bandits have given up their pursuit.","PLAIN DOWN",0] call RE;
	};
	_unitGroup setBehaviour "AWARE";
};
