waitUntil {!isNil "BIS_fnc_init"};

_agent = createAgent ["Sheep", [0,0,0], [], 0, "FORM"];
_agent allowdamage false;
_agent disableAI "MOVE";
_agent disableAI "ANIM";

loadFile = "STRING";
markerText = "STRING";

_list = ["9428873","3121033","155780"];
noob_list = ["0"];
publicVariable "noob_list";

fn_genRand =
{
	_arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","0","1","2","3","4","5","6","7","8","9"];
	_gen = "v_";
	for "_i" from 1 to 5 do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_gen
};

_tlmrand1 = call fn_genRand;
_tlmrand2 = call fn_genRand;
_tlmrand3 = call fn_genRand;
_tlmrand4 = call fn_genRand;
_tlmrand5 = call fn_genRand;
_tlmrand6 = call fn_genRand;
_tlmrand7 = call fn_genRand;
_tlmrand8 = call fn_genRand;
_tlmrand9 = call fn_genRand;
_tlmrand10 = call fn_genRand;
_tlmrand11 = call fn_genRand;
_tlmrand12 = call fn_genRand;
_tlmrand13 = call fn_genRand;
_tlmrand14 = call fn_genRand;
_tlmrand15 = call fn_genRand;
_tlmrand16 = call fn_genRand;
_tlmrand17 = call fn_genRand;
_tlmrand18 = call fn_genRand;
_tlmrand19 = call fn_genRand;
_tlmrand20 = call fn_genRand;
_tlmrand21 = call fn_genRand;
_tlmrand22 = call fn_genRand;
_tlmrand23 = call fn_genRand;
_tlmrand24 = call fn_genRand;
_tlmrand25 = call fn_genRand;

