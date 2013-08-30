hint format["ToXiiC loadout added       
Old gear removed."];

removeAllWeapons player;
removeAllItems player;
removebackpack player;




player addBackPack "DZ_Backpack_EP1";

player addweapon "M4A1_AIM_SD_camo";
player selectWeapon "M4A1_AIM_SD_camo";
player addMagazine '30Rnd_556x45_StanagSD';
player addMagazine '30Rnd_556x45_StanagSD';
player addMagazine '5Rnd_127x99_as50';
player addMagazine '5Rnd_127x99_as50';
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
bp addWeaponCargoGlobal ["BAF_AS50_TWS",1];
bp addMagazineCargoGlobal ["ItemTent",1];
bp addMagazineCargoGlobal ["PipeBomb",1];
bp addMagazineCargoGlobal ["Skin_Sniper1_DZ",1];

reload player;