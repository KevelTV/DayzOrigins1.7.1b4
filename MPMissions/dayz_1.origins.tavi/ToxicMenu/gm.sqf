if (isnil("dayz_godmode")) then
{
    dayz_godmode = 0;
    player addEventHandler ["killed", "dayz_godmode = 0;"];
};

if (dayz_godmode == 0) then
{
    dayz_godmode = 1;
    fnc_usec_damageHandler = {};
    fnc_usec_unconscious = {};
    titleText ["Godmode ON", "PLAIN"];
}
else
{
    dayz_godmode = 0;
    fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
    fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
    titleText ["Godmode OFF", "PLAIN"];
};  