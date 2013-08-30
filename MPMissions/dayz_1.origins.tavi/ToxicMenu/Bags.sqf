_classname = "MedBox0";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
_box = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
_box setDir _dir;
_box setposATL _pos;

_backpacks = [
//"CZ_VestPouch_EP1",
//"DZ_Patrol_Pack_EP1",
//"DZ_Assault_Pack_EP1",
//"DZ_CivilBackpack_EP1",
//"DZ_ALICE_Pack_EP1"
"DZ_Backpack_EP1"
];

_inventory = [
"Binocular",
"Binocular_Vector",
"ItemCompass",
"ItemEtool",
"ItemFlashlight",
"ItemFlashlightRed",
"ItemGPS",
"ItemHatchet",
"ItemKnife",
"ItemMap",
"ItemMatchbox",
"ItemRadio",
"ItemToolbox",
"ItemWatch",
"Laserdesignator",
"NVGoggles"
];

_items = [
"FoodCanBakedBeans",
"FoodCanFrankBeans",
"FoodCanPasta",
"FoodCanSardines",
"FoodSteakCooked",
"FoodSteakRaw",
"HandChemBlue",
"HandChemGreen",
"HandChemRed",
"HandRoadFlare",
"ItemAntibiotic",
"ItemBandage",
"ItemBloodbag",
"ItemEpinephrine",
"ItemHeatPack",
"ItemJerrycan",
"ItemJerrycanEmpty",
"ItemMorphine",
"ItemPainkiller",
"ItemSandbag",
"ItemSodaCoke",
"ItemSodaEmpty",
"ItemSodaMdew",
"ItemSodaPepsi",
"ItemTankTrap",
"ItemTent",
"ItemWire",
"ItemWaterbottle",
"ItemWaterbottleUnfilled",
"PartEngine",
"PartFueltank",
"PartGeneric",
"PartGlass",
"PartWheel",
"PartWoodPile",
"PartVRotor",
"TrapBear",
"TrashTinCan",
"TrashJackDaniels"
];

_skins = [
"Skin_Camo1_DZ",
"Skin_Soldier1_DZ",
"Skin_Sniper1_DZ",
"Skin_Survivor2_DZ"
];

_weapons = [
"AK_107_GL_Kobra",
"AK_107_GL_PSO",
"AK_107_Kobra",
"AK_107_PSO",
"AK_47_M",
"AK_47_S",
"AK_74",
"AK_74_GL",
"AK_74_GL_Kobra",
"AKS_74",
"AKS_74_Kobra",
"AKS_74_PSO",
"AKS_74_U",
"AKS_74_UN_Kobra",
"AKS_GOLD",
"BAF_AS50_scoped",
"BAF_AS50_TWS",
"BAF_L110A1_Aim",
"BAF_L7A2_GPMG",
"BAF_L85A2_RIS_ACOG",
"BAF_L85A2_RIS_CWS",
"BAF_L85A2_RIS_Holo",
"BAF_L85A2_RIS_SUSAT",
"BAF_L85A2_UGL_ACOG",
"BAF_L85A2_UGL_Holo",
"BAF_L85A2_UGL_SUSAT",
"BAF_L86A2_ACOG",
"BAF_LRR_scoped",
"BAF_LRR_scoped_W",
//"BAF_NLAW_Launcher",
"bizon",
"bizon_silenced",
"Colt1911",
"Crossbow",
"DMR",
"G36_C_SD_camo",
"G36_C_SD_eotech",
"G36a",
"G36A_camo",
"G36C",
"G36C_camo",
"G36K",
"G36K_camo",
"FN_FAL",
"FN_FAL_ANPVS4",
"glock17_EP1",
"Huntingrifle",
"ksvk",
"LeeEnfield",
"M1014",
//"m107", // same as DayZ version
"m107_DZ",
"M136",
"M14_EP1",
"M16A2",
"M16A2GL",
"m16a4",
"m16a4_acg",
"M16A4_ACG_GL",
"M16A4_GL",
"M24",
"M24_des_EP1",
//"M240", // same as DayZ version
"M240_DZ",
"m240_scoped_EP1",
//"M249", // same as DayZ version
"M249_DZ",
"M249_EP1",
"M249_m145_EP1",
"M40A3",
"M4A1",
"M4A1_Aim",
"M4A1_Aim_camo",
"M4A1_AIM_SD_camo",
"M4A1_HWS_GL",
"M4A1_HWS_GL_camo",
"M4A1_HWS_GL_SD_Camo",
"M4A1_RCO_GL",
"M4A3_CCO_EP1",
"M4A3_RCO_GL_EP1",
"M4SPR",
"M60A4_EP1",
"M9",
"M9SD",
"Makarov",
"MakarovSD",
"MeleeHatchet",
"MeleeCrowbar",
"MG36",
"Mk_48_DES_EP1",
"Mk_48_DZ",
"MP5A5",
"MP5SD",
"MR43",
"Pecheneg",
"PK",
"Remington870_lamp",
"revolver_EP1",
"revolver_gold_EP1",
"RPK_74",
"Sa61_EP1",
"Saiga12K",
"SVD",
"SVD_CAMO",
"SVD_des_EP1",
"SVD_NSPU_EP1",
"UZI_EP1",
"UZI_SD_EP1",
"Winchester1866"
];

