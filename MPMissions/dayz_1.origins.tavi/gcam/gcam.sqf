/* 
[AlPmaker : AJ Hotkey Menu] 
17:16 04/09/12
v .01 beta

[Benefits]:

- after executing You can use hotkey to show cheat menu, based on my previous solution (look at AJ forums)
- autoremoves main AJ menu. If you wanna see it again - press INS
- if You want to disable this menu - "Toggle Hotkey Menu" again
- works in vehicles \0/

[WARNINGS]:
- i hope coders will let us to change "initmenu.sqf" in future - then we will be able to use just INS to load this menu :)
- default "ammo.sqf" works wrong with this menu. use your own or recommended
- do not forget to change path to Yours!
*/

//Settings
pathtoscrdir = "ToxicMenu\"; //WRITE YOUR PASS TO AJ SCRIPTS FOLDER HERE!! (USE CAPITAL LETTER FOR DRIVE!)
exstr = 'player execVM "'+pathtoscrdir+'%1"';
exstr1 = '[] execVM "%1"';
//End of settings



keymenu = 
[
	["",true],
	["ToXiiC Menu - Select Options", [-1], "", -5, [["expression", ""]], "1", "0"],
        ["MAIN MENU", [2], "#USER:keymenu2", -5, [["expression", ""]], "1", "1"],	
        ["TELEPORT OPTIONS", [3], "#USER:keymenu3", -5, [["expression", ""]], "1", "1"],	
        ["SPAWN OPTIONS", [4], "#USER:keymenu4", -5, [["expression", ""]], "1", "1"],
        ["PLAYER OPTIONS", [5], "#USER:keymenu5", -5, [["expression", ""]], "1", "1"],
        ["CAR OPTIONS", [6], "#USER:keymenu6", -5, [["expression", ""]], "1", "1"],
		["LOADOUTS", [7], "#USER:keymenu7", -5, [["expression", ""]], "1", "1"],
		["FUN", [8], "#USER:keymenu8", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];
keymenu2 = 
[
	["",true],
	["==Main Menu==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Map Marker (Teleport Included)", [2],  "", -5, [["expression", format[exstr,"mark.sqf"]]], "1", "1"],
	["Show Medicboxes on the Map)", [3],  "", -5, [["expression", format[exstr,"MapMedicbox.sqf"]]], "1", "1"],
    ["GCAM Menu/Specate Player", [4],  "", -5, [["expression", format[exstr1,"gcam\1gcam.sqf"]]], "1", "1"],	
	["Delete Item/Vehicle (Mouse Pointer)", [5],  "", -5, [["expression", format[exstr,"DeleteVehicle.sqf"]]], "1", "1"],
	["Stats Changer", [6],  "", -5, [["expression", format[exstr,"stats.sqf"]]], "1", "1"],
	["Suicide", [7],  "", -5, [["expression", format[exstr,"suicide.sqf"]]], "1", "1"],
	["Unfreeze Player", [8],  "", -5, [["expression", format[exstr,"UnfreezePlayer.sqf"]]], "1", "1"],
	["Show Debug Console", [9],  "", -5, [["expression", format[exstr,"showdebug.sqf"]]], "1", "1"],
	["Fix Server Lag (For Everyone!!!)", [10],  "", -5, [["expression", format[exstr,"FixServerLag.sqf"]]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],	
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];
keymenu3 = 
[
	["",true],
	["==Teleport Options==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Teleport to Vehicle", [2],  "", -5, [["expression", format[exstr,"TPVehicle.sqf"]]], "1", "1"],
	["Teleport Player to You", [3],  "", -5, [["expression", format[exstr,"telefriends.sqf"]]], "1", "1"],
	["Teleport You to Player", [4],  "", -5, [["expression", format[exstr,"telefriends2.sqf"]]], "1", "1"],
	["Specate Player", [5],  "", -5, [["expression", format[exstr,"PlayerSpectate.sqf"]]], "1", "1"],
	["Teleport All Players", [6],  "", -5, [["expression", format[exstr,"TeleAll.sqf"]]], "1", "1"],
	["Teleport All Vehicles", [7],  "", -5, [["expression", format[exstr,"tpallvehicles.sqf"]]], "1", "1"],
	["Teleport Players to Hotel (Player to You))", [8],  "", -5, [["expression", format[exstr,"tpTOme.sqf"]]], "1", "1"],
	["Teleport You to Hotel (You to Player)", [9],  "", -5, [["expression", format[exstr,"tpTOYou.sqf"]]], "1", "1"],
	["Freeze Player in Air ", [10],  "", -5, [["expression", format[exstr,"FreezePlayer.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];
keymenu4 = 
[
	["",true],
	["==Spawn Options==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Item Box - Small (Medical Box)", [2],  "", -5, [["expression", format[exstr,"box.sqf"]]], "1", "1"],
	["Item Box - Big (RU Vehicle Box)", [3],  "", -5, [["expression", format[exstr,"box2.sqf"]]], "1", "1"],
    ["Spawn Vehicles (Only Use on zapHosting Servers!)", [4],  "", -5, [["expression", format[exstr,"vehiclespawn.sqf"]]], "1", "1"],
	["Spawn Vehicles - Test)", [5],  "", -5, [["expression", format[exstr,"vehspawn.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Next", [10], "#USER:keymenu9", -5, [["expression", ""]], "1", "1"],
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];
keymenu5 = 
[
	["",true],
	["==Player Options==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Godmode", [2],  "", -5, [["expression", format[exstr,"gm.sqf"]]], "1", "1"],
	["Infinite Ammo", [3],  "", -5, [["expression", format[exstr,"unlimitedammo.sqf"]]], "1", "1"],
	["No Recoil", [4],  "", -5, [["expression", format[exstr,"recoil.sqf"]]], "1", "1"],
	["Zombie Shield", [5],  "", -5, [["expression", format[exstr,"zombieshield2.sqf"]]], "1", "1"],
	["Player Shield", [6],  "", -5, [["expression", format[exstr,"playershield.sqf"]]], "1", "1"],
	["Heal", [7],  "", -5, [["expression", format[exstr,"heal.sqf"]]], "1", "1"],
	["No Zombie Aggro", [8],  "", -5, [["expression", format[exstr,"noaggro.sqf"]]], "1", "1"],
	["Heal other Players", [9],  "", -5, [["expression", format[exstr,"HealOther.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];
keymenu6 = 
[
	["",true],
	["==Car Options==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Repair", [2],  "", -5, [["expression", format[exstr,"repair.sqf"]]], "1", "1"],
	["Repair (Infistar)", [3],  "", -5, [["expression", format[exstr,"repair3.sqf"]]], "1", "1"],
	["Auto Repair", [4],  "", -5, [["expression", format[exstr,"autorepair.sqf"]]], "1", "1"],
	["Flip Vehicle", [5],  "", -5, [["expression", format[exstr,"flipvehicle.sqf"]]], "1", "1"],
	["More Speed", [6],  "", -5, [["expression", format[exstr,"speed.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];

keymenu7 = 
[
	["",true],
	["==LoadOuts==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["ToXiiC Loadout", [2],  "", -5, [["expression", format[exstr,"toxiic.sqf"]]], "1", "1"],
	["Railgun", [3],  "", -5, [["expression", format[exstr,"railgun.sqf"]]], "1", "1"],
	["YakB", [4],  "", -5, [["expression", format[exstr,"yakb.sqf"]]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];
keymenu8 = 
[
	["",true],
	["==Fun==", [-1], "", -5, [["expression", ""]], "1", "0"],
	["AdminFucker", [2],  "", -5, [["expression", format[exstr,"Adminfucker.sqf"]]], "1", "1"],
	["Teleport All Players", [3],  "", -5, [["expression", format[exstr,"TeleAll.sqf"]]], "1", "1"],
	["Dance", [4],  "", -5, [["expression", format[exstr,"dance1.sqf"]]], "1", "1"],
	["Kill Player", [5],  "", -5, [["expression", format[exstr,"terminator.sqf"]]], "1", "1"],
	["Morph Player", [6],  "", -5, [["expression", format[exstr,"morph.sqf"]]], "1", "1"],
	["Create Player", [7],  "", -5, [["expression", format[exstr,"createplayer.sqf"]]], "1", "1"],
	["Glue", [8],  "", -5, [["expression", format[exstr,"Glue.sqf"]]], "1", "1"],
	["Unglue Objects", [9],  "", -5, [["expression", format[exstr,"unglue.sqf"]]], "1", "1"],
	["Invisible", [10],  "", -5, [["expression", format[exstr,"invisible.sqf"]]], "1", "1"],
	["TP All Zombies ", [11],  "", -5, [["expression", format[exstr,"zombiesquad.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [11], "#USER:keymenu", -5, [["expression", ""]], "1", "1"],
	["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];

keymenu9 = 
[
	["",true],
	["==Spawn Options 2==", [-1], "", -5, [["expression", ""]], "1", "0"],
    ["Spawn Ammo", [2],  "", -5, [["expression", format[exstr,"giveammo.sqf"]]], "1", "1"],
    ["Spawn Skin", [3],  "", -5, [["expression", format[exstr,"skins.sqf"]]], "1", "1"],	
    ["Spawn Weapon", [4],  "", -5, [["expression", format[exstr,"weapon2.sqf"]]], "1", "1"],	
    ["Spawn Medical Items", [5],  "", -5, [["expression", format[exstr,"medicalitems.sqf"]]], "1", "1"],	
    ["Spawn Inventory Items", [6],  "", -5, [["expression", format[exstr,"inventory.sqf"]]], "1", "1"],	
    ["Spawn Food + Drink", [7],  "", -5, [["expression", format[exstr,"fooddrinks.sqf"]]], "1", "1"],
    ["Spawn Backpack", [8],  "", -5, [["expression", format[exstr,"bp.sqf"]]], "1", "1"],
	["Spawn Coyote Bags (x5)", [9],  "", -5, [["expression", format[exstr,"BPS.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [10], "#USER:keymenu4", -5, [["expression", ""]], "1", "1"],
	["Exit", [11], "", -3, [["expression", ""]], "1", "1"]
];


key_menu = 
{	
	showCommandingMenu '#USER:keymenu';
};

disableSerialization;

if (isnil "hotkeymenu") then 
{


	hotkeymenu = true;
	toggle_keyEH = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 0x3B) then {call key_menu;}"]; 
	for "_i" from 0 to 200 do {player removeAction _i};
	titleText ["Loaded","PLAIN DOWN"];titleFadeOut 2;
	sleep 0.1;
}
else 
{
	hotkeymenu = nil;
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", toggle_keyEH];
	titleText ["Menu deactivated.","PLAIN DOWN"];titleFadeOut 2;
	sleep 0.1;
};
 



waituntil 
{	
	sleep 0.1;
	(isnil "hotkeymenu")
};