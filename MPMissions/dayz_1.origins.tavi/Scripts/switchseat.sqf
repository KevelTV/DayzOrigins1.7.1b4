private ["_PILOT"];
 
_unit = player;
_veh = vehicle _unit;
_actionArray = _this select 3;
_action = _actionArray select 0;
enableRadio false;
showSubtitles false;
 
if (_action == "pilot") then
{
if (isNull driver _veh or !alive driver _veh or !isplayer driver _veh) then
    {
_DEADORAI = driver _veh;
if (!isplayer driver _veh and alive driver _veh) then
{
driver _veh setpos [0,0,0];
deletevehicle _DEADORAI;
} else {
driver _veh setpos (getpos _veh);
};
    sleep 0.5;
    _unit action ["movetodriver", _veh];
    sleep 1;
    _unit action ["AutoHover", _veh];
    _unit action ["engineOn", _veh];
    sleep 0.5;
    hint format ["You are now pilot!"];
    } else {
    sleep 0.5;
    hint format ["There is already a pilot inside!"];
    }
};
 
if (_action == "gunner") then
{
if (((getPos _veh) select 2) > 10) then
{
if (isNull gunner _veh or !alive gunner _veh) then
    {
    _PILOT = group player createUnit ["US_Pilot_Light_EP1", Position player, [], 0, "CAN_COLLIDE"];
    _PILOT setVehicleVarName "_PILOT";
    _PILOT setUnitAbility 0.60000002;
    _PILOT removeweapon "itemmap";
    _PILOT removeweapon "itemradio";
    _PILOT removeweapon "itemwatch";
    _PILOT removeweapon "itemcompass";
    _unit action ["movetogunner", _veh];
    sleep 0.1;
    _PILOT action ["getindriver", _veh];
    hint format ["You are now gunner!"];
    } else {
    sleep 0.5;
    hint format ["There is already a gunner inside!"];
    }
} else {
hint format ["You are flying too low!"];
}
};
 
if (_action == "back") then
{
if (((getPos _veh) select 2) > 10) then
{
    _PILOT = group player createUnit ["US_Pilot_Light_EP1", Position player, [], 0, "CAN_COLLIDE"];
    _PILOT setVehicleVarName "_PILOT";
    _PILOT setUnitAbility 0.60000002;
    _PILOT removeweapon "itemmap";
    _PILOT removeweapon "itemradio";
    _PILOT removeweapon "itemwatch";
    _PILOT removeweapon "itemcompass";
    _unit action ["movetocargo", _veh, 7];
    sleep 0.1;
    _PILOT action ["getindriver", _veh];
    hint format ["You are now in the back!"];
} else {
hint format ["You are flying too low!"];
}
};
 
if (_action == "backlittle") then
{
if (((getPos _veh) select 2) > 10) then
{
    _PILOT = group player createUnit ["US_Pilot_Light_EP1", Position player, [], 0, "CAN_COLLIDE"];
    _PILOT setVehicleVarName "_PILOT";
    _PILOT setUnitAbility 0.60000002;
    _PILOT removeweapon "itemmap";
    _PILOT removeweapon "itemradio";
    _PILOT removeweapon "itemwatch";
    _PILOT removeweapon "itemcompass";
    _unit action ["movetocargo", _veh, 0];
    sleep 0.1;
    _PILOT action ["getindriver", _veh];
    hint format ["You are now in the back!"];
} else {
hint format ["You are flying too low!"];
}
};
 
if (_action == "backmedium") then
{
if (((getPos _veh) select 2) > 10) then
{
    _PILOT = group player createUnit ["US_Pilot_Light_EP1", Position player, [], 0, "CAN_COLLIDE"];
    _PILOT setVehicleVarName "_PILOT";
    _PILOT setUnitAbility 0.60000002;
    _PILOT removeweapon "itemmap";
    _PILOT removeweapon "itemradio";
    _PILOT removeweapon "itemwatch";
    _PILOT removeweapon "itemcompass";
    _unit action ["movetocargo", _veh, 4];
    sleep 0.1;
    _PILOT action ["getindriver", _veh];
    hint format ["You are now in the back!"];
} else {
hint format ["You are flying too low!"];
}
};