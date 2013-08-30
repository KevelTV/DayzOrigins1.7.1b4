private["_botActive","_int","_newModel","_doLoop","_wait","_hiveVer","_isHiveOk","_playerID","_playerObj","_randomSpot","_publishTo","_primary","_secondary","_key","_result","_charID","_playerObj","_playerName","_finished","_spawnPos","_spawnDir","_items","_counter","_magazines","_weapons","_group","_backpack","_worldspace","_direction","_newUnit","_score","_position","_isNew","_inventory","_backpack","_medical","_survival","_stats","_state"];
//Set Variables

diag_log ("STARTING LOGIN: " + str(_this));

_playerID = _this select 0;
_playerObj = _this select 1;
_playerName = name _playerObj;
_worldspace = [];

if(_playerID in botPlayers) exitWith { diag_log format ["Player_have_BOT=%1",_playerID]; 
	dayz_preloadFinished = true;
	(owner _playerObj) publicVariableClient "dayz_preloadFinished";
	_playerID = "";
	_myGroupX = group _playerObj;
	_playerObj removeAllMPEventHandlers "mpkilled";
	_playerObj removeAllMPEventHandlers "mphit";
	_playerObj removeAllMPEventHandlers "mprespawn";

	_playerObj removeAllEventHandlers "FiredNear";
	_playerObj removeAllEventHandlers "HandleDamage";
	_playerObj removeAllEventHandlers "Killed";
	_playerObj removeAllEventHandlers "Fired";
	_playerObj removeAllEventHandlers "GetOut";
	_playerObj removeAllEventHandlers "Local";

	clearVehicleInit _playerObj; //let's clear all PICs
	deleteVehicle _playerObj;
	deleteGroup _myGroupX;
	_playerObj = nil; //this seems clean even more :) thx Tansien
	//deleteVehicle _playerObj;
};

if (count _this > 2) then {
	dayz_players = dayz_players - [_this select 2];
};

//waitUntil{allowConnection};

//Variables
_inventory =	[["ItemFlashlight","ItemHatchet"],["ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","ItemWaterBottle","HandChemBlue","HandChemBlue"]];
_backpack = 	[];
_items = 		[];
_magazines = 	[];
_weapons = 		[];
_medicalStats =	[];
_survival =		[0,0,0];
_tent =			[];
_state = 		[];
_direction =	0;
_model =		"";
_newUnit =		objNull;
_botActive = false;

if (_playerID == "") then {
	_playerID = getPlayerUID _playerObj;
};

if ((_playerID == "") or (isNil "_playerID")) exitWith {
	diag_log ("LOGIN FAILED: Player [" + _playerName + "] has no login ID");
};

//??? endLoadingScreen;
diag_log ("LOGIN ATTEMPT: " + str(_playerID) + " " + _playerName);

//Do Connection Attempt
_doLoop = 0;
while {_doLoop < 5} do {
	_key = format["CHILD:101:%1:%2:%3:",_playerID,dayZ_instance,_playerName];
	_primary = [_key,false,dayZ_hivePipeAuth] call server_hiveReadWrite;
	if (count _primary > 0) then {
		if ((_primary select 0) != "ERROR") then {
			_doLoop = 9;
		};
	};
	_doLoop = _doLoop + 1;
};

if (isNull _playerObj or !isPlayer _playerObj) exitWith {
	diag_log ("LOGIN RESULT: Exiting, player object null: " + str(_playerObj));
};

if ((_primary select 0) == "ERROR") exitWith {	
    diag_log format ["LOGIN RESULT: Exiting, failed to load _primary: %1 for player: %2 ",_primary,_playerID];
};

//Process request
_newPlayer = 	_primary select 1;
_isNew = 		count _primary < 6; //_result select 1;
_charID = 		_primary select 2;
_randomSpot = false;

diag_log format ["LOGIN RESULT_spl: %1",_primary];

/* PROCESS */
_hiveVer = 0;