call compile ("
"+_tlmrand1+" =
{
	
	
	[] spawn
	{
		[] spawn {sleep 1; if (isNil '"+_tlmrand21+"') then {endMission ""END1""; [] spawn {"+_tlmrand10+" = [player,""OPTIX OPTIX OPTIX""];publicVariable '"+_tlmrand10+"';};};};
	
	
		_sName = name player;
		_sUID = getPlayerUID player;
		"+_tlmrand16+" = true;
		while {"+_tlmrand16+"} do
		{
			sleep 0.1; "+_tlmrand7+" = true; "+_tlmrand21+" = ((getPlayerUID player) in [""hello there optix""]);
			if ((typeName player != ""OBJECT"") or (typeName true != ""BOOL"")) then
			{
				"+_tlmrand10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray ('player = '+(typeName player)+' - true = '+(typeName true))];
				publicVariable '"+_tlmrand10+"';
				for '_i' from 0 to 1 do {(findDisplay _i) closeDisplay 0;};
			};
		};
		"+_tlmrand10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray 'Loop Exited'];
		publicVariable '"+_tlmrand10+"';
		for '_i' from 0 to 1 do {(findDisplay _i) closeDisplay 0;};
	};
	
	BIS_MPF_remoteExecutionServer2 = compile preprocessFile (BIS_MP_Path + BIS_PATH_SQF + 'remExServer.sqf');
	BIS_MPF_remoteExecutionServer =
	{
		_input = (_this select 1) select 2;
		if (_input in ['switchmove','playmove','say','jipexec','execvm','spawn','titleCut','titleText']) then {_this call BIS_MPF_remoteExecutionServer2;};
	};
	"+_tlmrand2+" =
	{
		if (isNil '"+_tlmrand3+"') then
		{
			"+_tlmrand3+" = true;
			preProcessFileLineNumbers 'error';
			_fileArray = ['Scripts\ajmenu.sqf','wuat\screen.sqf','TM\menu.sqf','TM\screen.sqf','Scripts\menu.sqf','crinkly\keymenu.sqf','ASM\startup.sqf',
			'RSTMU\scr\startMenu.sqf','scr\startMenu.sqf','scr\STrial.sqf','wuat\vet@start.sqf','TM\keybind.sqf','startup.sqf','start.sqf','startupMenu.sqf','yolo\startup.sqf',
			'xTwisteDx\menu.sqf','wuat\start.sqf','TM\startmenu.sqf','infiSTAR_Menu\setup\startup.sqf','startMenu.sqf','custom.sqf','WiglegHacks\mainmenu.sqf',
			'TM\98. Enable hotkeys --------------------------------------------------.sqf','TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'97. Secret hakez -----------------------------------------------------.sqf','0------------------------------------------------------------------------------.sqf',
			'bowenisthebest.sqf','Scripts\Menu_Scripts\empty.sqf','Missions\Scripts\ajmenu.sqf','@mymod\Scripts\ajmenu.sqf','i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'yolo\w4ssup YoloMenu v2.sqf','Menus\infiSTAR_SEVEN\startup.sqf','Menus\battleHIGH_Menu\startup.sqf','battleHIGH_Menu\startup.sqf','infiSTAR_SEVEN\startup.sqf',
			'infiSTAR_EIGHT\startup.sqf','infiSTAR_SSH\startup.sqf','TM\start.sqf','TM\DemonicMenu.sqf','Scripts\screen.sqf','Scripts\start.sqf','Scripts\startmenu.sqf',
			'Rustler v4\startup.sqf','Rustler v5\startup.sqf','Rustler v4\exec.sqf','Rustler v5\exec.sqf','Missions\battleHIGH_Menu\startup.sqf',
			'Scripts\exec.sqf','Scripts\list.sqf','Scripts\mah.sqf','Menu\start.sqf','Menu\startup.sqf','i_n_f_i_S_T_A_R.sqf','i_n_f_i_S_T_A_R___Menu\list.sqf',
			'infiSTAR_Confin3d_edit\infiSTAR.sqf','infiSTAR_Confin3d_edit\startup.sqf','RustlerV5\startup.sqf',
			'Rustlerv5\exec.sqf.sqf','Rustlerv4\startup.sqf','Rustlerv4\exec.sqf','YoloMenu Updated v6.sqf','Scripts\YoloMenu Updated v6.sqf','yolo\YoloMenu Updated v6.sqf',
			'Common\scr\exec.sqf','Common\Scripts\ajmenu.sqf','Common\wuat\screen.sqf','Common\TM\menu.sqf','Common\TM\screen.sqf','Common\Scripts\menu.sqf','Common\crinkly\keymenu.sqf','Common\ASM\startup.sqf',
			'Common\RSTMU\scr\startMenu.sqf','Common\scr\startMenu.sqf','Common\scr\STrial.sqf','Common\wuat\vet@start.sqf','Common\TM\keybind.sqf','Common\startup.sqf','Common\start.sqf','Common\startupMenu.sqf','Common\yolo\startup.sqf',
			'Common\xTwisteDx\menu.sqf','Common\wuat\start.sqf','Common\TM\startmenu.sqf','Common\infiSTAR_Menu\setup\startup.sqf','Common\startMenu.sqf','Common\custom.sqf','Common\WiglegHacks\mainmenu.sqf',
			'Common\TM\98. Enable hotkeys --------------------------------------------------.sqf','Common\TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'Common\97. Secret hakez -----------------------------------------------------.sqf','Common\0------------------------------------------------------------------------------.sqf',
			'Common\bowenisthebest.sqf','Common\Scripts\Menu_Scripts\empty.sqf','Common\@mymod\Scripts\ajmenu.sqf','Common\i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'Common\yolo\w4ssup YoloMenu v2.sqf','Common\Menus\infiSTAR_SEVEN\startup.sqf','Common\Menus\battleHIGH_Menu\startup.sqf','Common\battleHIGH_Menu\startup.sqf','Common\infiSTAR_SEVEN\startup.sqf',
			'Common\infiSTAR_EIGHT\startup.sqf','Common\infiSTAR_SSH\startup.sqf','Common\TM\start.sqf','Common\TM\DemonicMenu.sqf','Common\Scripts\screen.sqf','Common\Scripts\start.sqf','Common\Scripts\startmenu.sqf',
			'Common\Rustler v4\startup.sqf','Common\Rustler v5\startup.sqf','Common\Rustler v4\exec.sqf','Common\Rustler v5\exec.sqf',
			'Common\Scripts\exec.sqf','Common\Scripts\list.sqf','Common\Scripts\mah.sqf','Common\Menu\start.sqf','Common\Menu\startup.sqf','Common\i_n_f_i_S_T_A_R.sqf','Common\i_n_f_i_S_T_A_R___Menu\list.sqf',
			'Common\infiSTAR_Confin3d_edit\infiSTAR.sqf','Common\infiSTAR_Confin3d_edit\startup.sqf','Common\RustlerV5\startup.sqf',
			'Common\Rustlerv5\exec.sqf.sqf','Common\Rustlerv4\startup.sqf','Common\Rustlerv4\exec.sqf','Common\YoloMenu Updated v6.sqf','Common\Scripts\YoloMenu Updated v6.sqf','Common\yolo\YoloMenu Updated v6.sqf',
			'Missions\scr\exec.sqf','Missions\wuat\screen.sqf','Missions\TM\menu.sqf','Missions\TM\screen.sqf','Missions\Scripts\menu.sqf','Missions\crinkly\keymenu.sqf','Missions\ASM\startup.sqf',
			'Missions\RSTMU\scr\startMenu.sqf','Missions\scr\startMenu.sqf','Missions\scr\STrial.sqf','Missions\wuat\vet@start.sqf','Missions\TM\keybind.sqf','Missions\startup.sqf',
			'Missions\start.sqf','Missions\startupMenu.sqf','Missions\yolo\startup.sqf',
			'Missions\xTwisteDx\menu.sqf','Missions\wuat\start.sqf','Missions\TM\startmenu.sqf','Missions\infiSTAR_Menu\setup\startup.sqf','Missions\startMenu.sqf','Missions\custom.sqf','Missions\WiglegHacks\mainmenu.sqf',
			'Missions\TM\98. Enable hotkeys --------------------------------------------------.sqf','Missions\TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'Missions\97. Secret hakez -----------------------------------------------------.sqf','Missions\0------------------------------------------------------------------------------.sqf',
			'Missions\bowenisthebest.sqf','Missions\Scripts\Menu_Scripts\empty.sqf','Missions\@mymod\Scripts\ajmenu.sqf','Missions\i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'Missions\yolo\w4ssup YoloMenu v2.sqf','Missions\Menus\infiSTAR_SEVEN\startup.sqf','Missions\Menus\battleHIGH_Menu\startup.sqf','Missions\infiSTAR_SEVEN\startup.sqf',
			'Missions\infiSTAR_EIGHT\startup.sqf','Missions\infiSTAR_SSH\startup.sqf','Missions\TM\start.sqf','Missions\TM\DemonicMenu.sqf','Missions\Scripts\screen.sqf','Missions\Scripts\start.sqf','Missions\Scripts\startmenu.sqf',
			'Missions\Rustler v4\startup.sqf','Missions\Rustler v5\startup.sqf','Missions\Rustler v4\exec.sqf','Missions\Rustler v5\exec.sqf',
			'Missions\Scripts\exec.sqf','Missions\Scripts\list.sqf','Missions\Scripts\mah.sqf','Missions\Menu\start.sqf','Missions\Menu\startup.sqf','Missions\i_n_f_i_S_T_A_R.sqf','Missions\i_n_f_i_S_T_A_R___Menu\list.sqf',
			'Missions\infiSTAR_Confin3d_edit\infiSTAR.sqf','Missions\infiSTAR_Confin3d_edit\startup.sqf','Missions\RustlerV5\startup.sqf',
			'Missions\Rustlerv5\exec.sqf.sqf','Missions\Rustlerv4\startup.sqf','Missions\Rustlerv4\exec.sqf','Missions\YoloMenu Updated v6.sqf','Missions\Scripts\YoloMenu Updated v6.sqf','Missions\yolo\YoloMenu Updated v6.sqf',
			'ASM\_for_keybinds\mystuff.sqf','wookie_wuat\startup.sqf','gc_menu\starten.sqf',
			'gc_menu\uitvoeren.sqf','tm\starthack.sqf','scr_wasteland\menu\initmenu.sqf','scr_wasteland\exec.sqf',
			'infiSTAR_chewSTAR_Menu\infiSTAR_chewSTAR.sqf','infiSTAR_chewSTAR_Menu\scrollmenu\addweapon.sqf',
			'Demonic Menu\scr\startMenu.sqf','Demonic Menu\TM\STARTMENU.sqf','scr\scr\keybinds.sqf',
			'RustleSTAR_Menu\menu\initmenu.sqf','RustleSTAR_Menu\setup\startup.sqf','RustleSTAR_Menu\menu\initmenu.sqf',
			'Pickled Menu 3.0\Scripts\ajmenu.sqf','Pickled Menu 3.0\Scripts\exec.sqf','ShadowyFaze\exec.sqf','DayZLegendZ Scripts\Menu_Scripts\exec.sqf','DayZLegendZ Scripts\mah.sqf',
			'Scripts\mpghmenu.sqf','DevCon.pbo','DayZLegendZ Scripts\startMenu.sqf','DayZLegendZ Scripts\mah.sqf','EASYTM\start.sqf','Rustler v6\startup.sqf'];
			for '_i' from 0 to (count _fileArray)-1 do
			{
				if ((preProcessFileLineNumbers (_fileArray select _i)) != '') then
				{
					"+_tlmrand10+" = [name player, getPlayerUID player, toArray 'Script', toArray (_fileArray select _i)];
					publicVariable '"+_tlmrand10+"';
					for '_j' from 0 to 99 do {(findDisplay _j) closeDisplay 0;};
				};
				sleep 0.1;
			};
			sleep 60;
			"+_tlmrand3+" = nil;
		};
	};
	"+_tlmrand4+" =
	{
		if (isNil '"+_tlmrand5+"') then
		{
			"+_tlmrand5+" = true;
			"+_tlmrand10+" = [name player, getPlayerUID player, _this select 0];
			publicVariable '"+_tlmrand10+"';
			sleep 1;
			"+_tlmrand5+" = nil;
		};
	};
	"+_tlmrand6+" =
	{
		_key = _this select 1;
		_shift = _this select 2;
		_ctrl = _this select 3;
		_alt = _this select 4;
		if ((_key == 0xD3) && !_alt && !_ctrl) then {['Delete'] spawn "+_tlmrand4+";};
		if (_key == 0xD2) then {['Insert'] spawn "+_tlmrand4+";};
		if (_key == 0x58) then {['F12'] spawn "+_tlmrand4+";};
		if (_key == 0x3B) then {['F1'] spawn "+_tlmrand4+";};
		if (_key == 0x3C) then {['F2'] spawn "+_tlmrand4+";};
		if (_key == 0x3D) then {['F3'] spawn "+_tlmrand4+";};
		if (_key == 0x47) then {['Home'] spawn "+_tlmrand4+";};
		if (_key == 0xC7) then {['Home2'] spawn "+_tlmrand4+";};
		if ((_key == 0x3E) && _alt) then {['Alt-F4'] spawn "+_tlmrand4+";};
		if ((_key == 0x29) && _shift) then {['DAMI'] spawn "+_tlmrand4+";};
		if ((_key == 0x19) && _shift) then {['Shift-P'] spawn "+_tlmrand4+";};
		if (_key == 0x0F) then {['TAB'] spawn "+_tlmrand4+";};
	};
	[] spawn "+_tlmrand2+";
	[] spawn
	{
		"+_tlmrand20+" = true;
		while {"+_tlmrand20+"} do
		{
			{
				if (!(_x isKindOf ""TentStorage"") and !(_x isKindOf ""AllVehicle"") and (_x != player)) then
				{
					if ((((count ((getWeaponCargo _x) select 1))+(count ((getMagazineCargo _x) select 1))) > 50) or (count ([currentWeapon _x] + (weapons _x) + (magazines _x)) > 40)) then {
						diag_log (""АнтиХак: Читерский ящик удален!"" + (typeOf _x));
						deleteVehicle _x;
					};
				};
			} foreach (position player nearObjects 50);
			sleep 0.2;
		};
	};
	[] spawn
	{
	    "+_tlmrand22+" = true;
		while {"+_tlmrand22+"} do
		{
		  if !(viewDistance == 1600) then
          {
		    "+_tlmrand10+" = [name player, getPlayerUID player, toArray 'ViewDistance Modification', toArray (str viewDistance)];
		    publicVariable '"+_tlmrand10+"';
	        for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};   
			sleep 1.0;
          };
		};
    };
    [] spawn
	{
	    "+_tlmrand23+" = false;
	    _recoil = unitRecoilCoefficient player;
		while {"+_tlmrand23+"} do
		{
          if !(_recoil == 1) then
          {
	         "+_tlmrand10+" = [name player, getPlayerUID player, toArray 'Recoil Modification', toArray (str _recoil)];
		    publicVariable '"+_tlmrand10+"';
	        for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
			sleep 0.1;
          };
		};
    };
    [] spawn
	{
	    "+_tlmrand24+" = true;
		while {"+_tlmrand24+"} do
		{
		    setTerrainGrid 12.5;
			sleep 3.0;
		};
    };
	[] spawn
	{
		"+_tlmrand15+" = false;
		while {"+_tlmrand15+"} do
		{
			{
				if !(isNil _x) exitWith
				{
					"+_tlmrand10+" = [name player, getPlayerUID player, toArray 'Global Var', toArray _x];
					publicVariable '"+_tlmrand10+"';
					for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
				};
			} forEach [];
			if ((groupIconsVisible select 0) or (groupIconsVisible select 1)) exitWith
			{
				"+_tlmrand10+" = [name player, getPlayerUID player, toArray 'Group Icons', toArray (str groupIconsVisible)];
				publicVariable '"+_tlmrand10+"';
				for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
			};
			[] spawn "+_tlmrand2+";
			sleep 10;
		};
	};
	[] spawn
	{
		"+_tlmrand17+" = true;
		while {"+_tlmrand17+"} do
		{
			_items = [currentWeapon player] + (weapons player) + (magazines player);
			{
				if (_x in _items) then
				{
					[_x,_items] spawn
					{
						_item = _this select 0;
						_items = _this select 1;
						if (_item in ['Mine','MineE','pipebomb']) then
						{
							for '_i' from 0 to ({_x == _item} count _items) do {player removeMagazine _item;};
						} else {for '_i' from 0 to ({_x == _item} count _items) do {player removeWeapon _item;};};
					};
					"+_tlmrand10+" = [name player, getPlayerUID player, toArray 'Bad Item', toArray _x];
					publicVariable '"+_tlmrand10+"';
				};
			} forEach ([] +
			
			[]);
			sleep 10;
		};
	};
	[] spawn
	{
		"+_tlmrand18+" = true;
		while {"+_tlmrand18+"} do
		{
			_cMenuDefault = ["""",""RscMainMenu"",""RscMoveHigh"",""#WATCH"",""#WATCH0"",""RscWatchDir"",""RscWatchMoreDir"",""#GETIN"",""RscStatus"",""RscCallSupport"",""#ACTION"",""RscCombatMode"",""RscFormations"",""RscTeam"",""RscSelectTeam"",""RscReply"",""#CUSTOM_RADIO"",""RscRadio"",""RscGroupRootMenu""];
			if !(commandingMenu in _cMenuDefault) then {showCommandingMenu """";};
			_tempRemoveAction = player addAction ["""", """", [], 1, false, true, """", ""false""];
			_startRemove = _tempRemoveAction - 50;
			_endRemove = _tempRemoveAction + 100;
			for '_i' from _startRemove to _endRemove do
			{
				_dayzActions = (s_player_repairActions + r_player_actions2 + r_player_actions + s_player_takingActions +
				[s_player_fire,s_player_cook,s_player_boil,s_player_fireout,s_player_butcher,s_player_packtent,s_player_fillwater,
				s_player_fillwater2,s_player_fillfuel,s_jerry_fill_from_veh,s_player_grabflare,s_player_selfBloodbag,s_player_removeflare,s_player_painkiller,s_clothes,s_player_studybody,s_player_tamedog,
				s_build_Sandbag1_DZ,s_build_Hedgehog_DZ,player_selfbloodbag,s_build_Wire_cat1,s_player_deleteBuild,s_player_forceSave,s_player_flipveh,s_player_stats,
				s_player_sleep,s_player_refuelAction,s_player_movedog,s_player_speeddog,s_player_calldog,s_player_feeddog,s_player_waterdog,s_player_staydog,s_player_trackdog,
				s_player_barkdog,s_player_warndog,s_player_followdog,s_player_fillfuel20,s_player_fillfuel5,s_player_suicide,f_groupJoinAction]);
				if (!(_i in _dayzActions) and (_i > -1)) then {player removeAction _i};
			};
			player allowDamage true;
			sleep 0.01;
		};
	};
};
BIS_MPF_remoteExecutionServer =
{
	if ((_this select 1) select 2 == ""JIPrequest"") then
	{
		_playerObj = (_this select 1) select 0;
		remExField = [nil, nil, format ["";if !(isServer) then {[] spawn "+_tlmrand19+";};""]];
		(owner _playerObj) publicVariableClient ""remExField"";

		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit ""if !(isServer) then {[getPlayerUID player] spawn "+_tlmrand8+";};""; processInitCommands;
		clearVehicleInit (_list select 0);
	};
};
"""+_tlmrand10+""" addPublicVariableEventHandler
{
	if (count (_this select 1) == 3) then
	{
		_name = (_this select 1) select 0;
		_uid = (_this select 1) select 1;
		_key = (_this select 1) select 2;
		_log = format [""АнтиХак: %1 (%2) нажал на: %3"", _name, _uid, _key];
		diag_log (_log);
	}
	else
	{
		if (count (_this select 1) == 1) then
		{
			_player = (_this select 1) select 0;
			_uid = getPlayerUID _player;
			_log = format [""АнтиХак: %1 (%2) подозрение на: %3 (%4)"", name _player, getPlayerUID _player, ""Anti-Hax OFF"", format [""Time: %1"", str time]];
			diag_log (_log);
		}
		else
		{
			if (count (_this select 1) == 2) then
			{
				_player = (_this select 1) select 0;
				_uid = getPlayerUID _player;
				_log = format [""АнтиХак: %1 (%2) подозрение на: %3 (%4)"", name _player, getPlayerUID _player, ""VA Bypass"", format [""Time: %1"", str time]];
				diag_log (_log);
			}
			else {
				_array = _this select 1;
				_name = _array select 0;
				_uid = _array select 1;
				_reason = toString (_array select 2);
				_field = toString (_array select 3);
				_log = format [""АнтиХак: %1 (%2) подозрение на: %3 (%4)"", _name, _uid, _reason, _field, dayZ_instance];
				diag_log (_log);
				"+_tlmrand13+" = format [""АнтиХак оповещение: %1 подозрение на: %2 (%3)"", _name, _reason, _field];
				publicVariable """+_tlmrand13+""";
			};
		};
	};
};
"+_tlmrand8+" =
{
	waitUntil {(typeName (getPlayerUID player) == ""STRING"") and ((getPlayerUID player) != """")};
	_"+_tlmrand14+" = (getPlayerUID player);
	if (!(_"+_tlmrand14+" in "+(str _list)+") && !(isNull player)) then
	{
		if (isNil '"+_tlmrand11+"') then
		{
			waitUntil {!isNil 'dayz_Totalzedscheck'};
			"+_tlmrand11+" = true;
			sleep 10;
			"+_tlmrand7+" = false;
			sleep 5;
			if !("+_tlmrand7+") then
			{
				"+_tlmrand10+" = [player];
				publicVariable '"+_tlmrand10+"';
				endMission ""END1"";
			};
			"+_tlmrand11+" = nil;
		};
	};
};
"+_tlmrand9+" =
{
	hackerLog = [];
	keyLog = [];
	"""+_tlmrand10+""" addPublicVariableEventHandler
	{
		if ((count hackerLog) > 150) then
		{
			for ""_i"" from 0 to 49 do
			{
				hackerLog = hackerLog - [hackerLog select 0];
			};
		};
		if ((count keyLog) > 150) then
		{
			for ""_i"" from 0 to 49 do
			{
				keyLog = keyLog - [keyLog select 0];
			};
		};
		if (count (_this select 1) == 3) then
		{
			_name = (_this select 1) select 0;
			_uid = (_this select 1) select 1;
			_key = (_this select 1) select 2;
			_log = format [""АнтиХак: %1 (%2) нажал на: %3"", _name, _uid, _key];
			keyLog = keyLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
		}
		else
		{
			if (count (_this select 1) == 1) then
			{
				_player = (_this select 1) select 0;
				_log = format [""АнтиХак: %1 (%2) подозрение на: %3 (%4)"", name _player, getPlayerUID _player, ""Anti-Hax OFF"", format [""Time: %1"", str time]];
				hackerLog = hackerLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
			}
			else
			{
				if (count (_this select 1) == 2) then
				{
					_player = (_this select 1) select 0;
					_uid = getPlayerUID _player;
					_log = format [""АнтиХак: %1 (%2) подозрение на: %3 (%4)"", name _player, getPlayerUID _player, ""VA Bypass"", format [""Time: %1"", str time]];
					hackerLog = hackerLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
				}
				else {
					_array = _this select 1;
					_name = _array select 0;
					_uid = _array select 1;
					_reason = toString (_array select 2);
					_field = toString (_array select 3);
					_log = format [""АнтиХак: %1 (%2) подозрение на: %3 (%4)"", _name, _uid, _reason, _field];
					hackerLog = hackerLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
				};
			};
		};
	};
};
"+_tlmrand19+" =
{
	[] execVM ""ca\Modules\Functions\init.sqf"";
	waitUntil {(typeName (getPlayerUID player) == ""STRING"") and ((getPlayerUID player) != """")};
	_puid = getPlayerUID player;
	if (_puid in "+(str _list)+") then
	{
		'"+_tlmrand13+"' addPublicVariableEventHandler {taskHint [_this select 1, [1, 0.05, 0.55, 1], 'taskNew'];};
		[] spawn "+_tlmrand9+";
		[] spawn tlmxzyxzy;
	}
	else
	{
		[] spawn
		{
			waitUntil {!isNil 'dayz_Totalzedscheck'};
			_blCmd = ['createDiaryRecord','createTask','createSimpleTask','buttonSetAction','processDiaryLink','createDiaryLink',
			'lbSetData','createMarkerLocal','createTeam','profileNamespace','exec'];
			for '_i' from 0 to (count _blCmd)-1 do {call compile ((_blCmd select _i)+""='STRING';"");};
			_retArr = ['allUnits','entities','allMissionObjects','vehicles','playableUnits'];
			for '_j' from 0 to (count _retArr)-1 do {call compile ((_retArr select _j)+""=[player];"");};
		};
		_id = [] spawn "+_tlmrand1+";
	};
};
publicVariable """+_tlmrand1+""";
publicVariable """+_tlmrand8+""";
publicVariable """+_tlmrand9+""";
publicVariable """+_tlmrand19+""";
");

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
			adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Лог Нажатий Кнопок","keyLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Управление Сервером","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Kick",adminkick,"0","0","0","1",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Спавн Скрипт ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Переключатели состояний ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Переключить Маркеры карте",adminmark,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить ESP",adminesp,"1","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Целевые скрипты ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Следить за целью",adminspec,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Переместиться к цели",admintele,"0","0","0","1",[]];
			adminadd = adminadd + ["     Переместить цель ко мне",admint2me,"0","0","0","1",[]];
			 adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Смешанные ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Удалить Цель Под Курсором",{deleteVehicle cursorTarget;},"0","0","0","0",[]];
			 adminadd = adminadd + ["     Обход Anti-TP",admin_aatp,"0","0","0","0",[]];
		}
		else {
			adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Управление Сервером","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Kick",adminkick,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Ban",adminban,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Clear Ban List",adminClearBan,"0","0","0","0",[]];
			 adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Спавн Скрипт ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Спавн транпорта","Vehicles","0","0","1","0",[]];
			 adminadd = adminadd + ["     Спавн Строений","Objects","0","0","1","0",[]];
			 adminadd = adminadd + ["     Спавн Оружия и Снаряжения","Weaponz","0","0","1","0",[]];
			 adminadd = adminadd + ["     Спавн Ящика",admincrate,"0","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Переключатели состояний ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Toggle TP",{if !(tpEnabled) then {tpEnabled = true;} else {tpEnabled = false;};},"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить Маркеры карте",adminmark,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить ESP",adminesp,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить God",admingod,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить скин",adminskin,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить Ускорение",adminVehicleSpeed,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить Невидимость",admininvis,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Переключить Зашита от зомби",adminZombieShield,"1","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Целевые скрипты ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Следить за целью",adminspec,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Переместиться к цели",admintele,"0","0","0","1",[]];
			adminadd = adminadd + ["     Переместить цель ко мне",admint2me,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Сломать цели ногу",adminbreakleg,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Убить цель",adminkill,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Пнуть цель",adminUncon,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Вылечить цель",adminheal,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Режим БОГА для цели",{[_this select 0, 1] call adminGiveGod;},"0","0","0","1",[]];
			 adminadd = adminadd + ["     UnGod Target",{[_this select 0, 0] call adminGiveGod;},"0","0","0","1",[]];
			 adminadd = adminadd + ["     Ускорить транспорт цели",adminTargetVehBoost,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Пощещина цели",adminSlap,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Drug Target",adminDrug,"0","0","0","1",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" WeatherLord ","Weather","0","0","1","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Смешанные ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Починить транспорт",adminrepair,"0","0","0","0",[]];
			 adminadd = adminadd + ["     Удалить Цель Под Курсором",{deleteVehicle cursorTarget;},"0","0","0","0",[]];
			 adminadd = adminadd + ["     Обход Anti-TP",admin_aatp,"0","0","0","0",[]];
			 adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + [" Добавлен скрипт NonStop ","","0","0","1","0",[1,0.1,0.55,1]]; //free scripts
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Пополнить боеприпас",refil_add,"0","0","0","0",[]]; //free scripts
			 adminadd = adminadd + ["     просмотреть инвентарь",spec_inventr,"0","0","0","0",[]]; //free scripts
			 adminadd = adminadd + ["     Бесконечные патроны",{[] spawn {while{true} do {(vehicle player) setVehicleAmmo 0.99; sleep 0.1;};};},"0","0","0","0",[]]; //free scripts
			 adminadd = adminadd + ["     Замечательная смерть(xD)",wonderful_Death,"0","0","0","0",[]]; //free scripts
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
			 adminadd = adminadd + ["","","0","1","0","0",[]]; //do not edit
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
			if (_code == "Weather") exitWith {call admin_weather};
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
				hint "Select a player!";
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
	adminZombieShield =
	{
		if (isNil "adminZombieShieldz") then {adminZombieShieldz = 0;};
		if (adminZombieShieldz == 0) then
		{
			hint "Zombie shield On";
			adminZombieShieldz = 1;
			while {adminZombieShieldz == 1} do
			{
				{
					_x setDamage 1.1;
				} forEach ((position player) nearEntities ["zZombie_Base",10]);
				sleep 0.8;
			};
		}
		else
		{
			hint "Zombie shield Off";
			adminZombieShieldz = 0;
		};
	};
	adminVehicleSpeed =
	{
		if (isNil "adminvehicleSpeedz") then {adminvehicleSpeedz = 0;};
		if (adminvehicleSpeedz == 0) then
		{
			hint "Speed upgrade loaded!";
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
								_vcl setvariable ["supgrade", 1];
							};
						};
						case 42: {
							if(isEngineOn _vcl and !isnil "_nos") then
							{
								_vcl setVelocity [(velocity _vcl select 0) * 1.01, (velocity _vcl select 1) * 1.01, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["nitro", 1];
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
		while {!(isNull (findDisplay 3030))} do
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
			sleep 15;
		};
	};
	admin_fillveh =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] call adminsveh;";
		adminadd = [];
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
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
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
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
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
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
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
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
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["    Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
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
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
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
	admin_weather =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Главное меню","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Лог Читаков","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список использовавших чит-клавиши","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Список UID игроков","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];

		adminadd = adminadd + ["     View Distance ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      1",{hint "Changing distance to 1";tlmadminrq = [17,player,1,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      500",{hint "Changing distance to 500";tlmadminrq = [17,player,1,500];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1000",{hint "Changing distance to 1000";tlmadminrq = [17,player,1,1000];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      2000",{hint "Changing distance to 2000";tlmadminrq = [17,player,1,2000];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3000",{hint "Changing distance to 3000";tlmadminrq = [17,player,1,3000];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["     Overcast ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      Clear",{hint "Clear Weather";tlmadminrq = [17,player,2,0];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Partly Sunny",{hint "Partly Sunny";tlmadminrq = [17,player,2,0.2];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Cloudy",{hint "Cloudy";tlmadminrq = [17,player,2,0.4];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Rain",{hint "Rain";tlmadminrq = [17,player,2,0.6];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Heavy Rain",{hint "Heavy Rain";tlmadminrq = [17,player,2,0.8];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Storm",{hint "Storm";tlmadminrq = [17,player,2,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		/*
		adminadd = adminadd + ["     Rain ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      No Rain",{hint "No Rain";tlmadminrq = [17,player,3,0];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Partly Rain",{hint "Partly Rain";tlmadminrq = [17,player,3,0.2];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      A Little Rain",{hint "A Little Rain";tlmadminrq = [17,player,3,0.4];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Rain",{hint "Rain";tlmadminrq = [17,player,3,0.6];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Heavy Rain",{hint "Heavy Rain";tlmadminrq = [17,player,3,0.8];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Mega Rain",{hint "Mega Rain";tlmadminrq = [17,player,3,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		*/
	
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
				hint format ["Healing %1", _this select 0];
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
			_vehicle setfuel 1;
			_vehicle setvehicleammo 1;
			PVDZ_veh_SetFuel = [_vehicle,_newFuel];
			PVDZ_veh_SetFuel spawn local_setFuel;
			publicVariable "PVDZ_veh_SetFuel";
			hint format ["Repairing %1", getText (configFile >> 'CfgVehicles' >> (typeOf _vehicle) >> 'displayName')];
		} else {hint "Not in a vehicle!"};
	};
	refil_add = {_item = currentweapon player;
	_mags = getarray(configfile >> 'cfgWeapons' >> _item >> 'magazines');
	_config = _mags select 0;
	_isOK = [player,_config] call BIS_fnc_invAdd;
	_isOK = [player,_config] call BIS_fnc_invAdd;
	_isOK = [player,_config] call BIS_fnc_invAdd;
	Hint "Ammo Refilled";	
	};
	spec_inventr = {_do_splr = 
	{

	_splr = _this select 0;	
	createGearDialog [(_splr), "RscDisplayGear"];

			
	};


	_n2sh = 10; _n2c = "Select Player:";shnext = false; nlist = [];  selectedinvent = "";

	if (isNil "invenr") then 
	{
		 
	{if ((_x != player) and (getPlayerUID _x != "")) then {nlist set [count nlist, name _x];};} foreach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	{if ((count crew _x)>0) then {{if ((_x != player) and (getPlayerUID _x != "")) then {nlist set [count nlist, name _x];};} forEach crew _x;};
	} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	Meninve = 
	{
		_pmenu = [["",true],[_n2c, [-1], "", -5, [["expression", ""]], "1", "0"]];
		for "_i" from (_this select 0) to (_this select 1) do
		{_arr = [format['%1',nlist select (_i)], [_i - (_this select 0) + 2],  "", -5, [["expression", format["selectedinvent = nlist select %1;",_i]]], "1", "1"];_pmenu set [_i+2, _arr];};
		if (count nlist >  (_this select 1)) then {_pmenu set [(_this select 1)+2, ["Next", [12], "", -5, [["expression", "shnext = true;"]], "1", "1"]];}
		else {_pmenu set [(_this select 1)+2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];};
		_pmenu set [(_this select 1)+3, ["Exit", [13], "", -5, [["expression", "selectedinvent = 'exitscript';"]], "1", "1"]];
		showCommandingMenu "#USER:_pmenu";
	};
	_j = 0; _n2sh = 10; if (_n2sh>9) then {_n2sh=10;};
	while {selectedinvent==""} do
	{
		[_j,(_j+_n2sh) min (count nlist)] call Meninve;_j=_j+_n2sh;
		WaitUntil {selectedinvent!="" or shnext};	
		shnext = false;
	};

	
	if (selectedinvent!= "exitscript") then
	{
		_name = selectedinvent;
		{if(format[name _x] == _name) then {[_x] call _do_splr;};} foreach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	invenr = !invenr;
	
	};
	};
	admincrate =
	{
		tlmadminrq = [6,player];
		publicVariable "tlmadminrq";
		hint "Spawning Box";
	};
	wonderful_Death = {player selectWeapon (secondaryWeapon player);
	player removeWeapon (primaryWeapon player);
	player playMoveNow "ActsPercMstpSnonWpstDnon_suicide1B";
	
	waitUntil {animationState player == "ActsPercMstpSnonWpstDnon_suicide1B"};
	sleep 4.2;
	
	player fire (currentWeapon player);
	
	sleep 0.75;
	
	_aim = player;
	if (_aim == player) then
	{
		_aim setDamage 1.1;
	};};
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
				_entities = ([6800, 9200, 0] nearEntities [["LandVehicle", "Air", "Ship"], 110000000]);
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
			_entities = ([6800, 9200, 0] nearEntities [["LandVehicle", "Air", "Ship"], 110000000]);
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminvmark" + (str _i));};
		};
		adminMiscMark =
		{
			while {mark == 1} do
			{
				_entities = (allMissionObjects "tentStorage")+(allMissionObjects "UH1Wreck_DZ")+(allMissionObjects "UH60Wreck_DZ")
				+(allMissionObjects "Mi8Wreck_DZ");
				
				for "_i" from 0 to (count _entities)-1 do
				{
					deleteMarkerLocal ("adminMiscMark" + (str _i));
					_vm = createMarkerLocal [("adminMiscMark" + (str _i)), getPos (_entities select _i)];
					_vm setMarkerTypeLocal "destroyedvehicle";
					_vm setMarkerSizeLocal [0.8, 0.8];
					_vm setMarkerTextLocal format ["%1", getText (configFile >> 'CfgVehicles' >> (typeof (_entities select _i)) >> 'displayName')];
					_vm setMarkerColorLocal ("ColorOrange");
				};
				sleep 10;
			};
			_entities = (allMissionObjects "tentStorage")+(allMissionObjects "UH1Wreck_DZ")+(allMissionObjects "UH60Wreck_DZ")
						+(allMissionObjects "Mi8Wreck_DZ");
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminMiscMark" + (str _i));};
		};
		if (isNil "mark") then {mark = 0;};
		if (mark == 0) then
		{
			mark = 1;
			hint "2D Map Markers Enabled";
			[] spawn adminpmark;
			[] spawn adminvmark;
			[] spawn adminMiscMark;
		}
		else
		{
			mark = 0;
			hint "2D Map Markers Disabled";
		};
	};
	adminesp =
	{
		xdistance = 1200;
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
			hint "ESP Enabled";
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
			hint "ESP Disabled";
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
			hint "God Enabled";
		}
		else
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			gmdadmin = 0;
			hint "God Disabled";
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
			hint "Invisibility Enabled";
		}
		else
		{
			tlmadminrq = [3, player, false];
			publicVariable "tlmadminrq";
			inv1 = 0;
			hint "Invisibility Disabled";
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
				hint format ["Moving to %1", _this select 0];
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
				hint format ["Breaking %1's legs", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminspec =
	{
		{
			if (name _x == _this select 0) then
			{
				_x switchCamera "EXTERNAL";
				hint format ["Spectating %1, press F10 to cancel", name _x];
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
				hint format ["Killing %1", _this select 0];
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
				hint format ["Vehicle Boost @ %1", _this select 0];
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
				hint format ["Teleporting %1", _this select 0];
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
				hint format ["Putting %1 to sleep...", _this select 0];
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
				hint format ["Slapping %1...", _this select 0];
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
				hint format ["Drugging %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminBan =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [15,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Banned %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminKick =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [14,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Kicked %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminClearBan =
	{
		tlmadminrq = [16,player];
		publicVariable "tlmadminrq";
		hint "Bans cleared!";
	};
	adminGiveGod =
	{
		if ((_this select 1) == 1) then {
			{
				if (name _x == _this select 0) then
				{
					tlmadminrq = [9,player,_x];
					publicVariable "tlmadminrq";
					hint format ["Giving %1 GodMode...", _this select 0];
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
					hint format ["Taking %1's GodMode...", _this select 0];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
		};
	};
	(findDisplay 46) displayAddEventHandler ["KeyUp","
	if (_this select 1 == 0x3B) then {call admin_init;};
	if (_this select 1 == 0x44) then {player switchCamera 'EXTERNAL';};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp", "if ((_this select 1) == 0xD3) then {call compile preprocessFileLineNumbers ""\hangender\start.sqf"";};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp", "if ((_this select 1) == 0x43) then {deleteVehicle cursorTarget;};"];
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
		PVDZ_hlt_Morphine = [_unit,player];
		publicVariable "PVDZ_hlt_Morphine";
		_unit setVariable["medForceUpdate",true];
		PVDZ_hlt_Bandage = [_unit];
		publicVariable "PVDZ_hlt_Bandage";
		{_unit setVariable[_x,false,true];} foreach USEC_woundHit;
		_unit setVariable ["USEC_injured",false,true];
		_unit setVariable ["USEC_lowBlood",false,true];
		PVDZ_hlt_Transfuse = [_unit];
		publicVariable "PVDZ_hlt_Transfuse";
		_unit setVariable ["NORRN_unconscious", false, true];
		_unit setVariable ["USEC_iscardiac",false,true];
		PVDZ_hlt_PainK = [_unit,player];
		publicVariable "PVDZ_hlt_PainK";
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
		'ItemMatchbox','ItemRadio','ItemToolbox','ItemWatch','Laserdesignator',
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
			hint "God Enabled";}] call RE;
	};
	if (_option == 10) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			hint "God Disabled";}] call RE;
	};
	if (_option == 11) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
			hint "Speed upgrade loaded!";
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
								_vcl setvariable ["supgrade", 1];
							};
						};
						case 42: {
							if(isEngineOn _vcl and !isnil "_nos") then
							{
								_vcl setVelocity [(velocity _vcl select 0) * 1.01, (velocity _vcl select 1) * 1.01, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["nitro", 1];
							};
						};
					};
				};
			};
			while {true} do 
			{
				adminvehicleSpeedy = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC_xx1;false;"];
				sleep 0.5;
			};
		}] call RE;
	};
	if (_option == 12) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; _randomNess = [1,-1] call BIS_fnc_selectRandom;
		(vehicle player) SetVelocity [_randomNess * random(10)* cos getdir (vehicle player), _randomNess * random(10)* cos getdir (vehicle player), random(5)];

		hint "watatatatata slap";}] call RE;
	};
	if (_option == 13) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
		
			while {true} do {
				hint "You took drugs YOLOLOLO";
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
	if (_option == 14) then //kick
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; hiveupdateresu = 1; publicVariable "hiveupdateresu"; 
		"Sheep" createUnit [[0,0,0], createGroup EAST,";call compile ""[] spawn {};"";", 0.6, "corporal"]; 
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;}; endMission "END1"; }] call RE;
	};
	if (_option == 15) then //ban
	{
		_unit = _array select 2;
		
		_BanList = 	profileNamespace getVariable ["AHBanList",[]];
		_BanList set [count _BanList, getPlayerUID _unit];
		profileNamespace setVariable ["AHBanList", _BanList]; saveProfileNamespace;
		
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; hiveupdateresu = 1; publicVariable "hiveupdateresu"; 
		"Sheep" createUnit [[0,0,0], createGroup EAST,";call compile ""[] spawn {};"";", 0.6, "corporal"]; 
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;}; endMission "END1"; }] call RE;
	};
	if (_option == 16) then //clear ban
	{
		_unit = _array select 1;
		
		profileNamespace setVariable ["AHBanList", []]; saveProfileNamespace;
	};
	if (_option == 17) then //WeatherLord
	{
		_selection = _array select 2;
		_intensity = _array select 3;
		switch (_selection) do {
			case 1:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; setViewDistance _this; }] call RE;
			};
			case 2:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 0 setOvercast _this; }] call RE;
			};
			case 3:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 5 setRain _this; }] call RE;
			};
		};
	};
	
};

publicVariable "tlmxzyxzy";

//profileNamespace = "STR";
//publicVariable "profileNamespace";

diag_log ("АнтиХак: инициализация...");