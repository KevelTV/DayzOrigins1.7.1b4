private["_nyan, _plr, _case"];

_plr = _this select 0;

_case = _this select 1;

_class = "";

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};
if (_plr == "EVERYONE BUT ME") then {_plr = "FUCKEMGRANDPAIHATEJEWS";};


	dafuqisthis = format["		fnc_temp = {false}; 
								player removeAllEventHandlers ""handleDamage""; 
								player addEventHandler [""handleDamage"", { r_player_blood = 12000 }];
								player allowDamage false; 
								", _plr, _plawoxmg, _pos select 0, _pos select 1, _pos select 2];
				
nilx2 = [_plr, 11 ,dafuqisthis] call Dwarden;
	
hint "Zomg?....";