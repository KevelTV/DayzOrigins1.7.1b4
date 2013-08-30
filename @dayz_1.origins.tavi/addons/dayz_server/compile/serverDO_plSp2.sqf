private["_characterID","_playerObj","_playerID","_selectedRegion","_arr_spawnPos","_slevel","_bbase","_selectedRegionV","_selectedRegion1","_dummy","_worldspace","_state","_doLoop","_key","_primary","_medical","_stats","_humanity","_randomSpot","_position","_debug","_distance","_distSB","_hit","_fractures","_score","_selectedRegionRandom","_findSpot","_isNear","_clientID"];

//Set Variables
//Wait for HIVE to be free
//diag_log ("SETUP: attempted with " + str(_this));
_characterID = _this select 0;
_playerObj = _this select 1;
_playerID = getPlayerUID _playerObj;
_selectedRegion = 0;
_arr_spawnPos = [];
_slevel = 0;
_bbase = [];

_selectedRegionV = _this select 4;
if (_selectedRegionV==1) then { 
		_selectedRegion = _this select 3; 
			diag_log ("_selectedRegion1=" + str(_selectedRegion));
			
};
if (isNull _playerObj) exitWith { 
	diag_log ("SETUP INIT FAILED: Exiting, player object null: " + str(_playerObj));
};

if (_playerID == "") then {
	_playerID = getPlayerUID _playerObj;
};

if (_playerID == "") exitWith {
	diag_log ("SETUP INIT FAILED: Exiting, no player ID: " + str(_playerObj));
};

private["_dummy"];
_dummy = getPlayerUID _playerObj;
if ( _playerID != _dummy ) then { 
	diag_log format["DEBUG: _playerID miscompare with UID! _playerID:%1",_playerID]; 
	_playerID = _dummy;
};

//Variables
_worldspace = 	[];


_state = 		[];

//Do Connection Attempt
_doLoop = 0;
while {_doLoop < 5} do {
	_key = format["CHILD:102:%1:",_characterID];
	//diag_log format ["serverDO_plSp = %1",_key];
	_primary = [_key,false,dayZ_hivePipeAuth] call server_hiveReadWrite;
	if (count _primary > 0) then {
		if ((_primary select 0) != "ERROR") then {
			_doLoop = 9;
		};
	};
	_doLoop = _doLoop + 1;
};

if (isNull _playerObj or !isPlayer _playerObj) exitWith {
	diag_log ("SETUP RESULT: Exiting, player object null: " + str(_playerObj));
};

//Wait for HIVE to be free
diag_log  format ["SETUP: RESULT: Successful with %1",_primary];

_medical =		_primary select 1;
_stats =		_primary select 2;
_state =		_primary select 3;
_worldspace = 	_primary select 4;
_humanity =		_primary select 5;

//Set position
_randomSpot = false;

//diag_log ("WORLDSPACE: " + str(_worldspace));

if (count _worldspace > 0) then {

	_position = 	_worldspace select 1;
	if (count _position < 3) then {
		//prevent debug world!
		_randomSpot = true;
		_selectedRegionV = 3;
	};
	_debug = getMarkerpos "respawn_west";
	_distance = _debug distance _position;
	if (_distance < 250) then {
		_randomSpot = true;
		_selectedRegionV = 3;
	};
	
	_distSB = [22600,19600,0] distance _position;
	if (_distSB < 1000) then {
		_randomSpot = true;
		_selectedRegionV = 3;
		diag_log ("Sector B _distSB =" + str(_distSB));
	};
	
	//_playerObj setPosATL _position;
} else {
	_randomSpot = true;
};

//diag_log ("LOGIN: Location: " + str(_worldspace) + " doRnd?: " + str(_randomSpot));

