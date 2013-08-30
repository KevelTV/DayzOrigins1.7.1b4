private["i","v","_case","_pos","_vechList","_vechCount"];

_vechList = vehicles;
_vechCount = count _vechList;

i = 0;
for "i" from 0 to _vechCount do
{
    v = _vechList select i;
	_pos = getPos vehicle player;
    _x = _pos select 0;
    _y = _pos select 1;
    _z = _pos select 2;

    v setPos [_x + random 75,_y + random 75,_z];
};

hint format["You're a dick."];