spawnweapons1 = [];
spawnweapons2 = [];
spawnweapons3 = [];
spawnweapons4 = [];
spawnweapons5 = [];
spawnweapons6 = [];
spawnweapons7 = [];
spawnweapons8 = [];
spawnweapons9 = [];
spawnweapons10 = [];
spawnweapons11 = [];
spawnweapons12 = [];
spawnweapons13 = [];
spawnweapons14 = [];
spawnweapons15 = [];
spawnweapons16 = [];
spawnweapons17 = [];
spawnweapons18 = [];
spawnweapons19 = [];

_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player selectWeapon '%1'; reload player;";

spawnweapons1 = 
[
	["", true],
	["Popular", [2], "#USER:spawnweapons2", -5, [["expression", ""]], "1", "1"],
	["Sidearms", [3], "#USER:spawnweapons3", -5, [["expression", ""]], "1", "1"],
	["Shotguns", [4], "#USER:spawnweapons4", -5, [["expression", ""]], "1", "1"],
	["Sub Machine Guns", [5], "#USER:spawnweapons5", -5, [["expression", ""]], "1", "1"],
	["Light Machine Guns", [6], "#USER:spawnweapons6", -5, [["expression", ""]], "1", "1"],
	["Assault Rifles", [7], "#USER:spawnweapons8", -5, [["expression", ""]], "1", "1"],
	["Sniper Rifles", [8], "#USER:spawnweapons14", -5, [["expression", ""]], "1", "1"],
	["Explosives", [9], "#USER:spawnweapons16", -5, [["expression", ""]], "1", "1"],
	["Smoke", [10], "#USER:spawnweapons17", -5, [["expression", ""]], "1", "1"],
	["Flares", [11], "#USER:spawnweapons19", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Read before spawn...", [-1], "", -5, [["expression", "titleText ['Weapons with asterisk (*) are not in DayZ mod anymore (or never was). It means that server admins can detect it the logs and you can get local ban on this server.','PLAIN DOWN']; titleFadeOut 20;
"]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons2 = 
[
	["", true],
	["M9SD", [2], "", -5, [["expression", format[_text, "M9SD"]]], "1", "1"],
	["Bizon PP-19 SD", [3], "", -5, [["expression", format[_text, "bizon_silenced"]]], "1", "1"],
	["M4A1 CCO SD", [4], "", -5, [["expression", format[_text, "M4A1_AIM_SD_camo"]]], "1", "1"],
	["L85A2 AWS", [5], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_CWS"]]], "1", "1"],
	["AKM", [6], "", -5, [["expression", format[_text, "AK_47_M"]]], "1", "1"],
	["MK48 Mod 0", [7], "", -5, [["expression", format[_text, "Mk_48_DZ"]]], "1", "1"],
	["SVD Camo", [8], "", -5, [["expression", format[_text, "SVD_CAMO"]]], "1", "1"],
	["M107", [9], "", -5, [["expression", format[_text, "m107_DZ"]]], "1", "1"],
	["AS50", [10], "", -5, [["expression", format[_text, "BAF_AS50_scoped"]]], "1", "1"],
	["PDW SD *", [11], "", -5, [["expression", format[_text, "UZI_SD_EP1"]]], "1", "1"],
	["AS50 TWS *", [12], "", -5, [["expression", format[_text, "BAF_AS50_TWS"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons3 = 
[
	["", true],
	["Makarov", [2], "", -5, [["expression", format[_text, "Makarov"]]], "1", "1"],
	["Revolver", [3], "", -5, [["expression", format[_text, "revolver_EP1"]]], "1", "1"],
	["M1911", [4], "", -5, [["expression", format[_text, "Colt1911"]]], "1", "1"],
	["G17", [5], "", -5, [["expression", format[_text, "glock17_EP1"]]], "1", "1"],
	["PDW", [6], "", -5, [["expression", format[_text, "UZI_EP1"]]], "1", "1"],
	["M9", [7], "", -5, [["expression", format[_text, "M9"]]], "1", "1"],
	["M9SD", [8], "", -5, [["expression", format[_text, "M9SD"]]], "1", "1"],
	["Makarov SD *", [9], "", -5, [["expression", format[_text, "MakarovSD"]]], "1", "1"],
	["Sa-61 *", [10], "", -5, [["expression", format[_text, "Sa61_EP1"]]], "1", "1"],
	["Revolver Gold *", [11], "", -5, [["expression", format[_text, "revolver_gold_EP1"]]], "1", "1"],
	["PDW SD *", [12], "", -5, [["expression", format[_text, "UZI_SD_EP1"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons4 = 
[
	["", true],
	["Hatchet", [2], "", -5, [["expression", format[_text, "MeleeHatchet"]]], "1", "1"],
	["Crowbar", [3], "", -5, [["expression", format[_text, "MeleeCrowbar"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Compound Crossbow", [4], "", -5, [["expression", format[_text, "Crossbow"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Double-barreled Shotgun", [5], "", -5, [["expression", format[_text, "MR43"]]], "1", "1"], 
	["Winchester 1866", [6], "", -5, [["expression", format[_text, "Winchester1866"]]], "1", "1"], 
	["M1014", [7], "", -5, [["expression", format[_text, "M1014"]]], "1", "1"], 
	["Remington 870 (Flashlight)", [8], "", -5, [["expression", format[_text, "Remington870_lamp"]]], "1", "1"],
	["Saiga 12K *", [9], "", -5, [["expression", format[_text, "Saiga12K"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons5 = 
[
	["", true],
	["PDW", [2], "", -5, [["expression", format[_text, "UZI_EP1"]]], "1", "1"],
	["Bizon PP-19 SD", [3], "", -5, [["expression", format[_text, "bizon_silenced"]]], "1", "1"],
	["MP5A5", [4], "", -5, [["expression", format[_text, "MP5A5"]]], "1", "1"],
	["MP5SD6", [5], "", -5, [["expression", format[_text, "MP5SD"]]], "1", "1"],
	["Sa-61 *", [6], "", -5, [["expression", format[_text, "Sa61_EP1"]]], "1", "1"],
	["PDW SD *", [7], "", -5, [["expression", format[_text, "UZI_SD_EP1"]]], "1", "1"],
	["Bizon PP-19 *", [8], "", -5, [["expression", format[_text, "bizon"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons6 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons7", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M240", [2], "", -5, [["expression", format[_text, "M240"]]], "1", "1"],
	["M249 SAW", [3], "", -5, [["expression", format[_text, "M249"]]], "1", "1"],
	["Mk 48 Mod 0", [4], "", -5, [["expression", format[_text, "Mk_48_DZ"]]], "1", "1"],
	["L7A2 GPMG *", [5], "", -5, [["expression", format[_text, "BAF_L7A2_GPMG"]]], "1", "1"],
	["M60E4 *", [6], "", -5, [["expression", format[_text, "M60A4_EP1"]]], "1", "1"],
	["MG36 *", [7], "", -5, [["expression", format[_text, "MG36"]]], "1", "1"],
	["PKM *", [8], "", -5, [["expression", format[_text, "PK"]]], "1", "1"],
	["PKP (Pecheneg) *", [9], "", -5, [["expression", format[_text, "Pecheneg"]]], "1", "1"],
	["RPK *", [10], "", -5, [["expression", format[_text, "RPK_74"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons7 = 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["L110A1 *", [2], "", -5, [["expression", format[_text, "BAF_L110A1_Aim"]]], "1", "1"],
	["M249 SAW *", [3], "", -5, [["expression", format[_text, "M249_EP1"]]], "1", "1"],
	["M240 Scope *", [4], "", -5, [["expression", format[_text, "m240_scoped_EP1"]]], "1", "1"],
	["M249 Scope *", [5], "", -5, [["expression", format[_text, "M249_m145_EP1"]]], "1", "1"],
	["Mk48 Mod 0 (Camo) *", [6], "", -5, [["expression", format[_text, "Mk_48_DES_EP1"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons8 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons9", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["AK-74", [2], "", -5, [["expression", format[_text, "AK_74"]]], "1", "1"],
	["AKS-74 Kobra", [3], "", -5, [["expression", format[_text, "AKS_74_kobra"]]], "1", "1"],
	["AKS-74U", [4], "", -5, [["expression", format[_text, "AKS_74_U"]]], "1", "1"],
	["AKM", [5], "", -5, [["expression", format[_text, "AK_47_M"]]], "1", "1"],
	["FN FAL", [6], "", -5, [["expression", format[_text, "FN_FAL"]]], "1", "1"],
	["FN FAL AN/PVS-4", [7], "", -5, [["expression", format[_text, "FN_FAL_ANPVS4"]]], "1", "1"],
	["L85A2 AWS", [8], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_CWS"]]], "1", "1"],
	["Lee Enfield", [9], "", -5, [["expression", format[_text, "LeeEnfield"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons9 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons10", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M14 AIM", [2], "", -5, [["expression", format[_text, "M14_EP1"]]], "1", "1"],
	["M16A2", [3], "", -5, [["expression", format[_text, "M16A2"]]], "1", "1"],
	["M16A2 M203", [4], "", -5, [["expression", format[_text, "M16A2GL"]]], "1", "1"],
	["M16A4 ACOG", [5], "", -5, [["expression", format[_text, "m16a4_acg"]]], "1", "1"],
	["M4A1", [6], "", -5, [["expression", format[_text, "M4A1"]]], "1", "1"],  
	["M4A1 CCO", [7], "", -5, [["expression", format[_text, "M4A1_Aim"]]], "1", "1"],
	["M4A1 CCO SD (Camo)", [8], "", -5, [["expression", format[_text, "M4A1_AIM_SD_camo"]]], "1", "1"],
	["M4A1 Holo", [9], "", -5, [["expression", format[_text, "M4A1_HWS_GL"]]], "1", "1"],
	["M4A3 CCO", [10], "", -5, [["expression", format[_text, "M4A3_CCO_EP1"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons10 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons11", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["AK-107 GP-25 *", [2], "", -5, [["expression", format[_text, "AK_107_GL_kobra"]]], "1", "1"],
	["AK-107 GP-25 PSO *", [3], "", -5, [["expression", format[_text, "AK_107_GL_pso"]]], "1", "1"],
	["AK-107 Kobra*", [4], "", -5, [["expression", format[_text, "AK_107_kobra"]]], "1", "1"],
	["AK-107 PSO *", [5], "", -5, [["expression", format[_text, "AK_107_pso"]]], "1", "1"],
	["AK-74 GP-25 *", [6], "", -5, [["expression", format[_text, "AK_74_GL"]]], "1", "1"],
	["AK-74 GP-25 Kobra *", [7], "", -5, [["expression", format[_text, "AK_74_GL_kobra"]]], "1", "1"],
	["AKS-74UN Kobra SD *", [8], "", -5, [["expression", format[_text, "AKS_74_UN_kobra"]]], "1", "1"],
	["AKS-74 PSO *", [9], "", -5, [["expression", format[_text, "AKS_74_pso"]]], "1", "1"],
	["AKS *", [10], "", -5, [["expression", format[_text, "AK_47_S"]]], "1", "1"],
	["AKS (Gold) *", [11], "", -5, [["expression", format[_text, "AKS_GOLD"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons11 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons12", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["G36 *", [2], "", -5, [["expression", format[_text, "G36a"]]], "1", "1"],
	["G36 (Camo) *", [3], "", -5, [["expression", format[_text, "G36A_camo"]]], "1", "1"],
	["G36C *", [4], "", -5, [["expression", format[_text, "G36C"]]], "1", "1"],
	["G36C (Camo) *", [5], "", -5, [["expression", format[_text, "G36C_camo"]]], "1", "1"],
	["G36C SD *", [6], "", -5, [["expression", format[_text, "G36_C_SD_eotech"]]], "1", "1"],
	["G36C SD (Camo) *", [7], "", -5, [["expression", format[_text, "G36_C_SD_camo"]]], "1", "1"],
	["G36K *", [8], "", -5, [["expression", format[_text, "G36K"]]], "1", "1"],
	["G36K (Camo) *", [9], "", -5, [["expression", format[_text, "G36K_camo"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons12 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons13", -5, [["expression", ""]], "1", "1"],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["L85A2 ACOG *", [2], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_ACOG"]]], "1", "1"],
	["L85A2 Holo *", [3], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_Holo"]]], "1", "1"],
	["L85A2 SUSAT *", [4], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_SUSAT"]]], "1", "1"],
	["L85A2 ACOG GL *", [5], "", -5, [["expression", format[_text, "BAF_L85A2_UGL_ACOG"]]], "1", "1"],
	["L85A2 Holo GL *", [6], "", -5, [["expression", format[_text, "BAF_L85A2_UGL_Holo"]]], "1", "1"],
	["L85A2 SUSAT GL *", [7], "", -5, [["expression", format[_text, "BAF_L85A2_UGL_SUSAT"]]], "1", "1"],
	["L86A2 LSW *", [8], "", -5, [["expression", format[_text, "BAF_L86A2_ACOG"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons13 = 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M16A4 *", [2], "", -5, [["expression", format[_text, "M16A4"]]], "1", "1"],
	["M16A4 M203 *", [3], "", -5, [["expression", format[_text, "M16A4_GL"]]], "1", "1"],
	["M16A4 M203 ACOG *", [4], "", -5, [["expression", format[_text, "M16A4_ACG_GL"]]], "1", "1"],
	["M4A1 Holo (Camo) *", [5], "", -5, [["expression", format[_text, "M4A1_HWS_GL_camo"]]], "1", "1"],
	["M4A1 Holo SD (Camo) *", [6], "", -5, [["expression", format[_text, "M4A1_HWS_GL_SD_Camo"]]], "1", "1"],
	["M4A1 M203 RCO *", [7], "", -5, [["expression", format[_text, "M4A1_RCO_GL"]]], "1", "1"],
	["M4A1 CCO (Camo) *", [8], "", -5, [["expression", format[_text, "M4A1_Aim_camo"]]], "1", "1"],
	["M4A3 M203 ACOG *", [9], "", -5, [["expression", format[_text, "M4A3_RCO_GL_EP1"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons14 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons15", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["CZ 550", [2], "", -5, [["expression", format[_text, "huntingrifle"]]], "1", "1"],
	["M24", [3], "", -5, [["expression", format[_text, "M24"]]], "1", "1"],
	["DMR", [4], "", -5, [["expression", format[_text, "DMR"]]], "1", "1"],
	["SVD (Camo)", [5], "", -5, [["expression", format[_text, "SVD_CAMO"]]], "1", "1"],
	["M107", [6], "", -5, [["expression", format[_text, "m107_DZ"]]], "1", "1"],
	["AS50", [7], "", -5, [["expression", format[_text, "BAF_AS50_scoped"]]], "1", "1"],
	["AS50 TWS *", [8], "", -5, [["expression", format[_text, "BAF_AS50_TWS"]]], "1", "1"],
	["KSVK *", [9], "", -5, [["expression", format[_text, "KSVK"]]], "1", "1"],
	["M40A3 *", [10], "", -5, [["expression", format[_text, "M40A3"]]], "1", "1"],
	["Mk12 SPR *", [11], "", -5, [["expression", format[_text, "M4SPR"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons15 = 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["L115A3 LRR*", [2], "", -5, [["expression", format[_text, "BAF_LRR_scoped_W"]]], "1", "1"],
	["L115A3 LRR (Desert Camo)*", [3], "", -5, [["expression", format[_text, "BAF_LRR_scoped"]]], "1", "1"],
	["M24 (Desert Camo)*", [4], "", -5, [["expression", format[_text, "M24_des_EP1"]]], "1", "1"],
	["SVD *", [5], "", -5, [["expression", format[_text, "SVD"]]], "1", "1"],
	["SVD (Desert Camo) *", [6], "", -5, [["expression", format[_text, "SVD_des_EP1"]]], "1", "1"],
	["SVD NSPU *", [7], "", -5, [["expression", format[_text, "SVD_NSPU_EP1"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons16 = 
[
	["", true],
	["M67 Frag Grenade", [2], "", -5, [["expression", "player addMagazine 'HandGrenade_West';"]], "1", "1"],
	["RGO Frag Grenade", [3], "", -5, [["expression", "player addMagazine 'HandGrenade_East';"]], "1", "1"],
//	["RGO Frag Grenade", [3], "", -5, [["expression", "player addMagazine 'HandGrenade';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M203 HE", [4], "", -5, [["expression", "player addMagazine '1Rnd_HE_M203';"]], "1", "1"],
	["GP-25 HE *", [5], "", -5, [["expression", "player addMagazine '1Rnd_HE_GP25';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Satchel Charges", [6], "", -5, [["expression", "player addMagazine 'PipeBomb';"]], "1", "1"],
	["IED (Garbage) *", [7], "", -5, [["expression", "player addMagazine 'BAF_ied_v1';"]], "1", "1"],
	["Mine *", [8], "", -5, [["expression", "player addMagazine 'Mine';"]], "1", "1"],
	["MineE *", [9], "", -5, [["expression", "player addMagazine 'MineE';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons17 = 
[
	["", true],
	[">>> Next >>>", [13], "#USER:spawnweapons18", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Smoke Grenade", [2], "", -5, [["expression", "player addMagazine 'SmokeShell';"]], "1", "1"],
	["Smoke Grenade (Red)", [3], "", -5, [["expression", "player addMagazine 'SmokeShellRed';"]], "1", "1"],
	["Smoke Grenade (Green)", [4], "", -5, [["expression", "player addMagazine 'SmokeShellGreen';"]], "1", "1"],
	["Smoke Grenade (Yellow) *", [5], "", -5, [["expression", "player addMagazine 'SmokeShellYellow';"]], "1", "1"],
	["Smoke Grenade (Orange) *", [6], "", -5, [["expression", "player addMagazine 'SmokeShellOrange';"]], "1", "1"],
	["Smoke Grenade (Purple) *", [7], "", -5, [["expression", "player addMagazine 'SmokeShellPurple';"]], "1", "1"],
	["Smoke Grenade (Blue) *", [8], "", -5, [["expression", "player addMagazine 'SmokeShellBlue';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons18 = 
[
	["", true],
	["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["M203 Smoke", [2], "", -5, [["expression", "player addMagazine '1Rnd_Smoke_M203';"]], "1", "1"],
	["M203 Smoke (Red) *", [3], "", -5, [["expression", "player addMagazine '1Rnd_SmokeRed_M203';"]], "1", "1"],
	["M203 Smoke (Green) *", [4], "", -5, [["expression", "player addMagazine '1Rnd_SmokeGreen_M203';"]], "1", "1"],
	["M203 Smoke (Yellow) *", [5], "", -5, [["expression", "player addMagazine '1Rnd_SmokeYellow_M203';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["GP-25 Smoke *", [6], "", -5, [["expression", "player addMagazine '1Rnd_Smoke_GP25';"]], "1", "1"],
	["GP-25 Smoke (Red) *", [7], "", -5, [["expression", "player addMagazine '1Rnd_SmokeRed_GP25';"]], "1", "1"],
	["GP-25 Smoke (Green) *", [8], "", -5, [["expression", "player addMagazine '1Rnd_SmokeGreen_GP25';"]], "1", "1"],
	["GP-25 Smoke (Yellow) *", [9], "", -5, [["expression", "player addMagazine '1Rnd_SmokeYellow_GP25';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

spawnweapons19 = 
[
	["", true],
	["M203 Flare (White)", [2], "", -5, [["expression", "player addMagazine 'FlareWhite_M203';"]], "1", "1"],
	["M203 Flare (Green)", [3], "", -5, [["expression", "player addMagazine 'FlareGreen_M203';"]], "1", "1"],
	["M203 Flare (Red) *", [4], "", -5, [["expression", "player addMagazine 'FlareRed_M203';"]], "1", "1"],
	["M203 Flare (Yellow) *", [5], "", -5, [["expression", "player addMagazine 'FlareYellow_M203';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["GP-25 Flare (White) *", [6], "", -5, [["expression", "player addMagazine 'FlareWhite_GP25';"]], "1", "1"],
	["GP-25 Flare (Green) *", [7], "", -5, [["expression", "player addMagazine 'FlareGreen_GP25';"]], "1", "1"],
	["GP-25 Flare (Red) *", [8], "", -5, [["expression", "player addMagazine 'FlareRed_GP25';"]], "1", "1"],
	["GP-25 Flare (Yellow) *", [9], "", -5, [["expression", "player addMagazine 'FlareYellow_GP25';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:spawnweapons1";, "", -5, [["expression", "player addMagazine 'FlareRed_GP25';"]], "1", "1"],
	["GP-25 Flare (Yellow) *", [9], "", -5, [["expression", "player addMagazine 'FlareYellow_GP25';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]],