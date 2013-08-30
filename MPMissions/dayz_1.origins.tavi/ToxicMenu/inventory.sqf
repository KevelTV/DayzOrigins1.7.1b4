items1 = [];
items2 = [];
items1 = 
[
	["",true],
	["Map", [2], "", -5, [["expression", "player addWeapon 'ItemMap';"]], "1", "1"],
	["GPS", [3], "", -5, [["expression", "player addWeapon 'ItemGps';"]], "1", "1"],
	["Watch", [4], "", -5, [["expression", "player addWeapon 'ItemWatch';"]], "1", "1"],
	["Radio", [5], "", -5, [["expression", "player addWeapon 'ItemRadio';"]], "1", "1"],
	["Compass", [6], "", -5, [["expression", "player addWeapon 'ItemCompass';"]], "1", "1"],
	["Binocular", [7], "", -5, [["expression", "player addWeapon 'Binocular';"]], "1", "1"],
	["Rangefinder", [8], "", -5, [["expression", "player addWeapon 'Binocular_Vector';"]], "1", "1"],
	["Laser marker", [9], "", -5, [["expression", "player addWeapon 'Laserdesignator';"]], "1", "1"],
	["Nightvision goggles", [10], "", -5, [["expression", "player addWeapon 'NVGoggles';"]], "1", "1"],
	["Next", [11], "#USER:items2", -5, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
];
items2 = 
[
	["",true],
	["Hunting knife", [2], "", -5, [["expression", "player addWeapon 'ItemKnife';"]], "1", "1"],
	["Hatchet", [3], "", -5, [["expression", "player addWeapon 'ItemHatchet';"]], "1", "1"],
	["Toolbox", [4], "", -5, [["expression", "player addWeapon 'ItemToolbox';"]], "1", "1"],
	["Military Flashlight", [5], "", -5, [["expression", "player addWeapon 'ItemFlashlightRed';"]], "1", "1"],
	["Matchbox", [6], "", -5, [["expression", "player addWeapon 'ItemMatchbox';"]], "1", "1"],
	["E-Tool", [7], "", -5, [["expression", "player addWeapon 'ItemEtool';"]], "1", "1"],	
	["Wire", [8], "", -5, [["expression", "player addWeapon 'ItemWire';"]], "1", "1"],
	["Sandbag", [9], "", -5, [["expression", "player addWeapon 'ItemSandbag';"]], "1", "1"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]];
showCommandingMenu "#USER:items1";
