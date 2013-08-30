weaponsidearms = [];
weaponmachineguns = [];
weaponassaultrifles = [];
weaponassaultrifles2 = [];
weaponsniperrifles = [];
weaponshotguns = [];
		
_text = "player addWeapon '%1'; _mags = getArray(configfile >> 'cfgWeapons' >> '%1' >> 'magazines'); _mag = _mags select 0; player addMagazine _mag; player selectWeapon '%1'; reload player;";    

weaponsidearms = 
[
	["", true],	
	["Sidearms", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["G17", [2], "", -5, [["expression", format[_text, "glock17_EP1"]]], "1", "1"],  
	["M9", [3], "", -5, [["expression", format[_text, "M9"]]], "1", "1"],  
	["M9SD", [4], "", -5, [["expression", format[_text, "M9SD"]]], "1", "1"],  
	["M1911", [5], "", -5, [["expression", format[_text, "Colt1911"]]], "1", "1"],  
	["Makarov", [6], "", -5, [["expression", format[_text, "Makarov"]]], "1", "1"],  
	["Uzi", [7], "", -5, [["expression", format[_text, "UZI_EP1"]]], "1", "1"],  
	["Revolver", [8], "", -5, [["expression", format[_text, "revolver_EP1"]]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "1"],
	["Next", [11], "#USER:weaponmachineguns", -5, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

weaponmachineguns = 
[
	["", true],	
	["Light Machine Guns", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["M240", [2], "", -5, [["expression", format[_text, "M240"]]], "1", "1"],  
	["M249", [3], "", -5, [["expression", format[_text, "M249"]]], "1", "1"],  
	["M249 SAW", [4], "", -5, [["expression", format[_text, "M249_EP1"]]], "1", "1"],  
	["MK48", [5], "", -5, [["expression", format[_text, "Mk_48"]]], "1", "1"],  
	["MK48 Camo", [6], "", -5, [["expression", format[_text, "Mk_48_DES_EP1"]]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "1"],
	["Sub Machine Guns", [-1], "", -5, [["expression", ""]], "1", "1"],
	["Bizon PP-19", [7], "", -5, [["expression", format[_text, "bizon"]]], "1", "1"],  
	["Bizon PP-19 SD", [8], "", -5, [["expression", format[_text, "bizon_silenced"]]], "1", "1"],  
	["MP5A5", [9], "", -5, [["expression", format[_text, "MP5A5"]]], "1", "1"],  
	["MP5SD6", [10], "", -5, [["expression", format[_text, "MP5SD"]]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "1"],
	["Next", [11], "#USER:weaponassaultrifles", -5, [["expression", ""]], "1", "1"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

weaponassaultrifles = 
[
	["", true],	
	["Assault Rifles", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["AK-74", [2], "", -5, [["expression", format[_text, "AK_74"]]], "1", "1"],  
	["AKS-74U", [3], "", -5, [["expression", format[_text, "AKS_74_U"]]], "1", "1"],  
	["AKS-74 Kobra", [4], "", -5, [["expression", format[_text, "AKS_74_kobra"]]], "1", "1"],  
	["AKM", [5], "", -5, [["expression", format[_text, "AK_47_M"]]], "1", "1"],  
	["FN FAL", [6], "", -5, [["expression", format[_text, "FN_FAL"]]], "1", "1"],  
	["FN FAL AN/PVS", [7], "", -5, [["expression", format[_text, "FN_FAL_ANPVS4"]]], "1", "1"],  
	["L85A2 AWS", [8], "", -5, [["expression", format[_text, "BAF_L85A2_RIS_CWS"]]], "1", "1"],  
	["Lee Enfield", [9], "", -5, [["expression", format[_text, "LeeEnfield"]]], "1", "1"],  
	["M4A1", [10], "", -5, [["expression", format[_text, "M4A1"]]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "1"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],
	["Next", [11], "#USER:weaponassaultrifles2", -5, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

weaponassaultrifles2 = 
[
	["", true],	
	["Assault Rifles", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["M4A1 CCO", [2], "", -5, [["expression", format[_text, "M4A1_Aim"]]], "1", "1"],  
	["M4A1 CCO SD", [3], "", -5, [["expression", format[_text, "M4A1_AIM_SD_camo"]]], "1", "1"],  
	["M4A1 Holo", [4], "", -5, [["expression", format[_text, "M4A1_HWS_GL"]]], "1", "1"],  
	["M4A3 CCO", [5], "", -5, [["expression", format[_text, "M4A3_CCO_EP1"]]], "1", "1"],  
	["M16A2", [6], "", -5, [["expression", format[_text, "M16A2"]]], "1", "1"],  
	["M16A2 M203", [7], "", -5, [["expression", format[_text, "M16A2GL"]]], "1", "1"],  
	["M16A4 ACOG", [8], "", -5, [["expression", format[_text, "m16a4_acg"]]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "1"],
	["Next", [11], "#USER:weaponsniperrifles", -5, [["expression", ""]], "1", "1"],	
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

weaponsniperrifles = 
[
	["", true],	
	["Sniper Rifles", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["AS50", [2], "", -5, [["expression", format[_text, "PMC_AS50_scoped"]]], "1", "1"],  
	["CZ 550", [3], "", -5, [["expression", format[_text, "huntingrifle"]]], "1", "1"],  
	["DMR", [4], "", -5, [["expression", format[_text, "DMR"]]], "1", "1"],  
	["M14 AIM", [5], "", -5, [["expression", format[_text, "M14_EP1"]]], "1", "1"],  
	["M24", [6], "", -5, [["expression", format[_text, "M24"]]], "1", "1"],  
	["M107", [7], "", -5, [["expression", format[_text, "m107"]]], "1", "1"],  
	["SVD Camo", [8], "", -5, [["expression", format[_text, "SVD_CAMO"]]], "1", "1"], 
	["", [-1], "", -5, [["expression", ""]], "1", "1"], 
	["Next", [11], "#USER:weaponshotguns", -5, [["expression", ""]], "1", "1"],	
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

weaponshotguns = 
[
	["", true],	
	["Shotguns", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["M1014", [2], "", -5, [["expression", format[_text, "M1014"]]], "1", "1"],  	
	["Remington 870", [3], "", -5, [["expression", format[_text, "FDF_rem870"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "1"], 	
	["Crossbows", [-1], "", -5, [["expression", ""]], "1", "1"], 	  
	["Compound Crossbow", [4], "", -5, [["expression", format[_text, "Crossbow"]]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "1"], 		
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:weaponsidearms";