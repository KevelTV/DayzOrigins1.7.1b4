private ["_character","_magazines","_force","_characterID","_charPos","_isInVehicle","_timeSince","_humanity","_debug","_debugspS","_distance","_isNewMed","_isNewPos","_isNewGear","_basebbm","_playerIDs","_bbases","_playerID","_playerPos","_playerGear","_playerBackp","_medical","_distanceFoot","_PlayerID","_bb_baseserver","_player","_lastPos","_backpack","_kills","_killsB","_killsH","_headShots","_lastTime","_timeGross","_timeLeft","_currentWpn","_currentAnim","_config","_onLadder","_isTerminal","_wpnDisabled","_currentModel","_modelChk","_muzzles","_temp","_currentState","_array","_key","_pos"];
//[player,array]
diag_log ("UPDATE: " + str(_this) );

//waituntil {(typeName(_this) == "ARRAY");sleep 0.01;};	//seems to cause often infinite waits (but not for first n players)

if ( typeName(_this) == "OBJECT" ) then {
	_this = [_this,[],true];
	//diag_log ("DW_DEBUG: #manual fix _this: " + str(_this));
};

//correct
//"UPDATE: [B 1-1-B:1 (THE BEAST) REMOTE,[],true]"
//error
//"UPDATE: B 1-1-B:1 (THE BEAST) REMOTE"

_character = 	_this select 0;
_magazines =	_this select 1;
_force =	_this select 2;
_force =	true;


_characterID =	_character getVariable ["characterID","0"];
_charPos = 		getPosATL _character;
_isInVehicle = 	vehicle _character != _character;
_timeSince = 	0;
_humanity =		0;

//diag_log ("DW_DEBUG: (isnil _characterID): " + str(isnil "_characterID"));
/*
if !(isnil "_characterID") then {
diag_log ("DW_DEBUG: _characterID: " + str(_characterID));
};
*/

if (_character isKindOf "Animal") exitWith {
	diag_log ("ERROR: Cannot Sync Character " + (name _character) + " is an Animal class");
};

if (isnil "_characterID") exitWith {
	diag_log ("ERROR: Cannot Sync Character " + (name _character) + " has nil characterID");	
};

if (_characterID == "0") exitWith {
	diag_log ("ERROR: Cannot Sync Character " + (name _character) + " as no characterID");
};

private["_debug","_distance"];
_debug = getMarkerpos "respawn_west";
//diag_log format ["_debugspS = %1",_debug];
_distance = _debug distance _charPos;
if (_distance < 150) exitWith { 
	diag_log format["ERROR: server_playerSync: Cannot Sync Player %1 [%2]. Position in debug! %3",name _character,_characterID,_charPos];
	endLoadingScreen;
};

//Check for server initiated updates
_isNewMed =		_character getVariable["medForceUpdate",false];		//Med Update is forced when a player receives some kind of med incident
_isNewPos =		_character getVariable["posForceUpdate",false];		//Med Update is forced when a player receives some kind of med incident
_isNewGear =	(count _magazines) > 0;

