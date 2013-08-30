/* 
[AlPmaker : AJ Hotkey Menu] 
17:16 04/09/12
v .01 beta

[Benefits]:

- after executing You can use hotkey to show cheat menu, based on my previous solution (look at AJ forums)
- autoremoves main AJ menu. If you wanna see it again - press INS
- if You want to disable this menu - "Toggle Hotkey Menu" again
- works in vehicles \0/

[WARNINGS]:
- i hope coders will let us to change "initmenu.sqf" in future - then we will be able to use just INS to load this menu :)
- default "ammo.sqf" works wrong with this menu. use your own or recommended
- do not forget to change path to Yours!
*/

//Settings
pathtoscrdir = "C:\ DayZ Mod\wuat\Scripts\"; //WRITE YOUR PASS TO AJ SCRIPTS FOLDER HERE!! (USE CAPITAL LETTER FOR DRIVE!)
exstr = 'player execVM "'+pathtoscrdir+'%1"';
//End of settings



/*
	Admin Menu
*/

tlmxzyxzy =
{
	waitUntil {!isNull (findDisplay 46)};
	inSub = false;
	tpEnabled = false;
	getControl = {(findDisplay 3030) displayCtrl _this;};
	if (isNil "admin_toggled") then {admin_toggled = [];};
	admin_list =
	{
		if ((getPlayerUID player) in noob_list) then {
			adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Следить за целью - двойной щелчок (F10 для отмены)",adminspec,"0","0","0","1",[]];
		}
		else {
			adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Спавн техники","Vehicles","0","0","1","0",[]];
			 adminadd = adminadd + ["     Спавн зданий и объектов","Objects","0","0","1","0",[]];
			 adminadd = adminadd + ["     Спавн оружия и предметов","Weaponz","0","0","1","0",[]];
			 adminadd = adminadd + ["     Спавн ящика с оружием",admincrate,"0","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Вкл/Выкл телепорт",{if !(tpEnabled) then {tpEnabled = true;} else {tpEnabled = false;};},"1","0","0","0",[]];
			 adminadd = adminadd + ["     Вкл/Выкл метки на карте",adminmark,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Вкл/Выкл ESP",adminesp,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Вкл/Выкл режим бога",admingod,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Сменить скин",adminskin,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Вкл/Выкл ускорение",adminVehicleSpeed,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Вкл/Выкл невидимость",admininvis,"1","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Следить за целью - двойной щелчок (F10 для отмены)",adminspec,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Телепорт к игроку",admintele,"0","0","0","1",[]];
			adminadd = adminadd + ["     Телепорт игрока ко мне",admint2me,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Сломать игроку ноги",adminbreakleg,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Убить игрока",adminkill,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Сбить игрока с ног",adminUncon,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Вылечить игрока",adminheal,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Вкл режим Бога игроку",{[_this select 0, 1] call adminGiveGod;},"0","0","0","1",[]];
			 adminadd = adminadd + ["     Выкл режим Бога игроку",{[_this select 0, 0] call adminGiveGod;},"0","0","0","1",[]];
			 adminadd = adminadd + ["     Вкл/Выкл ускорение игроку",adminTargetVehBoost,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Усыпить игрока",adminSlap,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Опъянить игрока",adminDrug,"0","0","0","1",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Починить технику",adminrepair,"0","0","0","0",[]];
			 adminadd = adminadd + ["     Удалить цель",{deleteVehicle cursorTarget;},"0","0","0","0",[]];
			 adminadd = adminadd + ["     Отключить Анти-ТП",admin_aatp,"0","0","0","0",[]];
		};
	};
	admin_tgfnc =
	{
		_toggle = _this select 0;
		if !(_toggle in admin_toggled) then
		{
			lbSetColor [2, _toggle, [0, 1, 0, 1]];
			admin_toggled = admin_toggled + [_toggle];
		}
		else
		{
			lbSetColor [2, _toggle, [1, 0, 0, 1]];
			admin_toggled = admin_toggled - [_toggle];
		};
	};
	admin_dbclick =
	{
		_isran = false;
		_code = adminadd select ((lbCurSel 2))*7+1;
		_istoggle = adminadd select ((lbCurSel 2))*7+2;
		_istitle = adminadd select ((lbCurSel 2))*7+3;
		_issubmenu = adminadd select ((lbCurSel 2))*7+4;
		_isplayer = adminadd select ((lbCurSel 2))*7+5;
		if (_istitle == "1") exitWith {};
		if (_issubmenu == "1") then
		{
			if (_code == "Vehicles") exitWith {call admin_fillveh};
			if (_code == "Objects") exitWith {call admin_fillobj};
			if (_code == "Weaponz") exitWith {call admin_fillwpn};
			if (_code == "HackerLog") exitWith {call admin_fillhlog};
			if (_code == "KeyLog") exitWith {call admin_fillklog};
			if (_code == "MainMenu") exitWith {call admin_filllist};
			if (_code == "uidLog") exitWith {call admin_filluLog};
		};
		if (inSub) then
		{
			call compile _code;
			_isran = true;
		};
		if (_istoggle == "1") then
		{
			[] spawn _code;
			[lbCurSel 2] call admin_tgfnc;
			_isran = true;
		};
		if (_isplayer == "1") then
		{
			if ((lbCurSel 1) >= 0) then
			{
				[lbtext [1, (lbCurSel 1)]] spawn _code;
				_isran = true;
			}
			else
			{
				hint "Выберите игрока!";
				_isran = true;
			};
		};
		if ((_isplayer == "0") && !_isran && (typeName _code != "STRING")) then {[] spawn _code;};
	};
	adminskin =
	{
		if (isNil "adminskinz") then {adminskinz = 0;};
		if (adminskinz == 0) then
		{
			_formatLine = "[dayz_playerUID,dayz_characterID,'%1'] call player_humanityMorph;
			adminSkin_wardrobe = player addaction [(""<t color=""""#ff8810"""">"" + (""Wardrobe"") +""</t>""),""ca\modules\MP\data\scriptCommands\moveIn.sqf"",
			""Driver (call adminSkin_helper);"",5,false,false,"""",""""];";
			wardrobe =
			[
				["",true],
					["DayZ Clothing", [2], "#USER:WardrobeDayZ", -5, [["expression", ""]], "1", "1"],
					["Custom Clothing", [3], "#USER:WardrobeCustom", -5, [["expression", ""]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
					
			];
			WardrobeCustom =
			[
				["",true],
					["Rocket Uniform", [2],  "", -5, [["expression", format[_formatLine,"Rocket_DZ"]]], "1", "1"],
					["Desert Rocket Uniform", [3],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_Officer_DDPM"]]], "1", "1"],
					["Desert Camo Clothing", [4],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_L_DDPM"]]], "1", "1"],
					["Desert Soldier Uniform", [5],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_DDPM"]]], "1", "1"],
					["Desert Green Uniform", [6],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_MTP"]]], "1", "1"],
					["US Soldier Uniform", [7],  "", -5, [["expression", format[_formatLine,"US_Soldier_EP1"]]], "1", "1"],
					["Czech Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"CZ_Soldier_DES_EP1"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];

			WardrobeDayZ =
			[
				["",true],
					["Male Suvivor", [2],  "", -5, [["expression", format[_formatLine,"Survivor2_DZ"]]], "1", "1"],
					["Female Suvivor", [3],  "", -5, [["expression", format[_formatLine,"SurvivorW2_DZ"]]], "1", "1"],
					["Male Bandit", [4],  "", -5, [["expression", format[_formatLine,"Bandit1_DZ"]]], "1", "1"],
					["Female Bandit", [5],  "", -5, [["expression", format[_formatLine,"BanditW1_DZ"]]], "1", "1"],
					["Camo Clothing", [6],  "", -5, [["expression", format[_formatLine,"Camo1_DZ"]]], "1", "1"],
					["Ghillie Suit", [7],  "", -5, [["expression", format[_formatLine,"Sniper1_DZ"]]], "1", "1"],
					["Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"Soldier1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			adminskinz = 1;
			adminSkin_wardrobe = player addaction [("<t color=""#ff8810"">" + ("Wardrobe") +"</t>"),"ca\modules\MP\data\scriptCommands\moveIn.sqf",
			"Driver (call adminSkin_helper);",5,false,false,"",""];
			adminSkin_helper = {showCommandingMenu "#USER:wardrobe";};
		}
		else
		{
			player removeAction adminSkin_wardrobe;
			adminskinz = 0;
		};
	};
	adminVehicleSpeed =
	{
		if (isNil "adminvehicleSpeedz") then {adminvehicleSpeedz = 0;};
		if (adminvehicleSpeedz == 0) then
		{
			hint "Ускорение ВКЛ";
			waituntil {!isnull (finddisplay 46)};
			adminvehicleSpeedy = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC_xx1;false;"];
			MY_KEYDOWN_FNC_xx1 = {

				_vcl = vehicle player;
				if(_vcl == player)exitwith{};

				_nos = _vcl getvariable "nitro";
				_supgrade = _vcl getvariable "supgrade";

				if(isEngineOn _vcl) then
				{
					switch (_this) do {
						case 17: {
							if(isEngineOn _vcl and !isnil "_supgrade") then
							{
								_vcl SetVelocity [(velocity _vcl select 0) * 1.011, (velocity _vcl select 1) *1.011, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["supgrade", 1, true];
							};
						};
						case 42: {
							if(isEngineOn _vcl and !isnil "_nos") then
							{
								_vcl setVelocity [(velocity _vcl select 0) * 1.01, (velocity _vcl select 1) * 1.01, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["nitro", 1, true];
							};
						};
					};
				};
			};
			adminvehicleSpeedz = 1;
		}
		else
		{
			(findDisplay 46) displayRemoveEventHandler ["KeyDown",adminvehicleSpeedy];
			adminvehicleSpeedz = 0;
		};
	};
	admin_filllist =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_list;
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index = _ctrl lbAdd format["%1", adminadd select _num];
			_togglable = adminadd select (_num+2);
			_istitle = adminadd select (_num+3);
			_issubmenu = adminadd select (_num+4);
			_thcolor = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
			if (_togglable == "1") then
			{
				if (_index in admin_toggled) then
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				} else {_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 0, 0, 1]];};
			};
			if (_istitle == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.0, 0.6, 1.0, 1.0]];};
			if ((_issubmenu == "1") && (count _thcolor == 0)) then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.9, 0.44, 0, 1]];};
		};
	};
	admin_fillplr =
	{
		disableSerialization;
		if (!(isNull (findDisplay 3030))) then
		{
			_count = count playableUnits;
			_ctrl = 1 call getControl;
			lbclear _ctrl;
			{
				if (getPlayerUID _x != "") then
				{
					_ctrl lbAdd format ["%1", name _x];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0.0, 0.6, 1.0, 1.0]];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
			lbSort _ctrl;
		};
	};
	admin_fillveh =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] call adminsveh;";
		adminadd = [];
		adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_cfgvehicles = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgvehicles)-1 do
		{
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then
			{
				_veh_type = configName _vehicle;
				if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (((_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
				{
					adminadd = adminadd + ["     "+_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
				};
			};
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format ["%1",adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillobj =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] call adminsobj;";
		adminadd = [];
		adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_cfgobjects = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgobjects)-1 do
		{
			_object = _cfgobjects select _i;
			if (isClass _object) then
			{
				_obj_type = configName _object;
				if ((getNumber (_object >> "scope") == 2) && (getText (_object >> "picture") != "") && !((_obj_type isKindOf "ParachuteBase") or (_obj_type isKindOf "BIS_Steerable_Parachute")) && (_obj_type isKindOf "Building")) then
				{
					adminadd = adminadd + ["     "+_obj_type,format[_spwx,_obj_type],"0","0","0","0",[]];
				};
			};
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index = _ctrl lbAdd format ["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillwpn =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] spawn adminweapon;";
		adminadd = [];
		adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_cfgweapons = configFile >> 'cfgWeapons';
		for "_i" from 0 to (count _cfgweapons)-1 do
		{
			_weapon = _cfgweapons select _i;
			if (isClass _weapon) then
			{
				_wpn_type = configName _weapon;
				if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then
				{
					adminadd = adminadd + ["     "+_wpn_type,format[_spwx,_wpn_type],"0","0","0","0",[]];
				};
			};
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillhlog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_num = if (count hackerLog > 100) then {(count hackerLog)-100;} else {0;};
		for "_i" from (count hackerLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (hackerLog select _i);
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillklog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_num = if (count keyLog > 100) then {(count keyLog)-100;} else {0;};
		for "_i" from (count keyLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (keyLog select _i);
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_filluLog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Список всех функций","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список подозреваемых","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		{
			if ( isPlayer _x ) then
			{
				_log = (name _x) + "     " + (getPlayerUID _x);    
				adminadd = adminadd + ["     "+_log,"","0","1","0","0",[]];
			};
		} foreach playableUnits;
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_init =
	{
		if (isNull (findDisplay 3030)) then
		{
			createDialog "RscConfigEditor_Main";
			_ctrl = 3 call getControl;
			_ctrl ctrlSetText "Admin Tool";
			_ctrl ctrlSetTextColor [1, 0.5, 1, 1];
			_ctrl = 2 call getControl;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
			call admin_filllist;
			[] spawn admin_fillplr;
		};
	};
	adminheal =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [5,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Игрок %1 вылечен", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	admin_aatp =
	{
		[] spawn
		{
			_tempTime = time;
			time = "aatp";
			sleep 3;
			[_tempTime] spawn
			{
				_tempTime = (_this select 0) + 3;
				while {true} do
				{
					time = _tempTime;
					_tempTime = _tempTime + 1;
					sleep 1;
				};
			};
		};
	};
	adminrepair =
	{
		if (vehicle player != player) then
		{
			_vehicle = vehicle player;
			_newFuel = 1;
			_vehicle setdamage 0;
			dayzSetFuel = [_vehicle,_newFuel];
			dayzSetFuel spawn local_setFuel;
			publicVariable "dayzSetFuel";
			hint format ["Техника %1 починена", getText (configFile >> 'CfgVehicles' >> (typeOf _vehicle) >> 'displayName')];
		} else {hint "Необходимо сидеть в технике!"};
	};
	admincrate =
	{
		tlmadminrq = [6,player];
		publicVariable "tlmadminrq";
		hint "Создание ящика с оружием...";
	};
	adminmark =
	{
		fnc_allunits = 
		{
			_tempArrayVeh = (getpos player) nearEntities [["Air","Car","Motorcycle","Tank","Ship","StaticWeapon"],10000000];
			_tempArrayMan = (getpos player) nearEntities ["CAManBase",10000000];

			{
				if !(isPlayer _x) then
				{
					_tempArrayMan = _tempArrayMan - [_x];
				};
			} foreach _tempArrayMan;
			
			_tempCrewArray = [];
			
			{
				_tempCrewArray = _tempCrewArray + crew _x;
				
			} foreach _tempArrayVeh;
			
			_tempCrewArray = _tempCrewArray - _tempArrayMan;
			
			_tempArrayMan = _tempArrayMan + _tempCrewArray;
			
			_tempArrayMan
		};
		adminpmark =
		{
			while {mark == 1} do
			{
				_entities = call fnc_allunits;
				for "_i" from 0 to (count _entities)-1 do
				{
					deleteMarkerLocal ("adminpmark" + (str _i));
					_pm = createMarkerLocal [("adminpmark" + (str _i)), getPos (_entities select _i)];
					_pm setMarkerTypeLocal "destroyedvehicle";
					_pm setMarkerSizeLocal [0.8, 0.8];
					_pm setMarkerTextLocal format ["%1", name (_entities select _i)];
					_pm setMarkerColorLocal ("ColorBlue");
				};
				sleep 3;
			};
			_entities = call fnc_allunits;
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminpmark" + (str _i));};
		};
		adminvmark =
		{
			while {mark == 1} do
			{
				_entities = ([6800, 9200, 0] nearEntities [["LandVehicle", "Air", "Ship","tentStorage","UH1Wreck_DZ","UH60Wreck_DZ"], 110000000]);
				for "_i" from 0 to (count _entities)-1 do
				{
					deleteMarkerLocal ("adminvmark" + (str _i));
					_vm = createMarkerLocal [("adminvmark" + (str _i)), getPos (_entities select _i)];
					_vm setMarkerTypeLocal "destroyedvehicle";
					_vm setMarkerSizeLocal [0.8, 0.8];
					_vm setMarkerTextLocal format ["%1", getText (configFile >> 'CfgVehicles' >> (typeof (_entities select _i)) >> 'displayName')];
					_vm setMarkerColorLocal ("ColorBlack");
				};
				sleep 3;
			};
			_entities = ([6800, 9200, 0] nearEntities [["LandVehicle", "Air", "Ship","tentStorage","UH1Wreck_DZ","UH60Wreck_DZ"], 110000000]);
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminvmark" + (str _i));};
		};
		if (isNil "mark") then {mark = 0;};
		if (mark == 0) then
		{
			mark = 1;
			hint "Метки на карте ВКЛ";
			[] spawn adminpmark;
			[] spawn adminvmark;
		}
		else
		{
			mark = 0;
			hint "Метки на карте ВЫКЛ";
		};
	};
	adminesp =
	{
		xdistance = 400;
		if (isNil "adminxtags") then
		{
			adminxtags = 0;
			fn_esp =
			{
				disableSerialization;
				if (isNil "BIS_fnc_3dCredits_n") then {BIS_fnc_3dCredits_n = 2733;};
				BIS_fnc_3dCredits_n cutRsc ["rscDynamicText", "PLAIN"];
				BIS_fnc_3dCredits_n = BIS_fnc_3dCredits_n + 1;
				_ctrl = ((uiNamespace getvariable "BIS_dynamicText") displayctrl 9999);
				_ctrl ctrlShow true; _ctrl ctrlEnable true; _ctrl ctrlSetFade 0;
				_unit = _this select 0;
				while {(alive _unit) && ((player distance _unit) < xdistance) && (adminxtags == 1)} do
				{
					_pos = [(getPosATL _unit) select 0, (getPosATL _unit) select 1, ((getPosATL _unit) select 2) + 2];
					_pos2D = worldToScreen _pos;
					if (count _pos2D > 0) then
					{
						_ctrl ctrlSetPosition [(_pos2D select 0) - (safezoneW / 2), (_pos2D select 1), safezoneW, safezoneH];
						_text = parseText format ["<t size='0.35' color='#FFFFFF'>%1 (%2m)</t>", name _unit, round (player distance _unit)];
						_ctrl ctrlSetStructuredText _text;
						_ctrl ctrlCommit 0;
					};
					sleep 0.01;
				};
				_ctrl ctrlShow false;
				_ctrl ctrlEnable false;
			};
		};
		if (adminxtags == 0) then
		{
			adminxtags = 1;
			hint "ESP ВКЛ";
			_a = [];
			while {adminxtags == 1} do
			{
				_count = count ((position player) nearEntities [["CAManBase"], xdistance]);
				{
					if (((_x in _a) && !(alive _x)) or ((_x in _a) && ((player distance _x) > xdistance))) then {_a = _a - [_x];};
					if ((_x != player) && (getPlayerUID _x != "") && (name _x != "") && !(_x in _a) && ((player distance _x) < xdistance)) then
					{
						_a = _a + [_x];
						[_x] spawn fn_esp;
						sleep 1;
					};
				} forEach playableUnits;
				waitUntil {_count != count ((position player) nearEntities [["CAManBase"], xdistance])};
			};
		}
		else
		{
			adminxtags = 0;
			hint "ESP ВЫКЛ";
		};
	};
	admingod =
	{
		if (isNil "gmdadmin") then {gmdadmin = 0;};
		if (gmdadmin == 0) then
		{
			gmdadmin = 1;
			_object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
			hint "Режим Бога ВКЛ";
		}
		else
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			gmdadmin = 0;
			hint "Режим Бога ВЫКЛ";
		};
	};
	admininvis =
	{
		if (isNil 'inv1') then {inv1 = 0;};
		if (inv1 == 0) then
		{
			tlmadminrq = [3, player, true];
			publicVariable "tlmadminrq";
			inv1 = 1;
			hint "Невидимость ВКЛ";
		}
		else
		{
			tlmadminrq = [3, player, false];
			publicVariable "tlmadminrq";
			inv1 = 0;
			hint "Невидимость ВЫКЛ";
		};
	};
	admintele =
	{
		{
			if (name _x == _this select 0) then
			{
				_bolt = vehicle player;
				_hitObject = vehicle _x;
				_val = [0,-1,0];
				_hitMemoryPt = "";
				_bolt attachTo [_hitObject,_val,_hitMemoryPt];
				hint format ["Телепортируемся к %1", _this select 0];
				sleep 1;
				detach _bolt;
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminbreakleg =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [2,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Игроку %1 сломаны ноги", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminspec =
	{
		{
			if (name _x == _this select 0) then
			{
				_x switchCamera "EXTERNAL";
				hint format ["Слежение за %1, нажмите F10 чтобы прекратить", name _x];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminkill =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [4,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Игрок %1 убит", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminTargetVehBoost =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [11,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Ускорение для %1 ВКЛ", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	admint2me =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [7,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Телепортируем %1", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminweapon =
	{
		_item = _this select 0;
		_config = [_item];
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_mags = getArray(configfile >> 'cfgWeapons' >> _item >> 'magazines');
		_config = _mags select 0;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		player selectWeapon _item;
		reload player;
	};
	adminsveh =
	{
		tlmadminrq = [0, player, _this select 0, [((getPos player) select 0) + 3, ((getPos player) select 1) + 3, 0]];
		publicVariable "tlmadminrq";
	};
	adminsobj =
	{
		tlmadminrq = [0, player, _this select 0, [((getPos player) select 0) + 3, ((getPos player) select 1) + 3, 0]];
		publicVariable "tlmadminrq";
	};
	adminUncon =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [8,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Игрок %1 усыплен...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminSlap =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [12,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Игрок %1 сбит с ног!", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminDrug =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [13,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Игрок %1 опъянен!", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminGiveGod =
	{
		if ((_this select 1) == 1) then {
			{
				if (name _x == _this select 0) then
				{
					tlmadminrq = [9,player,_x];
					publicVariable "tlmadminrq";
					hint format ["Режим Бога для %1 ВКЛ", _this select 0];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
		}
		else
		{
			{
				if (name _x == _this select 0) then
				{
					tlmadminrq = [10,player,_x];
					publicVariable "tlmadminrq";
					hint format ["Режим Бога для %1 ВЫКЛ", _this select 0];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
		};
	};
	(findDisplay 46) displayAddEventHandler ["KeyUp","
	if (_this select 1 == 0x3B) then {call admin_init;};
	if (_this select 1 == 0x44) then {player switchCamera 'EXTERNAL';};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp", "if ((_this select 1) == 0xD3) then {call compile preprocessFileLineNumbers ""\null\start.sqf"";};"];
	((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonUp", "if ((_this select 1) == 0) then
	{
		if (tpEnabled) then
		{
			tlmadminrq = [1, player, (_this select 0) posScreenToWorld [_this select 2, _this select 3]];
			publicVariable 'tlmadminrq';
		};
	};"];
};

"tlmadminrq" addPublicVariableEventHandler
{
	_array = _this select 1;
	_option = _array select 0;
	if (_option == 0) then
	{
		_object = (_array select 2) createVehicle (_array select 3);
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];
		_object setVariable ["ObjectID", "1", true];
		_object setVariable ["ObjectUID", "1", true];
	};
	if (_option == 1) then
	{
		vehicle (_array select 1) setPosATL (_array select 2);
	};
	if (_option == 2) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			_unit = player;
			_selection = ""legs"";
			_damage = 1;
			_unit setHit[_selection,_damage];
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 3) then
	{
		if (_array select 2) then
		{
			doinv = format ["
			{
				if (getPlayerUID _x == '%1') then
				{
					_x hideObject true;
				};
			} forEach ([6800, 9200, 0] nearEntities [['AllVehicles'], 110000000]);", getPlayerUID (_array select 1)];
		}
		else
		{
			doinv = format ["
			{
				if (getPlayerUID _x == '%1') then
				{
					_x hideObject false;
				};
			} forEach ([6800, 9200, 0] nearEntities [['AllVehicles'], 110000000]);", getPlayerUID (_array select 1)];
		};
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit doinv; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 4) then
	{
		vehicle (_array select 2) setDamage 1;
	};
	if (_option == 5) then
	{
		_unit = _array select 2;
		_unit setVariable ["USEC_lowBlood",false,true];
		usecMorphine = [_unit,player];
		publicVariable "usecMorphine";
		_unit setVariable["medForceUpdate",true];
		usecBandage = [_unit];
		publicVariable "usecBandage";
		{_unit setVariable[_x,false,true];} foreach USEC_woundHit;
		_unit setVariable ["USEC_injured",false,true];
		_unit setVariable ["USEC_lowBlood",false,true];
		usecTransfuse = [_unit];
		publicVariable "usecTransfuse";
		_unit setVariable ["NORRN_unconscious", false, true];
		_unit setVariable ["USEC_iscardiac",false,true];
		usecPainK = [_unit,player];
		publicVariable "usecPainK";
		_unit setVariable ["medForceUpdate",true];
		_unit setdamage 0;
		_do = format ["if (getPlayerUID player == '%1') then
		{
			disableSerialization;
			r_fracture_legs = false;
			r_fracture_arms = false;
			dayz_sourceBleeding = objNull;
			r_player_blood = r_player_bloodTotal;
			r_player_inpain = false;
			r_player_infected = false;
			r_player_injured = false;
			dayz_hunger = 0;
			dayz_thirst = 0;
			dayz_temperatur = 40;
			r_fracture_legs = false;
			r_fracture_arms = false;
			r_player_dead = false;
			r_player_unconscious = false;
			r_player_loaded = false;
			r_player_cardiac = false;
			r_player_lowblood = false;
			r_player_timeout = 0;
			r_handlercount = 0;
			_display = uiNamespace getVariable 'DAYZ_GUI_display';
			_control = _display displayCtrl 1203;
			_control ctrlShow false;
			r_player_handler = false;
			disableUserInput false;
			""dynamicBlur"" ppEffectAdjust [0]; ""dynamicBlur"" ppEffectCommit 5;
			_unit = player;
			_selection = ""legs"";
			_damage = 0;
			_unit setHit[_selection,_damage];
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 6) then
	{
		_pos = getPos (_array select 1);
		admincrate = "USBasicAmmunitionBox" createVehicle _pos;
		{admincrate addWeaponCargoGlobal [_x, 5];} forEach
		['AK_107_GL_Kobra','AK_107_Kobra','AK_107_PSO','AK_47_M',
		'AK_47_S','AK_74','AK_74_GL','AK_74_GL_Kobra','AKS_74','AKS_74_Kobra',
		'AKS_74_PSO','AKS_74_U','AKS_74_UN_Kobra','AKS_GOLD','BAF_AS50_scoped',
		'BAF_AS50_TWS','BAF_L110A1_Aim','BAF_L7A2_GPMG','BAF_L85A2_RIS_ACOG',
		'BAF_L85A2_RIS_CWS','BAF_L85A2_RIS_Holo','BAF_L85A2_RIS_SUSAT',
		'BAF_L85A2_UGL_ACOG','BAF_L85A2_UGL_Holo','BAF_L85A2_UGL_SUSAT',
		'BAF_L86A2_ACOG','BAF_LRR_scoped','BAF_LRR_scoped_W','bizon','bizon_silenced',
		'Colt1911','Crossbow','DMR','G36_C_SD_camo','G36_C_SD_eotech','G36a',
		'G36A_camo','G36C','G36C_camo','G36K','G36K_camo','FN_FAL','FN_FAL_ANPVS4',
		'glock17_EP1','Huntingrifle','ksvk','LeeEnfield','M1014','m107_DZ',
		'M14_EP1','M16A2','M16A2GL','m16a4','m16a4_acg','M16A4_ACG_GL','M16A4_GL',
		'M24','M24_des_EP1','M240','m240_scoped_EP1','M249','M249_EP1','M249_m145_EP1',
		'M40A3','M4A1','M4A1_Aim','M4A1_Aim_camo','M4A1_AIM_SD_camo','M4A1_HWS_GL',
		'M4A1_HWS_GL_camo','M4A1_HWS_GL_SD_Camo','M4A1_RCO_GL','M4A3_CCO_EP1',
		'M4A3_RCO_GL_EP1','M4SPR','M60A4_EP1','M9','M9SD','Makarov','MakarovSD',
		'MeleeHatchet','MeleeCrowbar','MG36','Mk_48_DES_EP1','Mk_48_DZ','MP5A5',
		'MP5SD','MR43','Pecheneg','PK','Remington870_lamp','revolver_EP1',
		'revolver_gold_EP1','RPK_74','Sa61_EP1','Saiga12K','SVD','SVD_CAMO',
		'SVD_des_EP1','SVD_NSPU_EP1','UZI_EP1','UZI_SD_EP1','Winchester1866',
		'Binocular','Binocular_Vector','ItemCompass','ItemEtool','ItemFlashlight',
		'ItemFlashlightRed','ItemGPS','ItemHatchet','ItemKnife','ItemMap',
		'ItemMatchbox','ItemToolbox','ItemWatch','Laserdesignator',
		'NVGoggles'];
		{admincrate addMagazineCargoGlobal [_x, 20];} forEach
		['2Rnd_shotgun_74Slug','2Rnd_shotgun_74Pellets','5Rnd_127x108_KSVK',
		'5Rnd_127x99_as50','5Rnd_762x51_M24','5Rnd_86x70_L115A1','5x_22_LR_17_HMR',
		'6Rnd_45ACP','7Rnd_45ACP_1911','8Rnd_9x18_Makarov','8Rnd_9x18_MakarovSD',
		'8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_Pellets','8Rnd_B_Saiga12_74Slug',
		'8Rnd_B_Saiga12_Pellets','10Rnd_127x99_M107','10Rnd_762x54_SVD',
		'10x_303','15Rnd_9x19_M9','15Rnd_9x19_M9SD','15Rnd_W1866_Slug',
		'15Rnd_W1866_Pellet','17Rnd_9x19_glock17','20Rnd_556x45_Stanag',
		'20Rnd_762x51_DMR','20Rnd_762x51_FNFAL','20Rnd_B_765x17_Ball',
		'30Rnd_545x39_AK','30Rnd_545x39_AKSD','30Rnd_556x45_G36','30Rnd_556x45_G36SD',
		'30Rnd_556x45_Stanag','30Rnd_556x45_StanagSD','30Rnd_762x39_AK47',
		'30Rnd_9x19_MP5','30Rnd_9x19_MP5SD','30Rnd_9x19_UZI','30Rnd_9x19_UZI_SD',
		'50Rnd_127x108_KORD','64Rnd_9x19_Bizon','64Rnd_9x19_SD_Bizon','75Rnd_545x39_RPK',
		'100Rnd_762x51_M240','100Rnd_762x54_PK','100Rnd_556x45_BetaCMag','100Rnd_556x45_M249',
		'200Rnd_556x45_L110A1','200Rnd_556x45_M249','BoltSteel','1Rnd_HE_GP25',
		'1Rnd_HE_M203','1Rnd_Smoke_GP25','1Rnd_SmokeGreen_GP25','1Rnd_SmokeRed_GP25',
		'1Rnd_SmokeYellow_GP25','1Rnd_Smoke_M203','1Rnd_SmokeGreen_M203',
		'1Rnd_SmokeRed_M203','1Rnd_SmokeYellow_M203','6Rnd_HE_M203','BAF_ied_v1',
		'FlareGreen_GP25','FlareRed_GP25','FlareWhite_GP25','FlareYellow_GP25',
		'FlareGreen_M203','FlareRed_M203','FlareWhite_M203','FlareYellow_M203',
		'HandGrenade_East','HandGrenade_West','M136','SmokeShell','SmokeShellBlue',
		'SmokeShellGreen','SmokeShellOrange','SmokeShellPurple','SmokeShellRed',
		'SmokeShellYellow','PipeBomb','FoodCanBakedBeans','FoodCanFrankBeans',
		'FoodCanPasta','FoodCanSardines','FoodSteakCooked','FoodSteakRaw',
		'HandChemBlue','HandChemGreen','HandChemRed','HandRoadFlare','ItemAntibiotic',
		'ItemBandage','ItemBloodbag','ItemEpinephrine','ItemHeatPack','ItemJerrycan',
		'ItemJerrycanEmpty','ItemMorphine','ItemPainkiller','ItemSandbag','ItemSodaCoke',
		'ItemSodaEmpty','ItemSodaMdew','ItemSodaPepsi','ItemTankTrap','ItemTent',
		'ItemWire','ItemWaterbottle','ItemWaterbottleUnfilled','PartEngine',
		'PartFueltank','PartGeneric','PartGlass','PartWheel','PartWoodPile',
		'PartVRotor','TrapBear','TrashTinCan','TrashJackDaniels','Skin_Camo1_DZ',
		'Skin_Soldier1_DZ','Skin_Sniper1_DZ','Skin_Survivor2_DZ'];
		admincrate addBackpackCargoGlobal ['DZ_Backpack_EP1', 1];
	};
	if (_option == 7) then
	{
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit format ["if !(isServer) then
		{
			if (getPlayerUID player == '%1') then
			{
				[] spawn
				{
					if (isNil ""aatp"") then
					{
						aatp = true;
						_tempTime = time;
						time = ""aatp"";
						sleep 3;
						[_tempTime] spawn
						{
							_tempTime = (_this select 0) + 3;
							while {true} do
							{
								time = _tempTime;
								_tempTime = _tempTime + 1;
								sleep 1;
							};
						};
					};
					_tent = player;
					_dir = 90;
					_location = %2;
					_tent setdir _dir;
					_tent setpos _location;
					player reveal _tent;
				};
			};
		};", getPlayerUID (_array select 2), str (getPosATL (_array select 1))]; processInitCommands; clearVehicleInit (_list select 0);
		
	};
	if (_option == 8) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; [player, 999] spawn {
			private["_unit","_damage"];
			_unit = _this select 0;
			_damage = _this select 1;
			_inVehicle = (vehicle _unit != _unit);
			if (_unit == player) then {
				r_player_timeout = 999;
				if (_type == 1) then {r_player_timeout = r_player_timeout + 90};
				if (_type == 2) then {r_player_timeout = r_player_timeout + 60};
				r_player_unconscious = true;
				player setVariable["medForceUpdate",true,true];
				player setVariable ["unconsciousTime", r_player_timeout, true];
			};
			if (_inVehicle) then {
				_unit spawn {
					private["_veh","_unit"];
					_veh = vehicle _this;
					_unit = _this;
					waitUntil{(((position _veh select 2 < 1) and (speed _veh < 1)) or (!r_player_unconscious))};
					if (r_player_unconscious) then {
						_unit action ["eject", _veh];
						waitUntil{((vehicle _this) != _this)};
						sleep 1;
						_unit setVariable ["NORRN_unconscious", true, true];
						_unit playActionNow "Die";
					};
				};
			} else {
				_unit setVariable ["NORRN_unconscious", true, true];
				_unit playActionNow "Die";
			};
		};}] call RE;
	};
	if (_option == 9) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; _object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
			hint "Режим Бога ВКЛ";}] call RE;
	};
	if (_option == 10) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			hint "Режим Бога ВЫКЛ";}] call RE;
	};
	if (_option == 11) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
			hint "Ускорение ВКЛ!";
			waituntil {!isnull (finddisplay 46)};
			MY_KEYDOWN_FNC_xx1 = {

				_vcl = vehicle player;
				if(_vcl == player)exitwith{};

				_nos = _vcl getvariable "nitro";
				_supgrade = _vcl getvariable "supgrade";

				if(isEngineOn _vcl) then
				{
					switch (_this) do {
						case 17: {
							if(isEngineOn _vcl and !isnil "_supgrade") then
							{
								_vcl SetVelocity [(velocity _vcl select 0) * 1.011, (velocity _vcl select 1) *1.011, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["supgrade", 1, true];
							};
						};
						case 42: {
							if(isEngineOn _vcl and !isnil "_nos") then
							{
								_vcl setVelocity [(velocity _vcl select 0) * 1.01, (velocity _vcl select 1) * 1.01, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["nitro", 1, true];
							};
						};
					};
				};
			};
			while {true} do 
			{
				adminvehicleSpeedy = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC_xx1;false;"];
				sleep 0.1;
			};
		}] call RE;
	};
	if (_option == 12) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; _randomNess = [1,-1] call BIS_fnc_selectRandom;
		(vehicle player) SetVelocity [_randomNess * random(10)* cos getdir (vehicle player), _randomNess * random(10)* cos getdir (vehicle player), random(5)];

		hint "АЗАЗАЗАЗА)))0))";}] call RE;
	};
	if (_option == 13) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
		
			while {true} do {
				hint "ТЫ ПЬЯН, ИДИ ДОМОЙ ЛАЛКА)))00))";
			   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
			   nonapsi_ef ppEffectEnable true;
			   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
			   nonapsi_ef ppEffectCommit 1;
			   
			   sleep random(1);
			   
			   wetdist1 = ppEffectCreate ["wetDistortion", 2006];
				wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
				wetdist1 ppEffectEnable true;
				wetdist1 ppEffectCommit 0;
				ppe = ppEffectCreate ["colorCorrections", 1555]; 
				ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
				ppe ppEffectCommit 1;
				ppe ppEffectEnable true; 
				ppe2 = ppEffectCreate ["chromAberration", 1555]; 
				ppe2 ppEffectAdjust [0.01,0.01,true];
				ppe2 ppEffectCommit 1;
				ppe2 ppEffectEnable true;
				ppe3 = ppEffectCreate ["radialBlur", 1555]; 
				ppe3 ppEffectEnable true;
				ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
				ppe3 ppEffectCommit 1;

				sleep random(1);

				wetdist1 = ppEffectCreate ["wetDistortion", 2006];
				wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
				wetdist1 ppEffectEnable true;
				wetdist1 ppEffectCommit 0;

				sleep random(1);

			   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
			   nonapsi_ef ppEffectEnable true;
			   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
			   nonapsi_ef ppEffectCommit 1;
			   
			   sleep random(1);
			};

		}] call RE;
	};
};

publicVariable "tlmxzyxzy";

profileNamespace = "STR";
publicVariable "profileNamespace";

diag_log ("АнтиХак: инициализация...");