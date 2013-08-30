/*
	DZAI Server Initialization File
	
	Description: Handles startup process for DZAI. Does not contain any values intended for modification.
	
	Last updated: 10:31 PM 8/4/2013
*/
private ["_startTime"];

if (!isServer || !isNil "DZAI_isActive") exitWith {};
DZAI_isActive = true;

#include "DZAI_version.hpp"
diag_log format ["Initializing %1 version %2",DZAI_TYPE,DZAI_VERSION];

_startTime = diag_tickTime;

//Load DZAI variables
#include "dzai_variables.sqf"

//Load DZAI functions
#include "dzai_functions.sqf"

//Load DZAI classname tables.
#include "base_classname_configs\base_classnames.sqf"

createcenter east;											//Create centers for all AI sides
createcenter resistance;
east setFriend [resistance, 1];								//Resistance (AI) is hostile to West (Player), but friendly to East (AI).
east setFriend [west, 0];	
resistance setFriend [west, 0];								//East (AI) is hostile to West (Player), but friendly to Resistance (AI).
resistance setFriend [east, 1];	
west setFriend [resistance, 0];								//West (Player side) is hostile to all.
west setFriend [east, 0];

//Detect DayZ mod variant being used.
if (DZAI_modName == "") then {
	private["_modVariant"];
	_modVariant = getText (configFile >> "CfgMods" >> "DayZ" >> "dir");
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Detected mod variant %1.",_modVariant];};
	switch (_modVariant) do {
		case "@DayZ_Epoch":
		{
			DZAI_modName = "epoch";				//DayZ Epoch
		};
		case "DayzOverwatch":
		{
			DZAI_modName = "overwatch";			//DayZ Overwatch
		};
		case "@DayzOverwatch":
		{
			DZAI_modName = "overwatch";			//DayZ Overwatch
		};
		case "@DayZHuntingGrounds":
		{
			DZAI_modName = "huntinggrounds";	//DayZ Hunting Grounds
		};
		case "DayZLingor":
		{
			private["_modCheck"];
			_modCheck = getText (configFile >> "CfgMods" >> "DayZ" >> "action");
			if (_modCheck == "http://www.Skaronator.com") then {
				DZAI_modName = "lingorskaro";
			};
			if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Detected DayZ Lingor variant %1.",_modCheck];};
		};
	};
};

//Build DZAI weapon classname tables from CfgBuildingLoot data if DZAI_dynamicWeapons = true;
if (DZAI_dynamicWeaponList) then {[DZAI_banAIWeapons] execVM '\z\addons\dayz_server\DZAI\scripts\buildWeaponArrays.sqf';};

//Create reference marker for dynamic triggers and set default values. These values are modified on a per-map basis in the switch-case block below.
_this = createMarker ["DZAI_centerMarker", (getMarkerPos 'center')];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
DZAI_centerMarker = _this;
DZAI_dynTriggerRadius = 600;
DZAI_dynOverlap = 0.15;

//Load map-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.

private["_worldname"];
_worldname=toLower format ["%1",worldName];
diag_log format["[DZAI] Server is running map %1. Loading static trigger and classname configs.",_worldname];

if (DZAI_objPatch) then {_nul = _worldname execVM '\z\addons\dayz_server\DZAI\scripts\buildingpatch_all.sqf';};

