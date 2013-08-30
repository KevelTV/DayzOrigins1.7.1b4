if (isNil "playericons") then {playericons = true;} else {playericons = !playericons};
if(playericons) then {titleText ["Player ESP activated!","PLAIN DOWN"]; titleFadeOut 4;};
setGroupIconsVisible [false,true];
while {playericons} do {
   _i = 0;
   _j = count allUnits;
   for "_i" from 0 to _j do
   {
          _unit = allUnits select _i;
          if (alive _unit && player != _unit) then{
                 _group = group _unit;
                 _group addGroupIcon ["b_inf", [0,0]];
                 _group setGroupIconParams [[0,0,1,1],format ["%1 - %2m", name _unit, ceil (_unit distance player)],0.8,true];
          };
   };
   sleep 1;
   _i = 0;
   _j = count allUnits;
   for "_i" from 0 to _j do
   {
          _unit = allUnits select _i;  
          _group = group _unit;
          clearGroupIcons _group;
   };
};
titleText ["Player ESP deactivated!","PLAIN DOWN"]; titleFadeOut 4;};