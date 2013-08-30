hint 'DayZ Player was created..'; 

_mypos = getposATL player; 
_dir = getdir player; 
_mypos = [(_mypos select 0)+4*sin(_dir),(_mypos select 1)+4*cos(_dir), (_mypos select 2)]; 

_agent = createAgent ["Bandit1_DZ", _mypos, [], 5, "NONE"];
_position = [_position,0,20,10,0,20,0] call BIS_fnc_findSafePos;

_weapons = [	'M4A1_HWS_GL_SD_Camo', '',  '',   '',     'ItemMap',     'ItemWatch',     'Binocular_Vector' ];  
_magazine = [ 	 '30Rnd_556x45_G36SD',   '',     'FoodSteakCooked',     'ItemSoda'];  

_agent addBackPack  'DZ_Backpack_EP1';
{ _agent addWeapon _x; } forEach _weapons; 
{ for [{ b=0 },{ b < 1 },{ b = b + 5; }]do{_agent addMagazine _x;}; } forEach _magazine;