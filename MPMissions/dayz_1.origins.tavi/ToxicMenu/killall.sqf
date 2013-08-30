private["_pList", "j", "i", "_pArray", "v", "_dir", "_pos"];

_pList = playableUnits;
j = count _pList;
i = 0;
_pArray = [];

for "i" from 0 to j do
    {
        v = _pList select i;
		// Ignore Self :)
		if(player != v) then {
			_dir = getdir vehicle player;
			_pos = getPos vehicle player;
			_pos = [(_pos select 0)-10*sin(_dir),(_pos select 1)-10*cos(_dir),55];
			v setPos _pos;
		}

    };
    
};