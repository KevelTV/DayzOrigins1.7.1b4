testIndex  = _this select 1;
_thePlayer = _this select 2;

_myPos = getPosASL player;

// foreach loop
{
	if (name _x == _thePlayer) then
	{ 
		_x setPosASL [(_myPos select 0) + 5, _myPos select 1, _myPos select 2];
	};
} foreach playableUnits;
