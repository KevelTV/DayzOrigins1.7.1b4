if (isNil "playershield") then {playershield = true;} else {playershield = !playershield};
ExceptionsPlayers = ["Please", "Edit", "Your", "Friends", "Names", "In", "playershieldadv.sqf"]; // Friend's names go inbetween the ""
 if(playershield) then {
 playerDistanceScreen = 
 [
 ["",true],
 ["Distance", [-1], "", -5, [["expression", "playershield = false;"]], "1", "1"], 
 ["10", [2], "", -5, [["expression", "PlayerDistance=10;PlayerDistanceStat=true;"]], "1", "1"],
 ["20", [3], "", -5, [["expression", "PlayerDistance=20;PlayerDistanceStat=true;"]], "1", "1"],
 ["30", [4], "", -5, [["expression", "PlayerDistance=30;PlayerDistanceStat=true;"]], "1", "1"],
 ["40", [5], "", -5, [["expression", "PlayerDistance=40;PlayerDistanceStat=true;"]], "1", "1"],
 ["50", [6], "", -5, [["expression", "PlayerDistance=50;PlayerDistanceStat=true;"]], "1", "1"],
 ["100", [7], "", -5, [["expression", "PlayerDistance=100;PlayerDistanceStat=true;"]], "1", "1"],
 ["200", [8], "", -5, [["expression", "PlayerDistance=200;PlayerDistanceStat=true;"]], "1", "1"], 
 ["Exit", [13], "", -3, [["expression", "playershield = false;"]], "1", "1"] 
 ];

 showCommandingMenu "#USER:playerDistanceScreen";
 WaitUntil{PlayerDistanceStat};

 titleText [format["Player Shield activated with distance %1 meters! Exception player:%2",ZombieDistance,ExceptionsPlayers],"PLAIN DOWN"]; titleFadeOut 20;
 } else {
PlayerDistanceStat=false;
};


 while {playershield && PlayerDistanceStat} do {


 _pos = getPos player;
 _players = _pos nearEntities ["Man",PlayerDistance];
 _units = allUnits;


 _countunits = count _units;
 _countplayers = count _players;


 for "_i" from 0 to (_countplayers -1) do
 { 
 _player = _players select _i; 
 if(_player != player && !(name _player in ExceptionsPlayers)) then 
 { 
 for "_i2" from 0 to (_countunits -1) do
 { 
 _unit = _units select _i2;
 if(_unit == _player) then {
 _text = format["%1 has crossed the line!", name _player];
 titleText [_text,"PLAIN DOWN"]; titleFadeOut 4;
 _player setDamage 1;
 RandomHeadshots=round(random 4);
 HumanityVal=_player getVariable["humanity",0];
 If (!alive _player && HumanityVal>=0) then {
 _killsH = player getVariable["humanKills",0];
 player setvariable["humanKills", _killsH+1,true];
 };
 If (!alive _player && HumanityVal<=0) then {
 _killsB = player getVariable["banditKills",0];
 player setvariable["banditKills", _killsB+1,true];
 };
 If (RandomHeadshots==1) then {
 _headShots = player getVariable["headShots",0];
 player setVariable["headShots",_headShots+1,true]
 }; 
 };
 }; 
 };
 };
 };
 titleText ["Player Shield deactivated!","PLAIN DOWN"]; titleFadeOut 4;