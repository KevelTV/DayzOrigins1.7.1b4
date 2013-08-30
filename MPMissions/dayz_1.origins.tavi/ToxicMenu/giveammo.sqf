_unit = _this select 0;
_weapon = currentWeapon _unit;
_cfg = getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines");
_unit addMagazine (_cfg select 0);
_unit addMagazine (_cfg select 0);
_unit addMagazine (_cfg select 0);
_unit addMagazine (_cfg select 0);_unit addMagazine (_cfg select 0);