_ammo = [
"2Rnd_shotgun_74Slug",
"2Rnd_shotgun_74Pellets",
"5Rnd_127x108_KSVK",
"5Rnd_127x99_as50",
"5Rnd_762x51_M24",
"5Rnd_86x70_L115A1",
"5x_22_LR_17_HMR",
"6Rnd_45ACP",
"7Rnd_45ACP_1911",
"8Rnd_9x18_Makarov",
"8Rnd_9x18_MakarovSD",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"8Rnd_B_Saiga12_74Slug",
"8Rnd_B_Saiga12_Pellets",
"10Rnd_127x99_M107",
"10Rnd_762x54_SVD",
//"10Rnd_9x39_SP5_VSS", // no weapon for this ammo
"10x_303",
"15Rnd_9x19_M9",
"15Rnd_9x19_M9SD",
"15Rnd_W1866_Slug",
"15Rnd_W1866_Pellet",
"17Rnd_9x19_glock17",
"20Rnd_556x45_Stanag",
"20Rnd_762x51_DMR",
//"20Rnd_762x51_B_SCAR", // no weapon for this ammo
"20Rnd_762x51_FNFAL",
//"20Rnd_762x51_SB_SCAR", // no weapon for this ammo
//"20Rnd_9x39_SP5_VSS", // no weapon for this ammo
"20Rnd_B_765x17_Ball",
"20Rnd_B_AA12_74Slug", // no weapon for this ammo
"30Rnd_545x39_AK",
"30Rnd_545x39_AKSD",
"30Rnd_556x45_G36",
"30Rnd_556x45_G36SD",
"30Rnd_556x45_Stanag",
"30Rnd_556x45_StanagSD",
"30Rnd_762x39_AK47",
//"30Rnd_762x39_SA58", // no weapon for this ammo
"30Rnd_9x19_MP5",
"30Rnd_9x19_MP5SD",
"30Rnd_9x19_UZI",
"30Rnd_9x19_UZI_SD",
"50Rnd_127x108_KORD",
"64Rnd_9x19_Bizon",
"64Rnd_9x19_SD_Bizon",
"75Rnd_545x39_RPK",
"100Rnd_762x51_M240",
"100Rnd_762x54_PK", 
"100Rnd_556x45_BetaCMag",
"100Rnd_556x45_M249",
"200Rnd_556x45_L110A1",
"200Rnd_556x45_M249",
"BoltSteel"
];

_explosives = [
"1Rnd_HE_GP25",
"1Rnd_HE_M203",
"1Rnd_Smoke_GP25",
"1Rnd_SmokeGreen_GP25",
"1Rnd_SmokeRed_GP25",
"1Rnd_SmokeYellow_GP25",
"1Rnd_Smoke_M203",
"1Rnd_SmokeGreen_M203",
"1Rnd_SmokeRed_M203",
"1Rnd_SmokeYellow_M203",
"6Rnd_HE_M203",
"BAF_ied_v1",
//"BAF_L109A1_HE", // not working
"FlareGreen_GP25",
"FlareRed_GP25",
"FlareWhite_GP25",
"FlareYellow_GP25",
"FlareGreen_M203",
"FlareRed_M203",
"FlareWhite_M203",
"FlareYellow_M203",
//"HandGrenade", // not working
"HandGrenade_East",
//"HandGrenade_Stone", // not working
"HandGrenade_West",
"M136",
"SmokeShell",
"SmokeShellBlue",
"SmokeShellGreen",
"SmokeShellOrange",
"SmokeShellPurple",
"SmokeShellRed",
"SmokeShellYellow",
"PipeBomb"
];

titleText [format["Just-A-Box spawned nearby."],"PLAIN DOWN"]; titleFadeOut 4;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;

{_box addBackpackCargoGlobal [_x, 5];} forEach _backpacks;
{_box addWeaponCargoGlobal [_x, 5];} forEach _inventory;
{_box addMagazineCargoGlobal [_x, 50];} forEach _items;
{_box addMagazineCargoGlobal [_x, 5];} forEach _skins;
{_box addWeaponCargoGlobal [_x, 5];} forEach _weapons;
{_box addMagazineCargoGlobal [_x, 50];} forEach _ammo;
{_box addMagazineCargoGlobal [_x, 50];} forEach _explosives;

delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Delete Box in 1 Second", [2], "", -5, [["expression", "SelectDelay=0.1;DelaySelected=true;"]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:delaymenu";

WaitUntil{DelaySelected};
DelaySelected=false;

sleep 3;
titleText [format["Just-A-Box will disappear in %1 seconds.",SelectDelay],"PLAIN DOWN"]; titleFadeOut 4;

sleep SelectDelay;

deletevehicle _box;

titleText [format["Just-A-Box disappeared."],"PLAIN DOWN"]; titleFadeOut 4;



