if (isNil "wuat_fpsMonitor") then { wuat_fpsMonitor = true; } else { wuat_fpsMonitor = not wuat_fpsMonitor;};
hint format["God-Mode Activated",wuat_fpsMonitor];
if (wuat_fpsMonitor) then {  [] spawn { while { wuat_fpsMonitor } do  { 
//hintsilent format["Fps: %1", (diag_FPS/2)+149 ]; sleep 1.5; 


//////////////////
//hintSilent format["Injured: %1\nUnconscious: %2 (%7)\nBlood: %5\nPain: %6\nMust Evac: %8\nHandler: %3\nAction: %4\nLeg Damage: %9\nArm Damage: %10\nInfected: %11",r_player_injured,r_player_unconscious,r_player_handler,r_action,r_player_blood,r_player_inpain,r_player_timeout,r_player_dead, player getVariable ["hit_legs",0], player getVariable ["hit_arms",0],r_player_infected];
unitList = allUnits;
j = count unitList;
i = 0;
markPos = true;

while {wuat_fpsMonitor} do
{ 

_v =player;
_v setDammage 0;
"dynamicBlur" ppEffectAdjust [0];"dynamicBlur" ppEffectCommit 0.1;"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];"colorCorrections" ppEffectCommit 0.1;
r_interrupt =             false;
r_doLoop =                 false;
r_self =                 false;
r_drag_sqf =             false;
r_action =                 false;
r_action_unload =         false;
r_player_handler =         false;
r_player_handler1 =     false;
r_player_dead =         false;
r_player_unconscious =     false;
r_player_infected =        false;
r_player_injured =         false;
r_player_inpain =         false;
r_player_loaded =         false;
r_player_cardiac =         false;
r_fracture_legs =        false;
r_fracture_arms =        false;
r_player_blood =         12000;
r_player_lowblood =     false;
r_player_timeout =        0;
r_handlerCount =         0;
dayz_hunger    =            0;
dayz_thirst =             0;
dayz_temperatur =         100;
(vehicle player) removeAllEventHandlers "handleDamage";
(vehicle player) addEventHandler ["handleDamage", { false }];
(vehicle player) addEventHandler ["hit", {player setdammage 0}];
(vehicle player) addEventHandler ["dammaged", {player setdammage 0}];
(vehicle player) allowDamage false;
//player setVariable ["hit_legs",0,false]; player setVariable ["hit_arms",0,false];
    //_v setVariable ["NORRN_unconscious", false, true];
    //_v setVariable ["USEC_isCardiac",false,true];
//    player setVariable["medForceUpdate",true,true];
//////////////////

unitList = AllUnits;
j = count unitList;
i = 0;
    
    for "i" from 0 to j do
    {
            unit = unitList select i;
            pos = position unit;
            deleteMarkerLocal ("playerMarker"+ (str i));
            marker = "playerMarker" + (str i);
            marker = createMarkerLocal [marker,pos];
            marker setMarkerTypeLocal "waypoint";
            marker setMarkerPosLocal (pos);
            marker setMarkerColorLocal("ColorBlue");
            marker setMarkerTextLocal format ["%1",name unit];        
    
    };
    sleep 0.8;
};


//hint "Player Marking Stopping";

i = 0;
for "i" from 0 to 1000 do
{
    veh = unitList select i;
    deleteMarkerLocal ("playerMarker"+ (str i));
};

};};};