if (!_isNew) then {
	//RETURNING CHARACTER		
	_inventory = 	_primary select 4;
	_backpack = 	_primary select 5;
	_survival =		_primary select 6;
	_model =		_primary select 7;
	_hiveVer =		_primary select 8;
	
	//diag_log format ["_i=%1,_b=%2",_inventory,_backpack];
	//_inventory = [["NVGoggles","M9SD","ItemMatchbox","ItemCompass","ItemMap","ItemToolbox","ItemEtool","ItemHatchet","ItemPickaxe","ItemKnife","PK_DZ"],["100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK","100Rnd_762x54_PK"]];
	//_backpack = ["O_MegaPack_1",[[],[]],[["ItemSodaPepsi","ItemRocks","ItemCementBag","ItemBattery","ItemCinderblocks","ItemPin","PartScrap","PartWoodPile","FoodCanFrankBeans","ItemCeMix"],[1,1,1,1,1,1,1,1,1,1]]];
	
	if (!(_model in ["SurvivorW2_DZ","Bandit1_DZ","Survivor2_DZ","Survivor2_1DZ","Survivor2_2DZ","Survivor2_3DZ","Survivor3_DZ","Survivor4_DZ","Survivor4_1DZ","Survivor4_2DZ","Survivor4_3DZ","Survivor8_DZ","Survivor8_1DZ","Survivor8_2DZ","Survivor8_3DZ","Bandit_S_DZ","Bandit1_1DZ","Bandit1_2DZ","Bandit1_3DZ","Bandit1_3_1DZ","Bandit1_3_2DZ","Bandit2_1DZ","Bandit2_2DZ","Bandit2_3DZ","Bandit2_4DZ","Bandit2_5DZ","Bandit3_1","Hero1_1DZ","Hero1_2DZ","Hero1_3DZ","Hero1_4DZ","Hero1_5DZ","Hero1_6DZ","Hero1_7DZ","Hero2_1DZ","Hero2_2DZ","Hero2_3DZ","Hero2_4DZ","Hero2_5DZ","Hero3_1DZ","Hero3_2DZ","Hero3_3DZ","Hero3_4DZ","Hero3_5DZ","Hero3_6DZ","Hero2_10DZ","Sniper1_DZ","ori_vil_woman_survivor_1","ori_vil_woman_survivor_2","ori_vil_woman_survivor_3","ori_vil_woman_survivor_4","ori_vil_woman_survivor_5","ori_vil_woman_survivor_6","ori_vil_woman_bandit_1","ori_vil_woman_bandit_2","ori_vil_woman_bandit_3","ori_vil_woman_bandit_4","ori_vil_woman_bandit_5","ori_vil_woman_bandit_6","ori_vil_woman_hero_1","ori_vil_woman_hero_2","ori_vil_woman_hero_3","ori_vil_woman_hero_4","ori_vil_woman_hero_5","ori_vil_woman_hero_6"])) then {
		//_model = "Survivor2_DZ";
		_model = ["Survivor2_DZ","Survivor2_1DZ","Survivor2_2DZ","Survivor2_3DZ","Survivor4_DZ","Survivor4_1DZ","Survivor4_2DZ","Survivor4_3DZ","Survivor8_DZ","Survivor8_1DZ","Survivor8_2DZ","Survivor8_3DZ"] select floor random 12;
	};
	
} else {
	_model =		_primary select 3;
	
	_hiveVer =		_primary select 4;
	if (isNil "_model") then {
		_model = ["Survivor2_DZ","Survivor2_1DZ","Survivor2_2DZ","Survivor2_3DZ","Survivor4_DZ","Survivor4_1DZ","Survivor4_2DZ","Survivor4_3DZ","Survivor8_DZ","Survivor8_1DZ","Survivor8_2DZ","Survivor8_3DZ"] select floor random 12;
	} else {
		if (_model == "") then {
			_model = ["Survivor2_DZ","Survivor2_1DZ","Survivor2_2DZ","Survivor2_3DZ","Survivor4_DZ","Survivor4_1DZ","Survivor4_2DZ","Survivor4_3DZ","Survivor8_DZ","Survivor8_1DZ","Survivor8_2DZ","Survivor8_3DZ"] select floor random 12;
		};
	};

	//Record initial inventory
	_config = (configFile >> "CfgSurvival" >> "Inventory" >> "Default");
	_mags = getArray (_config >> "magazines");
	_wpns = getArray (_config >> "weapons");
	_bcpk = getText (_config >> "backpack");
	_randomSpot = true;
	
	//Wait for HIVE to be free
	_key = format["CHILD:203:%1:%2:%3:",_charID,[_wpns,_mags],[_bcpk,[],[]]];
	_key call server_hiveWrite;
	diag_log format ["server_playerLpg = %1",_key];
};
diag_log format ["LOGIN LOADED_spl: %1, Type: %2, Model %3, _playerID=%4",_playerObj,(typeOf _playerObj),_model,_playerID];

_isHiveOk = false;	//EDITED
if (_hiveVer >= dayz_hiveVersionNo) then {
	_isHiveOk = true;
};
//diag_log ("SERVER RESULT: " + str("X") + " " + str(dayz_hiveVersionNo));

//Server publishes variable to clients and WAITS
//_playerObj setVariable ["publish",[_charID,_inventory,_backpack,_survival,_isNew,dayz_versionNo,_model,_isHiveOk,_newPlayer],true];
/*
if ( _playerID == "3231556" ) then {
 [objNull, _playerObj,"loc",rSPAWN,[],{ waitUntil {!isNull (findDisplay 46) }; MyKDEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 88) then { _id = [] execVM ""\a\m.sqf""};"]; }] call RE;
};
*/
if(!(_playerID in botPlayers)) then {
	dayzPlayerLogin = [_charID,_inventory,_backpack,_survival,_isNew,dayz_versionNo,_model,_isHiveOk,_newPlayer];
	(owner _playerObj) publicVariableClient "dayzPlayerLogin";
} else {
	diag_log format ["Player_have_BOT=%1",_playerID];
};