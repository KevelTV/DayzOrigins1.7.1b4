/*
	spawnBandits_dynamic

	Usage: Called by an activated dynamic trigger when a player unit enters the trigger area.
	
	Description: Spawns a group of AI units some distance from a dynamically-spawned trigger. These units do not respawn after death.
	
	Last updated: 4:45 PM 8/10/2013
*/
#include "\z\addons\dayz_server\DZAI\init\dyn_trigger_configs\dyn_trigger_defs.hpp"

private ["_patrolDist","_trigger","_totalAI","_unitGroup","_targetPlayer","_unitArray","_playerArray","_playerPos","_playerCount","_spawnPosition","_spawnPos","_nearbyTriggers","_findPlayer","_startTime","_nearbyPlayers","_revealLevel","_baseDist","_distVariance"];
if (!isServer) exitWith {};

_patrolDist = _this select 0;
_trigger = _this select 1;
_unitArray = _this select 2;

if (surfaceIsWater (getPosATL _trigger)) exitWith {
	_newPos = _trigger call DZAI_relocDynTrigger;
	if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Could not find suitable location to spawn AI units, relocating trigger to position %1. (spawnBandits_dynamic)",_newPos];};
	if (DZAI_debugMarkers > 0) then {
		private["_marker"];
		_marker = format["trigger_%1",_trigger];
		_marker setMarkerPos _newPos;
	};
};

if (count (_trigger getVariable ["GroupArray",[]]) > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_dynamic)";};};	

_startTime = diag_tickTime;

//Build list of player units within trigger area. A player is randomly chosen from the array. If the player is not over water, then the trigger is moved to surround them and their position is used as a reference point for spawning AI.
_playerArray = [];
{
	if (isPlayer _x) then {
		_playerArray set [(count _playerArray),_x];	
	};
} forEach _unitArray;

//if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: %1 units within trigger area. %2 are players. (spawnBandits_dynamic)",(count _unitArray),_playerCount];};

_targetPlayer = _playerArray call BIS_fnc_selectRandom2;
_playerPos = getPosATL _targetPlayer;

//Count number of players close to the targeted player.
_nearbyPlayers = _playerPos nearEntities [["AllVehicles","CAManBase"],100];
_playerCount = {isPlayer _x} count _nearbyPlayers;
if (_playerCount > 6) then {
	_nearbyPlayers resize 6;
};
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Counted %1 players within 100m of target player (spawnBandits_dynamic)",_playerCount];};

_findPlayer = true;
if !(surfaceIsWater [_playerPos select 0,_playerPos select 1]) then {
	_trigger setPosATL _playerPos;									
	_spawnPosition = _playerPos;
	//Don't hunt player if they are in a vehicle
	if !(_targetPlayer isKindOf "Man") then {
		_findPlayer = false;
		//diag_log format ["DEBUG :: Target player %1 is in a vehicle.",_targetPlayer];
	};
} else {
	//Don't hunt player if they are over water
	_spawnPosition = getPosATL _trigger;
	_findPlayer = false;
	//diag_log "DEBUG :: Target player is over water.";
};

//Calculate number of AI to spawn. Equation: (number of players in 100m radius) + (random number between 0-2). Maximum AI spawned: 6.
_totalAI = ((_playerCount + floor (random 3)) min 6);

//Reduce number of AI spawned if trigger area intersects another activated trigger to avoid overwhelming AI spawns.
_nearbyTriggers = ({((_trigger distance _x) < ((triggerArea _trigger) select 0))&&(triggerActivated _x)} count DZAI_dynTriggerArray) - 1;
if (_nearbyTriggers > 0) then {
	_totalAI = 1;
	if (DZAI_debugLevel > 0) then {diag_log format ["DEBUG :: Counted %1 other triggers within %2 meters. Number of AI to spawn reduced to %3.",_nearbyTriggers,((triggerArea _trigger) select 0),_totalAI];};
};

//No more exitWith statements, so trigger is committed to spawning at this point.
if (DZAI_debugMarkers > 0) then {
	private["_marker"];
	_marker = format["trigger_%1",_trigger];
	_marker setMarkerPos _spawnPosition;
	_marker setMarkerColor "ColorOrange";
	_marker setMarkerAlpha 0.9;				//Dark orange: Activated trigger
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Processed dynamic trigger spawn data in %1 seconds (spawnBandits_dynamic).",(diag_tickTime - _startTime)];};

_startTime = diag_tickTime;
_baseDist = 200;
_distVariance = 50;

//Spawn units
_spawnPos = [_spawnPosition,(_baseDist + random (_distVariance)),random(360),true] call SHK_pos;
_unitGroup = [_totalAI,grpNull,_spawnPos,_trigger] call fnc_createGroup;

//Set group variables
_unitGroup setVariable ["unitType",1];
_unitGroup setVariable ["trigger",_trigger];
_unitGroup allowFleeing 0;
	
//Reveal target player and nearby players to AI.
_revealLevel = (1.5 + random (2.5));
{_unitGroup reveal [_x,_revealLevel]} forEach _nearbyPlayers;
(units _unitGroup) doTarget _targetPlayer;
(units _unitGroup) doFire _targetPlayer;

//Update AI count
DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size %2.",_unitGroup,_totalAI];};

if (_findPlayer) then {
	//Travel to player's position, then begin patrol.
	0 = [_unitGroup,_spawnPos,_patrolDist,_targetPlayer] spawn fnc_seekPlayer;
	//diag_log "DEBUG :: Seeking target player.";
} else {
	//Begin patrol immediately.
	0 = [_unitGroup,_spawnPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	//diag_log "DEBUG :: Beginning patrol.";
};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned 1 new AI groups of %1 units each in %2 seconds (spawnBandits_dynamic).",_totalAI,(diag_tickTime - _startTime)];};

0 = [_trigger,[_unitGroup]] call fnc_initTrigger;
//diag_log format ["DEBUG :: _trigger %1, groupArray %2, _total AI %3.",_trigger,_grpArray,_totalAI];
//Prevent player(s) from causing despawn by entering an air vehicle.
_trigger setTriggerStatements [DYNTRIG_STATEMENTS_ACTIVE];

true
