spawnitems1 = [];
spawnitems2 = [];
spawnitems3 = [];
spawnitems4 = [];
spawnitems5 = [];
spawnitems6 = [];
spawnitems7 = [];
spawnitems8 = [];
spawnitems9 = [];

spawnitems1 = 
[
	["",true],
	["Inventory", [2], "#USER:spawnitems2", -5, [["expression", ""]], "1", "1"],
	["Medical", [3], "#USER:spawnitems4", -5, [["expression", ""]], "1", "1"],
	["Food & Drinks", [4], "#USER:spawnitems5", -5, [["expression", ""]], "1", "1"],
	["Tent & Traps", [5], "#USER:spawnitems6", -5, [["expression", ""]], "1", "1"],
	["Repair Parts", [6], "#USER:spawnitems7", -5, [["expression", ""]], "1", "1"],
	["Clothing", [7], "#USER:spawnitems8", -5, [["expression", ""]], "1", "1"],
	["Misc", [8], "#USER:spawnitems9", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Read before spawn...", [-1], "", -5, [["expression", "titleText ['Items with asterisk (*) are not in DayZ mod anymore (or never was). It means that server admins can detect it the logs and you can get local ban on this server.','PLAIN DOWN']; titleFadeOut 20;
"]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems2 = 
[
	["",true],
	["Map", [2], "", -5, [["expression", "player addWeapon 'ItemMap';"]], "1", "1"],
	["Compass", [3], "", -5, [["expression", "player addWeapon 'ItemCompass';"]], "1", "1"],
	["GPS", [4], "", -5, [["expression", "player addWeapon 'ItemGps';"]], "1", "1"],
	["NV Goggles", [5], "", -5, [["expression", "player addWeapon 'NVGoggles';"]], "1", "1"],
	["Rangefinder", [6], "", -5, [["expression", "player addWeapon 'Binocular_Vector';"]], "1", "1"],
	["Watch", [7], "", -5, [["expression", "player addWeapon 'ItemWatch';"]], "1", "1"],
	["Hunting Knife", [8], "", -5, [["expression", "player addWeapon 'ItemKnife';"]], "1", "1"],
	["Hatchet", [9], "", -5, [["expression", "player addWeapon 'ItemHatchet';"]], "1", "1"],
	["Box of Matches", [10], "", -5, [["expression", "player addWeapon 'ItemMatchbox';"]], "1", "1"],
	["Toolbox", [11], "", -5, [["expression", "player addWeapon 'ItemToolbox';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	[">>> Next >>>", [13], "#USER:spawnitems3", -5, [["expression", ""]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems3 = 
[
	["",true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Binocular", [2], "", -5, [["expression", "player addWeapon 'Binocular';"]], "1", "1"],
	["Regular Flashlight", [3], "", -5, [["expression", "player addWeapon 'ItemFlashlight';"]], "1", "1"],
	["Military Flashlight", [4], "", -5, [["expression", "player addWeapon 'ItemFlashlightRed';"]], "1", "1"],
	["Entrenching Tool", [5], "", -5, [["expression", "player addWeapon 'ItemEtool';"]], "1", "1"],
	["Radio *", [6], "", -5, [["expression", "player addWeapon 'ItemRadio';"]], "1", "1"],
	["Laser Marker *", [7], "", -5, [["expression", "player addWeapon 'Laserdesignator';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems4 = 
[	
	["",true],
	["Bandage", [2], "", -5, [["expression", "player addMagazine 'ItemBandage';"]], "1", "1"],
	["Painkillers", [3], "", -5, [["expression", "player addMagazine 'ItemPainkiller';"]], "1", "1"],
	["Morphine Auto-Injector", [4], "", -5, [["expression", "player addMagazine 'ItemMorphine';"]], "1", "1"],
	["Epi-Pen", [5], "", -5, [["expression", "player addMagazine 'ItemEpinephrine';"]], "1", "1"],
	["Bloodbag", [6], "", -5, [["expression", "player addMagazine 'ItemBloodbag';"]], "1", "1"],
	["Heatpack", [7], "", -5, [["expression", "player addMagazine 'ItemHeatPack';"]], "1", "1"],
	["Antibiotics", [8], "", -5, [["expression", "player addMagazine 'ItemAntibiotic';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems5 = 
[	
	["",true],
	["Cooked Meat", [2], "", -5, [["expression", "player addMagazine 'FoodSteakCooked';"]], "1", "1"],
	["Raw Meat", [3], "", -5, [["expression", "player addMagazine 'FoodSteakRaw';"]], "1", "1"],
	["Can (Baked Beans)", [4], "", -5, [["expression", "player addMagazine 'FoodCanBakedBeans';"]], "1", "1"],
	["Can (Frank & Beans)", [5], "", -5, [["expression", "player addMagazine 'FoodCanFrankBeans';"]], "1", "1"],
	["Can (Pasta)", [6], "", -5, [["expression", "player addMagazine 'FoodCanPasta';"]], "1", "1"],
	["Can (Sardines)", [7], "", -5, [["expression", "player addMagazine 'FoodCanSardines';"]], "1", "1"],
	["Soda Can (Coke)", [8], "", -5, [["expression", "player addMagazine 'ItemSodaCoke';"]], "1", "1"],
	["Soda Can (Pepsi)", [9], "", -5, [["expression", "player addMagazine 'ItemSodaPepsi';"]], "1", "1"],
	["Soda Can (Mountain Dew)", [10], "", -5, [["expression", "player addMagazine 'ItemSodaMdew';"]], "1", "1"],
	["Waterbottle", [11], "", -5, [["expression", "player addMagazine 'ItemWaterbottle';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems6 = 
[	
	["",true],
	["Camping Tent", [2], "", -5, [["expression", "player addMagazine 'ItemTent';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Bear Trap", [3], "", -5, [["expression", "player addMagazine 'TrapBear';"]], "1", "1"],
	["Wire Fencing Kit", [4], "", -5, [["expression", "player addMagazine 'ItemWire';"]], "1", "1"],
	["Tank Trap Kit", [5], "", -5, [["expression", "player addMagazine 'ItemTankTrap';"]], "1", "1"],
	["Sandbags", [6], "", -5, [["expression", "player addMagazine 'ItemSandbag';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Wood Pile", [7], "", -5, [["expression", "player addMagazine 'PartWoodPile';"]], "1", "1"],
	["Stone", [8], "", -5, [["expression", "player addMagazine 'HandGrenade_Stone';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems7 = 
[	
	["",true],
	["Jerry Can", [2], "", -5, [["expression", "player addMagazine 'ItemJerrycan';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Car Wheel", [3], "", -5, [["expression", "player addMagazine 'PartWheel';"]], "1", "1"],
	["Engine Parts", [4], "", -5, [["expression", "player addMagazine 'PartEngine';"]], "1", "1"],
	["Fueltank Parts", [5], "", -5, [["expression", "player addMagazine 'PartFueltank';"]], "1", "1"],
	["Main Rotor Assembly", [6], "", -5, [["expression", "player addMagazine 'PartVRotor';"]], "1", "1"],
	["Scrap Metal", [7], "", -5, [["expression", "player addMagazine 'PartGeneric';"]], "1", "1"],
	["Windscreen Glass", [8], "", -5, [["expression", "player addMagazine 'PartGlass';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems8 = 
[	
	["",true],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Civilian Clothing", [2], "", -5, [["expression", "player addMagazine 'Skin_Survivor2_DZ';"]], "1", "1"],
	["Camo Clothing", [3], "", -5, [["expression", "player addMagazine 'Skin_Camo1_DZ';"]], "1", "1"],
	["Ghillie Suit", [4], "", -5, [["expression", "player addMagazine 'Skin_Sniper1_DZ';"]], "1", "1"],
	["Soldier Clothing *", [5], "", -5, [["expression", "player addMagazine 'Skin_Soldier1_DZ';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnitems9 = 
[	
	["",true],
	["Road Flare", [2], "", -5, [["expression", "player addMagazine 'HandRoadFlare';"]], "1", "1"],
	["Chemlight (Blue)", [3], "", -5, [["expression", "player addMagazine 'HandChemBlue';"]], "1", "1"],
	["Chemlight (Green)", [4], "", -5, [["expression", "player addMagazine 'HandChemGreen';"]], "1", "1"],
	["Chemlight (Red)", [5], "", -5, [["expression", "player addMagazine 'HandChemRed';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Empty Soda Can", [6], "", -5, [["expression", "player addMagazine 'ItemSodaEmpty';"]], "1", "1"],
	["Empty Tin Can", [7], "", -5, [["expression", "player addMagazine 'TrashTinCan';"]], "1", "1"],
	["Empty Whiskey Bottle", [8], "", -5, [["expression", "player addMagazine 'TrashJackDaniels';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Waterbottle (Empty)", [9], "", -5, [["expression", "player addMagazine 'ItemWaterbottleUnfilled';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:spawnitems1";