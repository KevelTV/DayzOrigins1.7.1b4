hint format["Railgun loadout added       
Old gear removed."];

removeAllWeapons player;
removeAllItems player;
removebackpack player;




player addBackPack "DZ_Backpack_EP1";

player addweapon "Gau8";
player selectWeapon "Gau8";
player addMagazine '1350Rnd_30mmAP_A10';
player addMagazine 'B_30mmA10_AP';

player addMagazine 'Skin_Sniper1_DZ';
player addMagazine 'ItemSodaMdew';
player addMagazine 'FoodSteakCooked';
player addMagazine 'HandRoadFlare';

player addweapon "M9SD";
player addMagazine '15Rnd_9x19_M9SD';
player addMagazine '15Rnd_9x19_M9SD';
player addMagazine '15Rnd_9x19_M9SD';
player addMagazine '15Rnd_9x19_M9SD';
player addMagazine 'ItemBandage';
player addMagazine 'ItemBandage';
player addMagazine 'ItemBandage';
player addMagazine 'ItemBandage';

player addWeapon 'Binocular_Vector';
player addWeapon 'NVGoggles';
player addWeapon 'ItemGPS';
player addWeapon 'ItemCompass';
player addWeapon 'ItemMap';
player addWeapon 'ItemHatchet';
player addWeapon 'ItemKnife';
player addWeapon 'Itemmatchbox';
player addWeapon 'Itemetool';
player addWeapon 'Itemtoolbox';
player addWeapon 'ItemWatch';

bp = unitBackpack player;
bp addWeaponCargoGlobal ["YakB",1];
bp addMagazineCargoGlobal ["1470Rnd_127x108_YakB",1];
bp addMagazineCargoGlobal ["1470Rnd_127x108_YakB",1];


reload player;