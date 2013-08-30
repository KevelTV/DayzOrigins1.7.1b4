_itemclasses=["Land_Fire_DZ" , "MedBox0" , "wire_cat1" , "Hedgehog_DZ" , "Sandbag1_DZ" , "BearTrap_DZ" , "WeaponHolder" , "DZ_Backpack_EP1" , "DZ_Alice_Pack_EP1" , "DZ_Civilbackpack_EP1" , "DZ_Assault_Pack_EP1" , "DZ_Patrol_Pack_EP1" , "CZ_Vestpouch_EP1" ] ;
{
	_itemlist = allMissionObjects _x ;
	_itemCount = (count _itemlist)-1;
	_i = 0;
	for "_i" from 0 to _itemCount do  {
		_item = _itemlist select _i;
		_item setDamage 1;
	};
	TitleText [format ["Destroyed all - (%1)", _x ], "PLAIN DOWN"];
	sleep 0.001;
	for "_i" from 0 to _itemCount do  {
		_item = _itemlist select _i;
		deleteVehicle _item;
	};
	TitleText [format ["DELETED all - (%1)", _x ], "PLAIN DOWN"];
}    forEach _itemclasses ;

{ deleteVehicle _x } forEach (allMissionObjects "Survivor3_DZ")+(allMissionObjects "Survivor2_DZ")+(allMissionObjects "Sniper1_DZ")+(allMissionObjects "SurvivorW2_DZ")+(allMissionObjects "Body0")+(allMissionObjects "Body1")+(allMissionObjects "Body2")+(allMissionObjects "z_doctor")+(allMissionObjects "z_hunter")+(allMissionObjects "z_policeman")+(allMissionObjects "z_priest")+(allMissionObjects "z_soldier")+(allMissionObjects "z_soldier_heavy")+(allMissionObjects "z_soldier_pilot")+(allMissionObjects "z_suit1")+(allMissionObjects "z_suit2")+(allMissionObjects "z_teacher")+(allMissionObjects "z_villager1")+(allMissionObjects "z_villager2")+(allMissionObjects "z_villager3")+(allMissionObjects "z_worker1")+(allMissionObjects "z_worker2")+(allMissionObjects "z_worker3")+(allMissionObjects "zZombie_Base");