//set medical values
if (count _medical > 0) then {
	_playerObj setVariable["USEC_isDead",(_medical select 0),true];
	_playerObj setVariable["NORRN_unconscious", (_medical select 1), true];
	_playerObj setVariable["USEC_infected",(_medical select 2),true];
	_playerObj setVariable["USEC_injured",(_medical select 3),true];
	_playerObj setVariable["USEC_inPain",(_medical select 4),true];
	_playerObj setVariable["USEC_isCardiac",(_medical select 5),true];
	_playerObj setVariable["USEC_lowBlood",(_medical select 6),true];
	_playerObj setVariable["USEC_BloodQty",(_medical select 7),true];
	
	_playerObj setVariable["unconsciousTime",(_medical select 10),true];
	
	//Add Wounds
	{
		_playerObj setVariable[_x,true,true];
		[_playerObj,_x,_hit] spawn fnc_usc_damagBled;
		usecBIeed = [_playerObj,_x,0];
		publicVariable "usecBIeed";
	} forEach (_medical select 8);
	
	//Add fractures
	_fractures = (_medical select 9);
	_playerObj setVariable ["hit_legs",(_fractures select 0),true];
	_playerObj setVariable ["hit_hands",(_fractures select 1),true];
	
	if (count _medical > 11) then {
		//Additional medical stats
		_playerObj setVariable ["messing",(_medical select 11),true];
	};
	
} else {
	//Reset Fractures
	_playerObj setVariable ["hit_legs",0,true];
	_playerObj setVariable ["hit_hands",0,true];
	_playerObj setVariable ["USEC_injured",false,true];
	_playerObj setVariable ["USEC_inPain",false,true];
	_playerObj setVariable ["messing",[0,0],true];
};
	
if (count _stats > 0) then {	
	//register stats
	_playerObj setVariable["zombieKills",(_stats select 0),true];
	_playerObj setVariable["headShots",(_stats select 1),true];
	_playerObj setVariable["humanKills",(_stats select 2),true];
	_playerObj setVariable["banditKills",(_stats select 3),true];
	_playerObj addScore (_stats select 1);
	
	//Save Score
	_score = score _playerObj;
	_playerObj addScore ((_stats select 0) - _score);
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",(_stats select 0)];
	_playerObj setVariable["headShots_CHK",(_stats select 1)];
	_playerObj setVariable["humanKills_CHK",(_stats select 2)];
	_playerObj setVariable["banditKills_CHK",(_stats select 3)];
	if (count _stats > 4) then {
		if (!(_stats select 3)) then {
			_playerObj setVariable["selectSex",true,true];
		};
	} else {
		_playerObj setVariable["selectSex",true,true];
	};
} else {
	//Save initial loadout
	//register stats
	_playerObj setVariable["zombieKills",0,true];
	_playerObj setVariable["humanKills",0,true];
	_playerObj setVariable["banditKills",0,true];
	_playerObj setVariable["headShots",0,true];
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",0];
	_playerObj setVariable["humanKills_CHK",0,true];
	_playerObj setVariable["banditKills_CHK",0,true];
	_playerObj setVariable["headShots_CHK",0];
};

