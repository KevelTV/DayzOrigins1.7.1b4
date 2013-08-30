hint format["Railgun loadout added       
Old gear removed."];

removeAllWeapons player;
removeAllItems player;
removebackpack player;




player addBackPack "DZ_Backpack_EP1";

player addweapon "nsw_er7s";
player selectWeapon "nsw_er7s";
player addMagazine 'nsw_er7mm';
player addMagazine 'nsw_er7mm';
player addMagazine 'nsw_er7mm';
player addMagazine 'nsw_er7mm';
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