/*
	spawnTriggers_random

	Usage:
	
	Description: Spawns a specified number of dynamic triggers using DZAI_centerMarker as a reference marker. Three attempts are made per trigger to reduce trigger area overlap. 
				 These triggers have their positions randomized at a set interval by the dynamic trigger manager.

	Last updated: 8:45 PM 6/18/2013
*/
#include "\z\addons\dayz_server\DZAI\init\dyn_trigger_configs\dyn_trigger_defs.hpp"

private ["_numTriggers"];

if (!isServer) exitWith {};

_numTriggers = _this select 0;							//Number of triggers to create

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawning %1 dynamic triggers (spawnTriggers_random).",_numTriggers];};

for "_i" from 1 to _numTriggers do {
	private ["_trigger","_trigPos","_attempts"];
	_trigPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_attempts = 0;
	while {(({([_trigPos select 0,_trigPos select 1] distance _x) < (2*DZAI_dynTriggerRadius - 2*DZAI_dynTriggerRadius*DZAI_dynOverlap)} count DZAI_dynTriggerArray) > 0)&&(_attempts < 3)} do {
		sleep 0.5;
		_attempts = _attempts +1;
		_trigPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Calculated trigger position intersects with at least 1 other trigger (attempt %1/3).",_attempts];};
	};
	_trigger = createTrigger ["EmptyDetector",_trigPos];
	_trigger setTriggerArea [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [5, 7, 10, true];
	_trigger setTriggerStatements [DYNTRIG_STATEMENTS_INACTIVE];
	if (DZAI_debugMarkers > 0) then {
		private ["_markername","_marker"];
		_markername = format["trigger_%1",_trigger];
		_marker = createMarker[_markername,_trigPos];
		_marker setMarkerShape "ELLIPSE";
		_marker setMarkerType "Flag";
		_marker setMarkerBrush "SOLID";
		_marker setMarkerSize [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius];
		_marker setMarkerColor "ColorYellow";
		_marker setMarkerAlpha 0.8;		//Dark yellow = Trigger in ready state.
	};
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Dynamic trigger %1 of %2 spawned at %3 (spawnTriggers_random). Next trigger spawning in 5 seconds.",_i,_numTriggers,_trigPos];};
	DZAI_curDynTrigs = DZAI_curDynTrigs + 1;
	DZAI_dynTriggerArray set [(count DZAI_dynTriggerArray),_trigger];
	//diag_log format ["DEBUG :: Contents of DZAI_dynTriggerArray: %1.",DZAI_dynTriggerArray];
	sleep 1;
};