switch (_worldname) do {
	case "chernarus":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\chernarus_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_chernarus.sqf";
		DZAI_centerMarker setMarkerPos [7130.0073, 7826.3501];
		DZAI_centerSize = 5500;
		DZAI_dynTriggersMax = 15;
	};
	case "utes":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\utes_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_utes.sqf";
		DZAI_centerMarker setMarkerPos [3648.311, 3820.9607];
		DZAI_centerSize = 1000;
		DZAI_dynTriggersMax = 3;
	};
	case "zargabad":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\zargabad_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_zargabad.sqf";
		DZAI_centerMarker setMarkerPos [3998.7087, 4120.4692];
		DZAI_centerSize = 2000;
		DZAI_dynTriggersMax = 5;
	};
	case "fallujah":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\fallujah_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_fallujah.sqf";
		DZAI_centerMarker setMarkerPos [5139.8008, 4092.6797];
		DZAI_centerSize = 4000;
		DZAI_dynTriggersMax = 11;
	};
	case "takistan":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\takistan_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_takistan.sqf";
		DZAI_centerMarker setMarkerPos [6368.2764, 6624.2744];
		DZAI_centerSize = 6000;
		DZAI_dynTriggersMax = 16;
	};
    case "tavi":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\tavi_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_tavi.sqf";
		DZAI_centerMarker setMarkerPos [10864.419, 11084.657, 1.5322094];
		DZAI_centerSize = 8000;
		DZAI_dynTriggersMax = 16;
    };
	 case "lingor":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\lingor_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_lingor.sqf";
		DZAI_centerMarker setMarkerPos [4247.3218, 4689.731];
		DZAI_centerSize = 4000;
		DZAI_dynTriggersMax = 11;
    };
    case "namalsk":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\namalsk_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_namalsk.sqf";
		DZAI_centerMarker setMarkerPos [6051.7534, 8728.8447];
		DZAI_centerSize = 3500;
		DZAI_dynTriggersMax = 6;
    };
    case "mbg_celle2":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\mbg_celle2_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_mbg_celle2.sqf";
		DZAI_centerMarker setMarkerPos [6399.5469, 6583.6987];
		DZAI_centerSize = 6250;
		DZAI_dynTriggersMax = 17;
    };
	case "oring":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\oring_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_oring.sqf";
		DZAI_centerMarker setMarkerPos [5138.3276, 5535.9248];
		DZAI_centerSize = 4750;
		DZAI_dynTriggersMax = 15;
    };
	case "panthera2":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\panthera2_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_panthera2.sqf";
		DZAI_centerMarker setMarkerPos [5510.7402, 4248.1196];
		DZAI_centerSize = 3250;
		DZAI_dynTriggersMax = 9;
    };
	case "isladuala":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\isladuala_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_isladuala.sqf";
		DZAI_centerMarker setMarkerPos [5133.2119, 5228.4541];
		DZAI_centerSize = 5500;
		DZAI_dynTriggersMax = 8;
    };
	case "sara":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\sara_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_sara.sqf";
		DZAI_centerMarker setMarkerPos [12011.185, 11251.99, 0.036790848];
		DZAI_centerSize = 6250;
		DZAI_dynTriggersMax = 17;
    };
	case default {
		DZAI_centerSize = 7000;
		DZAI_dynTriggersMax = 15;
		diag_log "Unrecognized worldname found.";
		if (!DZAI_verifyTables) then {DZAI_verifyTables = true;};	//Force table verification for unrecognized maps to help in creating new classname config files.
	};
};

//Initialize AI settings
if (DZAI_zombieEnemy) then {diag_log "[DZAI] AI to zombie hostility is enabled.";
	if (DZAI_weaponNoise > 0) then {
		DZAI_zAggro = true;
		diag_log "[DZAI] Zombie hostility to AI is enabled.";
	} else {
		DZAI_zAggro = false;
		diag_log "[DZAI] Zombie hostility to AI is disabled.";
	};
} else {
	diag_log "[DZAI] AI to zombie hostility is disabled.";
};
if (isNil "DDOPP_taser_handleHit") then {DZAI_taserAI = false;} else {DZAI_taserAI = true;diag_log "[DZAI] DDOPP Taser Mod detected.";};

if (DZAI_verifyTables) then {["DZAI_Rifles0","DZAI_Rifles1","DZAI_Rifles2","DZAI_Rifles3","DZAI_Pistols0","DZAI_Pistols1","DZAI_Pistols2","DZAI_Pistols3","DZAI_Backpacks0","DZAI_Backpacks1","DZAI_Backpacks2","DZAI_Backpacks3","DZAI_Edibles","DZAI_Medicals1","DZAI_Medicals2","DZAI_MiscItemS","DZAI_MiscItemL","DZAI_SkinLoot","DZAI_BanditTypes","DZAI_heliTypes"] execVM "\z\addons\dayz_server\DZAI\scripts\verifyTables.sqf";};
if (DZAI_dynAISpawns || DZAI_aiHeliPatrols) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\DZAI_scheduler.sqf';};
if (DZAI_monitor) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\DZAI_monitor.sqf';};
diag_log format ["[DZAI] DZAI loaded with settings: Debug Level: %1. DebugMarkers: %2. ModName: %3. DZAI_dynamicWeaponList: %4. VerifyTables: %5.",DZAI_debugLevel,DZAI_debugMarkers,DZAI_modName,DZAI_dynamicWeaponList,DZAI_verifyTables];
diag_log format ["[DZAI] DZAI loading completed in %1 seconds.",(diag_tickTime - _startTime)];
