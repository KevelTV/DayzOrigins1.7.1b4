/*
		fnc_banditAIKilled
		
		Description: Adds loot to AI corpse if killed by a player. Script is shared between AI spawned from static and dynamic triggers.
		
        Usage: [_unit,_killer] spawn fnc_banditAIKilled;
		
		Last updated: 8:57 PM 7/26/2013
*/

private["_victim","_killer","_unitGroup","_groupSize","_victimName"];
_victim = _this select 0;
_killer = _this select 1;
_unitGroup = _this select 2;

//Remove temporary NVGs.
if ((_victim getVariable["removeNVG",0]) == 1) then {_victim removeWeapon "NVGoggles";}; //Remove temporary NVGs from AI.

//Set study_body variables.
_victimName = typeOf _victim;
_victim setVariable["bodyName",_victimName,true];
_victim setVariable["deathType","bled",true];

//Update AI count
_groupSize = _unitGroup getVariable "groupSize";
_groupSize = _groupSize - 1;
DZAI_numAIUnits = DZAI_numAIUnits - 1;
_unitGroup setVariable ["groupSize",_groupSize];
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size: %2.",_unitGroup,_groupSize];};

if (!isPlayer _killer) exitWith {};
private ["_trigger","_gradeChances"];

_unitGroup setBehaviour "COMBAT";
if (DZAI_findKiller) then {0 = [_victim,_killer,_unitGroup] spawn fnc_findKiller;};

_trigger = _unitGroup getVariable "trigger";
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
if (isNil "_gradeChances") then {_gradeChances = DZAI_gradeChances1};

_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
0 = [_victim,_weapongrade] spawn fnc_addLoot;

if (DZAI_humanityGain > 0) then {
	private ["_humanity"];
	_humanity = _killer getVariable["humanity",0];
	_killer setVariable ["humanity",(_humanity + DZAI_humanityGain),true];
};