//New Spawnfunction - MRS
if (_randomSpot) then {
	if (!isDedicated) then {
		endLoadingScreen;
	};
	if (_selectedRegionV==3) then { 
		_selectedRegion = round(random 2); 
			diag_log ("_selectedRegionRandom=" + str(_selectedRegion));
	};
	//diag_log format ["arr_survivor_spawns_alt = %1",arr_survivor_spawns_alt];
	_findSpot = true;
	_arr_spawnPos = (arr_survivor_spawns_alt select _selectedRegion); //Selects spawn area based on player decision
	//diag_log format ["_arr_spawnPos = %1",_arr_spawnPos];
	//_arr_spawnPos = arr_survivor_spawns_alt select (round(random ((count arr_survivor_spawns_alt) - 1))); //placeholder area will be selectable by players later
	while {_findSpot} do {
		_position = _arr_spawnPos select (round(random ((count _arr_spawnPos) - 1)));
		_isNear = count (_position nearEntities [["SurvivorW2_DZ","Bandit1_DZ","Survivor2_DZ","Survivor2_1DZ","Survivor2_2DZ","Survivor2_3DZ","Survivor3_DZ","Survivor4_DZ","Survivor4_1DZ","Survivor4_2DZ","Survivor4_3DZ","Survivor8_DZ","Survivor8_1DZ","Survivor8_2DZ","Survivor8_3DZ","Bandit_S_DZ","Bandit1_1DZ","Bandit1_2DZ","Bandit1_3DZ","Bandit1_3_1DZ","Bandit1_3_2DZ","Bandit2_1DZ","Bandit2_2DZ","Bandit2_3DZ","Bandit2_4DZ","Bandit2_5DZ","Bandit3_1","Hero1_1DZ","Hero1_2DZ","Hero1_3DZ","Hero1_4DZ","Hero1_5DZ","Hero1_6DZ","Hero1_7DZ","Hero2_1DZ","Hero2_2DZ","Hero2_3DZ","Hero2_4DZ","Hero2_5DZ","Hero3_1DZ","Hero3_2DZ","Hero3_3DZ","Hero3_4DZ","Hero3_5DZ","Hero3_6DZ","Hero2_10DZ","Sniper1_DZ","ori_vil_woman_survivor_1","ori_vil_woman_survivor_2","ori_vil_woman_survivor_3","ori_vil_woman_survivor_4","ori_vil_woman_survivor_5","ori_vil_woman_survivor_6","ori_vil_woman_bandit_1","ori_vil_woman_bandit_2","ori_vil_woman_bandit_3","ori_vil_woman_bandit_4","ori_vil_woman_bandit_5","ori_vil_woman_bandit_6","ori_vil_woman_hero_1","ori_vil_woman_hero_2","ori_vil_woman_hero_3","ori_vil_woman_hero_4","ori_vil_woman_hero_5","ori_vil_woman_hero_6"],100]) == 0;
		if(_isNear) then {_findSpot = false};
	};
	
	diag_log format ["isNew and _position = %1, _humanity=%2",_position,_humanity];
	_worldspace = [0,_position];
};

//Record player for management
dayz_players set [count dayz_players,_playerObj];
/*
//bandit
if (_playerID in bb_base_level1b) then { _bbase set [0,1]; } else { _bbase set [0,0];};
if (_playerID in bb_base_level2b) then { _bbase set [1,1]; } else { _bbase set [1,0];};
if (_playerID in bb_base_level3b) then { _bbase set [2,1]; } else { _bbase set [2,0];};
//hero
//if (_playerID in bb_base_level1h) then { _bbase set [3,1]; };
//if (_playerID in bb_base_level2h) then { _bbase set [4,1]; };
//if (_playerID in bb_base_level3h) then { _bbase set [5,1]; };
//garage
if (_playerID in bb_base_level1g) then { _bbase set [3,1]; } else { _bbase set [3,0];};
if (_playerID in bb_base_level2g) then { _bbase set [4,1]; } else { _bbase set [4,0];};

if (_playerID in bb_base_level1f) then { _bbase set [5,1]; } else { _bbase set [5,0];};
if (_playerID in bb_base_level2f) then { _bbase set [6,1]; } else { _bbase set [6,0];};
if (_playerID in bb_base_level3f) then { _bbase set [7,1]; } else { _bbase set [7,0];};
*/

//record player pos locally for server checking
_playerObj setVariable["characterID",_characterID,true];
_playerObj setVariable["humanity",_humanity,true];
_playerObj setVariable["humanity_CHK",_humanity];
//_playerObj setVariable["worldspace",_worldspace,true];
//_playerObj setVariable["state",_state,true];
_playerObj setVariable["lastPos",getPosATL _playerObj];

dayzOriginsPlL2 = [_worldspace,_state,_humanity];
_clientID = owner _playerObj;
_clientID publicVariableClient "dayzOriginsPlL2";

//record time started
_playerObj setVariable ["lastTime",time];
//_playerObj setVariable ["model_CHK",typeOf _playerObj];

diag_log ("LOGIN serverDO_plSp PUBLISHING: " + str(_playerObj) + " Type: " + (typeOf _playerObj));

DOdowndblink = null;
dayzOrigingsL2 = null;

//Save Login