//diag_log ("Starting Save... MED: " + str(_isNewMed) + " / POS: " + str(_isNewPos));
_basebbm = {
	_playerIDs = _this select 0;
	_bbases = [];
	//bandit
	if (_playerID in bb_base_level1b) then { _bbases set [0,1]; } else { _bbases set [0,0]; };
	if (_playerID in bb_base_level2b) then { _bbases set [1,1]; } else { _bbases set [1,0]; };
	if (_playerID in bb_base_level3b) then { _bbases set [2,1]; } else { _bbases set [2,0]; };
	//hero
	//if (_playerID in bb_base_level1h) then { _bbase set [3,1]; };
	//if (_playerID in bb_base_level2h) then { _bbase set [4,1]; };
	//if (_playerID in bb_base_level3h) then { _bbase set [5,1]; };
	//garage
	if (_playerID in bb_base_level1g) then { _bbases set [3,1]; } else { _bbases set [3,0]; };
	if (_playerID in bb_base_level2g) then { _bbases set [4,1]; } else { _bbases set [4,0]; };

	if (_playerID in bb_base_level1f) then { _bbases set [5,1]; } else { _bbases set [5,0]; };
	if (_playerID in bb_base_level2f) then { _bbases set [6,1]; } else { _bbases set [6,0]; };
	if (_playerID in bb_base_level3f) then { _bbases set [7,1]; } else { _bbases set [7,0]; };
_bbases;
};
//Check for player initiated updates
if (_characterID != "0") then {
	_playerPos =	[];
	_playerGear =	[];
	_playerBackp =	[];
	_medical =		[];
	_distanceFoot =	0;
	_PlayerID = getPlayerUID _character;
	_bb_baseserver = [_playerID] call _basebbm;
	diag_log format ["_PlayerID=%1,_bb_baseserver=%2,_character=%3",_PlayerID,_bb_baseserver,_character];
	_character setVariable["bb_base",_bb_baseserver,true];
	
	//diag_log ("Found Character...");
	
	//Check if update is requested
	if (_isNewPos or _force) then {
		//diag_log ("position..." + str(_isNewPos) + " / " + str(_force)); sleep 0.05;
		if (((_charPos select 0) == 0) and ((_charPos select 1) == 0)) then {
			//Zero Position
		} else {
			//diag_log ("getting position..."); sleep 0.05;
			_playerPos = 	[round(direction _character),_charPos];
			_lastPos = 		_character getVariable["lastPos",_charPos];
			if (count _lastPos > 2 and count _charPos > 2) then {
				if (!_isInVehicle) then {
					_distanceFoot = round(_charPos distance _lastPos);
				};
				_character setVariable["lastPos",_charPos];
			};
			if (count _charPos < 3) then {
				_playerPos =	[];
			};
			//diag_log ("position = " + str(_playerPos)); 
		};
		_character setVariable ["posForceUpdate",false,true];
	};
	if (_isNewGear) then {
		//diag_log ("gear..."); 
		_playerGear = [weapons _character,_magazines];
		_backpack = unitBackpack _character;
		_playerBackp = [typeOf _backpack,getWeaponCargo _backpack,getMagazineCargo _backpack];
	};
	if (_isNewMed or _force) then {
		//diag_log ("medical..."); 
		if (!(_character getVariable["USEC_isDead",false])) then {
			//diag_log ("medical check..."); sleep 0.05;
			_medical = _character call player_sumMedical;
			//diag_log ("medical result..." + str(_medical)); sleep 0.05;
		};
		_character setVariable ["medForceUpdate",false,true];
	};
	
	//Process update
	if (_characterID != "0") then {		
		//Record stats while we're here		
		/*
			Check previous stats against what client had when they logged in
			this helps prevent JIP issues, where a new player wouldn't have received
			the old players updates. Only valid for stats where clients could have
			be recording  results from their local objects (such as agent zombies)
		*/
		_kills = 		["zombieKills",_character] call server_getDiff;
		_killsB = 		["banditKills",_character] call server_getDiff;
		_killsH = 		["humanKills",_character] call server_getDiff;
		_headShots = 	["headShots",_character] call server_getDiff;
		_humanity = 	["humanity",_character] call server_getDiff2;
		//_humanity = 	_character getVariable ["humanity",0];
		_character addScore _kills;		
		/*
			Assess how much time has passed, for recording total time on server
		*/
		_lastTime = 	_character getVariable["lastTime",time];
		_timeGross = 	(time - _lastTime);
		_timeSince = 	floor(_timeGross / 60);
		_timeLeft =		(_timeGross - (_timeSince * 60));
		/*
			Get character state details
		*/
		_currentWpn = 	currentMuzzle _character;
		_currentAnim =	animationState _character;
		_config = 		configFile >> "CfgMovesMaleSdr" >> "States" >> _currentAnim;
		_onLadder =		(getNumber (_config >> "onLadder")) == 1;
		_isTerminal = 	(getNumber (_config >> "terminal")) == 1;
		//_wpnDisabled =	(getNumber (_config >> "disableWeapons")) == 1;
		_currentModel = typeOf _character;
		_modelChk = 	_character getVariable ["model_CHK",""];
		if (_currentModel == _modelChk) then {
			_currentModel = "";
		} else {
			_currentModel = str(_currentModel);
			_character setVariable ["model_CHK",typeOf _character];
		};
		
		if (_onLadder or _isInVehicle or _isTerminal) then {
			_currentAnim = "";
			//If position to be updated, make sure it is at ground level!
			if ((count _playerPos > 0) and !_isTerminal) then {
				_charPos set [2,0];
				_playerPos set[1,_charPos];					
			};
		};
		if (_isInVehicle) then {
			_currentWpn = "";
		} else {
			if ( typeName(_currentWpn) == "STRING" ) then {
			_muzzles = getArray(configFile >> "cfgWeapons" >> _currentWpn >> "muzzles");
			if (count _muzzles > 1) then {
				_currentWpn = currentMuzzle _character;
			};	
			} else {
				//diag_log ("DW_DEBUG: _currentWpn: " + str(_currentWpn));
			_currentWpn = "";
				};
		};
		_temp = round(_character getVariable ["temperature",100]);
		_currentState = [_currentWpn,_currentAnim,_temp];
		/*
			Everything is ready, now publish to HIVE
		*/
		if (count _playerPos > 0) then {
			_array = [];
			{
				if (_x < 25600) then { 								//if (_x > -20000 and _x < 20000) then {
					_array set [count _array,_x];
				};
			} forEach (_playerPos select 1);
			_playerPos set [1,_array];
		};
		if (!isNull _character) then {
			if (alive _character) then {
				//Wait for HIVE to be free
				//Send request
				_key = format["CHILD:201:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:",_characterID,_playerPos,_playerGear,_playerBackp,_medical,false,false,_kills,_headShots,_distanceFoot,_timeSince,_currentState,_killsH,_killsB,_currentModel,_humanity];
				//diag_log ("HIVE: WRITE: "+ str(_key) + " / " + _characterID);
				_key call server_hiveWrite;
			};
		};
		
		// If player is in a vehicle, keep its position updated
		if (vehicle _character != _character) then {
			[vehicle _character, "position"] call server_updatObiect;
		};
		
		// Force gear updates for nearby vehicles/tents
		_pos = _this select 0;
		{
			[_x, "all"] call server_updatObiect;
			diag_log ("Gear Update");
		} forEach nearestObjects [_pos, ["Car", "Helicopter", "Motorcycle", "Ship", "TentStorage", "TentStorageR","wooden_shed_lvl_1","log_house_lvl_2","wooden_house_lvl_3","large_shed_lvl_1","small_house_lvl_2","big_house_lvl_3","small_garage","big_garage"], 10];
		//[_charPos] call server_updateNearbyObjects;

		//Reset timer
		if (_timeSince > 0) then {
			_character setVariable ["lastTime",(time - _timeLeft)];
		};
	};
};