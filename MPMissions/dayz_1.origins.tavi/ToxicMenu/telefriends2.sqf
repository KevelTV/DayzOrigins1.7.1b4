tp =
{
 
_splr = _this select 0;
       
_tpdist = 5;
_dir= getdir (vehicle _splr);
_pos = getPos (vehicle _splr);
(vehicle player) setVariable["lastPosition",1337];
(vehicle player) setVariable ["lastTimes", 1337];
player setVariable["lastPosition",1337];
player setVariable ["lastTimes", 1337];
(vehicle player) setPosATL [(_pos select 0)+_tpdist*sin(_dir),(_pos select 1)+_tpdist*cos(_dir),(_pos select 2)];
(vehicle player) setVariable["lastPosition",1337];
(vehicle player) setVariable ["lastTimes", 1337];
player setVariable["lastPosition",1337];
player setVariable ["lastTimes", 1337];
tpguys = false;
 
       
       
        titleText ["Teleported...","PLAIN DOWN"];titleFadeOut 4;
 
};
 
 
_n2sh = 10; _n2c = "Select Player:";shnext = false; nlist = [];  selecteditem = "";
 
if (isNil "tpguys") then {tpguys = true;} else {tpguys = !tpguys;};
if (tpguys) then
{
                 
        {if ((_x != player) and (getPlayerUID _x != "")) then {nlist set [count nlist, name _x];};} forEach Entities "CAManBase";
        {if ((count crew _x)>0) then {{if ((_x != player) and (getPlayerUID _x != "")) then {nlist set [count nlist, name _x];};} forEach crew _x;};
        } foreach (Entities "LandVehicle"+ Entities "Air" + Entities"Ship");
        shnmenu =
        {
                _pmenu = [["",true],[_n2c, [-1], "", -5, [["expression", ""]], "1", "0"]];
                for "_i" from (_this select 0) to (_this select 1) do
                {_arr = [format['%1',nlist select (_i)], [_i - (_this select 0) + 2],  "", -5, [["expression", format["selecteditem = nlist select %1;",_i]]], "1", "1"];_pmenu set [_i+2, _arr];};
                if (count nlist >  (_this select 1)) then {_pmenu set [(_this select 1)+2, ["Next", [12], "", -5, [["expression", "shnext = true;"]], "1", "1"]];}
                else {_pmenu set [(_this select 1)+2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];};
                _pmenu set [(_this select 1)+3, ["Exit", [13], "", -5, [["expression", "selecteditem = 'exitscript';"]], "1", "1"]];
                showCommandingMenu "#USER:_pmenu";
        };
        _j = 0; _n2sh = 10; if (_n2sh>9) then {_n2sh=10;};
        while {selecteditem==""} do
        {
                [_j,(_j+_n2sh) min (count nlist)] call shnmenu;_j=_j+_n2sh;
                WaitUntil {selecteditem!="" or shnext};
                shnext = false;
        };
 
       
        if (selecteditem!= "exitscript") then
        {
                _name = selecteditem;
                {if(format[name _x] == _name) then {[_x] call tp;};} forEach Entities "CAManBase";
                {if ((count crew _x)>0) then {if(format[name _x] == _name) then {[_x] call tp;};};} foreach (Entities "LandVehicle"+ Entities "Air" + Entities"Ship");
        };
        tpguys = false;
       
};