//hint 'Menu loaded! Check the notes-section in your map';
bowen_RANDSTR = ["Player Menu",
	"
		<execute expression=''>Click To Select Script</execute><br/>
		<execute expression=''> </execute><br/>
		<execute expression='[] spawn bfc_heal_RANDSTR'>Здоровье</execute><br/>
		<execute expression='[] spawn bfc_repair_RANDSTR'>Ремонт</execute><br/>
		<execute expression='[] spawn bfc_refil_RANDSTR'>Пополните боеприпасы</execute><br/>
		<execute expression='[] spawn bfc_za_RANDSTR'>Zed Agression</execute><br/>
		<execute expression='[] spawn bfc_aiai_RANDSTR'>Неприкасаемый</execute><br/>
		<execute expression='[] spawn telegps_RANDSTR'>Enable Alt+Click Teleport</execute><br/>
		<execute expression='[] spawn playeresp_RANDSTR'>Player ESP (only use once)</"+"execute><br/>
		<execute expression='[] spawn markeresp_RANDSTR'>Marker ESP (only use once)</"+"execute><br/>
		<execute expression='hint ""View distance Increased""; setViewDistance 2250;'>Посмотреть с увеличением расстояния 2250(only use once)</"+"execute><br/>
		<execute expression='hint ""View distance Increased""; setViewDistance 3250;'>Посмотреть с увеличением расстояния 3250(only use once)</"+"execute><br/>
		<execute expression='hint ""Grass Removed""; setTerrainGrid 50;'>Удалить траву(only use once)</"+"execute><br/>
		<execute expression='hint ""Ammo Activated""; [] spawn {while{true} do {(vehicle player) setVehicleAmmo 0.99; sleep 0.1;};};'>Unlimited Ammo(only use once)</"+"execute><br/>

	"];
bowen2_RANDSTR = ["Animal Morphing Menu",
	"
		<execute expression=''>Click To Morph to animal</execute><br/>
		<execute expression=''> </execute><br/>
		<executeClose expression='[]spawn bfc_this_RANDSTR;[dayz_playerUID,dayz_characterID,""Cow03""] spawn player_humanityMorph;'>Cow</execute><br/>
		<executeClose expression='[]spawn bfc_this_RANDSTR;[dayz_playerUID,dayz_characterID,""Fin""] spawn player_humanityMorph;'>Dog</execute><br/>
		<executeClose expression='[]spawn bfc_this_RANDSTR;[dayz_playerUID,dayz_characterID,""Rabbit""] spawn player_humanityMorph;'>Rabbit</execute><br/>
		<executeClose expression='[]spawn bfc_this_RANDSTR;[dayz_playerUID,dayz_characterID,""Sheep""] spawn player_humanityMorph;'>Sheep</execute><br/>	
		<executeClose expression='[]spawn bfc_this_RANDSTR;[dayz_playerUID,dayz_characterID,""Goat""] spawn player_humanityMorph;'>Goat</execute><br/>
		<executeClose expression='[]spawn bfc_this_RANDSTR;[dayz_playerUID,dayz_characterID,""WildBoar""] spawn player_humanityMorph;'>Wild Boar</execute><br/>
	"];
	bowen13_RANDSTR =["Clothing","
	<execute expression=''>Click To Spawn Skin</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""Skin_Sniper1_DZ""] spawn bfc_spwni_RANDSTR'>Ghille Suit</execute><br/>		
	<execute expression='[""Skin_Survivor2_DZ""] spawn bfc_spwni_RANDSTR'>Survivor Clothing</execute><br/>
	<execute expression='[""Skin_Camo1_DZ""] spawn bfc_spwni_RANDSTR'>Camo Clothing</execute><br/>		"];
	bowen7_RANDSTR = ["Equipment","
	<execute expression=''>Click To Spawn Item</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""Binocular_Vector""] spawn bfc_spwni_RANDSTR'>Rangefinder</execute><br/>
	<execute expression='[""Binocular""] spawn bfc_spwni_RANDSTR'>Binocular</execute><br/>
	<execute expression='[""NVGoggles""] spawn bfc_spwni_RANDSTR'>NVGoggles</execute><br/>
	<execute expression='[""ItemCompass""] spawn bfc_spwni_RANDSTR'>Compass</execute><br/>
	<execute expression='[""ItemGPS""] spawn bfc_spwni_RANDSTR'>GPS</execute><br/>
	<execute expression='[""ItemMap""] spawn bfc_spwni_RANDSTR'>Map</execute><br/>
	<execute expression='[""ItemWatch""] spawn bfc_spwni_RANDSTR'>Watch</execute><br/>
	<execute expression='[""ItemToolbox""] spawn bfc_spwni_RANDSTR'>Toolbox</execute><br/>
	<execute expression='[""ItemKnife""] spawn bfc_spwni_RANDSTR'>Knife</execute><br/>
	<execute expression='[""ItemMatchbox""] spawn bfc_spwni_RANDSTR'>Matchbox</execute><br/>
	<execute expression='[""ItemFlashlightRed""] spawn bfc_spwni_RANDSTR'>Military Flashlight</execute><br/>
	<execute expression='[""ItemEtool""] spawn bfc_spwni_RANDSTR'>Etool</execute><br/>
	<execute expression='[""ItemHatchet""] spawn bfc_spwni_RANDSTR'>Hatchet</execute><br/>
	"];
	bowen1_RANDSTR = ["Player Morph Menu","
	<execute expression=''>Click To Select Skin</execute><br/>
	<execute expression=''> </execute><br/>
	<executeClose expression='[dayz_playerUID,dayz_characterID,""Survivor1_DZ""] spawn player_humanityMorph;'>Invisible Skin</execute><br/>
	<executeClose expression='[dayz_playerUID,dayz_characterID,""Survivor2_DZ""] spawn player_humanityMorph;'>Survivor Skin</execute><br/>
	<executeClose expression='[dayz_playerUID,dayz_characterID,""Survivor3_DZ""] spawn player_humanityMorph;'>Hero Skin</execute><br/>
	<executeClose expression='[dayz_playerUID,dayz_characterID,""Camo1_DZ""] spawn player_humanityMorph;'>Camo Skin</execute><br/>	
	<executeClose expression='[dayz_playerUID,dayz_characterID,""Sniper1_DZ""] spawn player_humanityMorph;'>Ghille Skin</execute><br/>"];
	bowen4_RANDSTR = ["Assault Rifles","
	<execute expression=''>Click To Spawn Weapon</execute><br/>
	<execute expression=''> </execute><br/>
	<executeClose expression='[""M4A1_AIM_SD_camo""] spawn bfc_spwnw_RANDSTR'>M4A1_AIM_SD_camo</execute><br/>
	<executeClose expression='[""AK_74""] spawn bfc_spwnw_RANDSTR'>AK-74</execute><br/>
	<executeClose expression='[""AK_74_GL_kobra""] spawn bfc_spwnw_RANDSTR'>AK-74 - GP-25 Cobra</execute><br/>
	<executeClose expression='[""AK_47_M""] spawn bfc_spwnw_RANDSTR'>AKM</execute><br/>
	<executeClose expression='[""AK_47_S""] spawn bfc_spwnw_RANDSTR'>AK-74</execute><br/>
	<executeClose expression='[""AKS_74""] spawn bfc_spwnw_RANDSTR'>AKS</execute><br/>
	<executeClose expression='[""AKS_74_GOSHAWK""] spawn bfc_spwnw_RANDSTR'>AKS_74 GOSHAWK</execute><br/>
	<executeClose expression='[""AKS_74_kobra""] spawn bfc_spwnw_RANDSTR'>AKS_74_kobra</execute><br/>
	<executeClose expression='[""AKS_74_NSPU""] spawn bfc_spwnw_RANDSTR'>AKS_74_NSPU</execute><br/>
	<executeClose expression='[""AKS_74_pso""] spawn bfc_spwnw_RANDSTR'>AKS_74_pso</execute><br/>
	<executeClose expression='[""AKS_74_U""] spawn bfc_spwnw_RANDSTR'>AKS_74_U</execute><br/>
	<executeClose expression='[""FN_FAL""] spawn bfc_spwnw_RANDSTR'>FN_FAL</execute><br/>
	<executeClose expression='[""FN_FAL_ANPVS4""] spawn bfc_spwnw_RANDSTR'>FN_FAL_ANPVS4</execute><br/>
	<executeClose expression='[""G36A_camo""] spawn bfc_spwnw_RANDSTR'>G36A_camo</execute><br/>
	<executeClose expression='[""G36C_camo""] spawn bfc_spwnw_RANDSTR'>G36C_camo</execute><br/>
	<executeClose expression='[""G36_C_SD_camo""] spawn bfc_spwnw_RANDSTR'>G36_C_SD_camo</execute><br/>
	<executeClose expression='[""G36K_camo""] spawn bfc_spwnw_RANDSTR'>G36K_camo</execute><br/>
	<executeClose expression='[""LeeEnfield""] spawn bfc_spwnw_RANDSTR'>LeeEnfield</execute><br/>
	<executeClose expression='[""M14_EP1""] spawn bfc_spwnw_RANDSTR'>M14_EP1</execute><br/>
	<executeClose expression='[""M16A2""] spawn bfc_spwnw_RANDSTR'>AKM</execute><br/>
	<executeClose expression='[""M16A2GL""] spawn bfc_spwnw_RANDSTR'>M16A2GL</execute><br/>
	<executeClose expression='[""M4A1""] spawn bfc_spwnw_RANDSTR'>M4A1</execute><br/>
	<executeClose expression='[""M4A3_RCO_GL_EP1""] spawn bfc_spwnw_RANDSTR'>M4A3_RCO_GL_EP1</execute><br/>
	<executeClose expression='[""M4A3_CCO_EP1""] spawn bfc_spwnw_RANDSTR'>M4A3_CCO_EP1</execute><br/>
	<executeClose expression='[""SCAR_L_CQC_CCO_SD""] spawn bfc_spwnw_RANDSTR'>SCAR_L_CQC_CCO_SD</execute><br/>
	<executeClose expression='[""SCAR_L_CQC""] spawn bfc_spwnw_RANDSTR'>SCAR_L_CQC</execute><br/>
	<executeClose expression='[""SCAR_L_CQC_Holo""] spawn bfc_spwnw_RANDSTR'>SCAR_L_CQC_Holo</execute><br/>
	<executeClose expression='[""SCAR_L_CQC_EGLM_Holo""] spawn bfc_spwnw_RANDSTR'>SCAR_L_CQC_EGLM_Holo</execute><br/>
	<executeClose expression='[""FN_FAL_ANPVS4""] spawn bfc_spwnw_RANDSTR'>FN_FAL_ANPVS4</execute><br/>
	<executeClose expression='[""G36_C_SD_camo""] spawn bfc_spwnw_RANDSTR'>G36_C_SD_camo</execute><br/>"];
	bowen5x_RANDSTR = ["Other Primary","
	<execute expression=''>Click To Spawn Weapon</execute><br/>
	<execute expression=''> </execute><br/>
	<executeClose expression='[""M240""] spawn bfc_spwnw_RANDSTR'>M240</execute><br/>
	<executeClose expression='[""M249""] spawn bfc_spwnw_RANDSTR'>M249</execute><br/>
	<executeClose expression='[""Mk_48_DZ""] spawn bfc_spwnw_RANDSTR'>Mk_48_DZ</execute><br/>
	<executeClose expression='[""huntingrifle""] spawn bfc_spwnw_RANDSTR'>huntingrifle</execute><br/>
	<executeClose expression='[""M24""] spawn bfc_spwnw_RANDSTR'>M24</execute><br/>
	<executeClose expression='[""DMR""] spawn bfc_spwnw_RANDSTR'>DMR</execute><br/>
	<executeClose expression='[""SVD_CAMO""] spawn bfc_spwnw_RANDSTR'>SVD_CAMO</execute><br/>
	<executeClose expression='[""m107_DZ""] spawn bfc_spwnw_RANDSTR'>m107_DZ</execute><br/>
	<executeClose expression='[""BAF_AS50_scoped""] spawn bfc_spwnw_RANDSTR'>BAF_AS50_scoped</execute><br/>
	<executeClose expression='[""bizon_silenced""] spawn bfc_spwnw_RANDSTR'>bizon_silenced</execute><br/>
	<executeClose expression='[""MP5A5""] spawn bfc_spwnw_RANDSTR'>MP5A5</execute><br/>
	<executeClose expression='[""MP5SD""] spawn bfc_spwnw_RANDSTR'>MP5SD</execute><br/>
	<executeClose expression='[""GAU8""] spawn bfc_spwnw_RANDSTR'>GAU8</execute><br/>
	<executeClose expression='[""M119""] spawn bfc_spwnw_RANDSTR'>M119</execute><br/>
	<executeClose expression='[""MR43""] spawn bfc_spwnw_RANDSTR'>MR43</execute><br/>
	<executeClose expression='[""Winchester1866""] spawn bfc_spwnw_RANDSTR'>Winchester1866</execute><br/>
	<executeClose expression='[""M1014""] spawn bfc_spwnw_RANDSTR'>M1014</execute><br/>
	<executeClose expression='[""Remington870_lamp""] spawn bfc_spwnw_RANDSTR'>Remington870_lamp</execute><br/>"];
	bowen5_RANDSTR = ["Sidearms","
	<execute expression=''>Click To Spawn Sidearm</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""glock17_EP1""] spawn bfc_spwnw_RANDSTR'>Glock17</execute><br/>
	<execute expression='[""Colt1911""] spawn bfc_spwnw_RANDSTR'>M1911</execute><br/>
	<execute expression='[""M9""] spawn bfc_spwnw_RANDSTR'>M9</execute><br/>
	<execute expression='[""M9SD""] spawn bfc_spwnw_RANDSTR'>M9 Silenced</execute><br/>
	<execute expression='[""Makarov""] spawn bfc_spwnw_RANDSTR'>Makarov PM</execute><br/>
	<execute expression='[""MakarovSD""] spawn bfc_spwnw_RANDSTR'>Makarov SD</execute><br/>
	<execute expression='[""revolver_EP1""] spawn bfc_spwnw_RANDSTR'>revolver</execute><br/>
	<execute expression='[""revolver_gold_EP1""] spawn bfc_spwnw_RANDSTR'>revolver Gold</execute><br/>
	<execute expression='[""UZI_EP1""] spawn bfc_spwnw_RANDSTR'>UZI</execute><br/>
	<execute expression='[""UZI_SD_EP1""] spawn bfc_spwnw_RANDSTR'>UZI SD</execute><br/>"];
	bowen6_RANDSTR = ["Backpacks","
	<execute expression=''>Click To Spawn Backpack</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""DZ_Patrol_Pack_EP1""] spawn bfc_spwnb_RANDSTR'>Coyote Patrol Pack</execute><br/>
	<execute expression='[""DZ_Assault_Pack_EP1""] spawn bfc_spwnb_RANDSTR'>ACU Assault Pack</execute><br/>
	<execute expression='[""DZ_CivilBackpack_EP1""] spawn bfc_spwnb_RANDSTR'>Czech BackPack</execute><br/>
	<execute expression='[""DZ_ALICE_Pack_EP1""] spawn bfc_spwnb_RANDSTR'>ALICE Pack</execute><br/>
	<execute expression='[""DZ_Backpack_EP1""] spawn bfc_spwnb_RANDSTR'>Coyote Backpack</execute><br/>"];
	bowen9_RANDSTR = ["Medical","
	<execute expression=''>Click To Spawn Item</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""ItemBandage""] spawn bfc_spwni_RANDSTR'>Bandage</execute><br/>
	<execute expression='[""ItemPainkiller""] spawn bfc_spwni_RANDSTR'>Painkillers</execute><br/>
	<execute expression='[""ItemBandage""] spawn bfc_spwni_RANDSTR'>Bandage</execute><br/>
	<execute expression='[""ItemPainkiller""] spawn bfc_spwni_RANDSTR'>Painkillers</execute><br/>
	<execute expression='[""ItemMorphine""] spawn bfc_spwni_RANDSTR'>Morphine</execute><br/>
	<execute expression='[""ItemEpinephrine""] spawn bfc_spwni_RANDSTR'>Epi-Pen</execute><br/>
	<execute expression='[""ItemBloodbag""] spawn bfc_spwni_RANDSTR'>Bloodbag</execute><br/>
	<execute expression='[""ItemHeatPack""] spawn bfc_spwni_RANDSTR'>HeatPack</execute><br/>
	<execute expression='[""ItemAntibiotic""] spawn bfc_spwni_RANDSTR'>Antibiotics</execute><br/>"];
	bowen10_RANDSTR = ["Food And Drink","
	<execute expression=''>Click To Spawn Item</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""ItemWaterbottle""] spawn bfc_spwni_RANDSTR'>Waterbottle</execute><br/>
	<execute expression='[""ItemSodaMdew""] spawn bfc_spwni_RANDSTR'>Mountain Dew</execute><br/>
	<execute expression='[""ItemSodaPepsi""] spawn bfc_spwni_RANDSTR'>Pepsi</execute><br/>
	<execute expression='[""ItemSodaCoke""] spawn bfc_spwni_RANDSTR'>Painkillers</execute><br/>
	<execute expression='[""FoodCanSardines""] spawn bfc_spwni_RANDSTR'>CanSardines</execute><br/>
	<execute expression='[""FoodSteakCooked""] spawn bfc_spwni_RANDSTR'>SteakCooked</execute><br/>
	<execute expression='[""FoodSteakRaw""] spawn bfc_spwni_RANDSTR'>SteakRaw</execute><br/>
	<execute expression='[""FoodCanBakedBeans""] spawn bfc_spwni_RANDSTR'>FoodCanBakedBeans</execute><br/>
	<execute expression='[""FoodCanPasta""] spawn bfc_spwni_RANDSTR'>FoodCanPasta</execute><br/>	"];
	bowen11_RANDSTR = ["Tents and Traps","
	<execute expression=''>Click To Spawn Item</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""ItemTent""] spawn bfc_spwni_RANDSTR'>ItemTent</execute><br/>
	<execute expression='[""TrapBear""] spawn bfc_spwni_RANDSTR'>Bear Trap</execute><br/>
	<execute expression='[""ItemWire""] spawn bfc_spwni_RANDSTR'>Wire</execute><br/>
	<execute expression='[""ItemTankTrap""] spawn bfc_spwni_RANDSTR'>TankTrap</execute><br/>
	<execute expression='[""ItemSandbag""] spawn bfc_spwni_RANDSTR'>Sandbag</execute><br/>
	<execute expression='[""PartWoodPile""] spawn bfc_spwni_RANDSTR'>WoodPile</execute><br/>
	<execute expression='[""HandGrenade_Stone""] spawn bfc_spwni_RANDSTR'>Stone</execute><br/>"];
	bowen12_RANDSTR = ["Запасные части","
	<execute expression=''>Click To Spawn Item</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='[""ItemJerrycan""] spawn bfc_spwni_RANDSTR'>Канистра</execute><br/>
	<execute expression='[""PartWheel""] spawn bfc_spwni_RANDSTR'>Колесо</execute><br/>
	<execute expression='[""PartEngine""] spawn bfc_spwni_RANDSTR'>Части двигателя</execute><br/>
	<execute expression='[""PartFueltank""] spawn bfc_spwni_RANDSTR'>Топливный бак</execute><br/>
	<execute expression='[""PartVRotor""] spawn bfc_spwni_RANDSTR'>Деталей ротора</execute><br/>
	<execute expression='[""PartGeneric""] spawn bfc_spwni_RANDSTR'>Металлолом</execute><br/>
	<execute expression='[""PartGlass""] spawn bfc_spwni_RANDSTR'>Запасное стекло</execute><br/>"];
	targetMenu_RANDSTR = ["Target Other Menu",
	"
	<execute expression=''>Click To Select Action</execute><br/>
	<execute expression=''> </execute><br/>
	<execute expression='pList call fn_ProcessDiaryLink_RANDSTR; sScript_RANDSTR = fn_control_RANDSTR;'>Контроль целевого</execute><br/>
	<execute expression='pList call fn_ProcessDiaryLink_RANDSTR; sScript_RANDSTR = fn_spectate_RANDSTR;'>Цель Spectate</execute><br/>
	<execute expression='pList call fn_ProcessDiaryLink_RANDSTR; sScript_RANDSTR = fn_Kill_RANDSTR;'>Убейте цель</execute><br/>
	"];
	
	playerSelection_RANDSTR = ["Player Selection", call
	{
		execStr_RANDSTR = "";
		for '_i' from 0 to (count playableUnits)-1 do
		{
			execStr_RANDSTR = execStr_RANDSTR + ("<execute expression=""['"+(name (playableUnits select _i))+"'] spawn sScript_RANDSTR; sScript_RANDSTR = {}; tMenu call fn_ProcessDiaryLink_RANDSTR;"">"+(name (playableUnits select _i))+"</execute><br/>");
		};
		execStr_RANDSTR
	}];

	veh_autoMenu_RANDSTR = ["Spawn local Vehicle", call
	{
		execStr_RANDSTR2 = "<execute expression=''>Click To Spawn local Vehicle</execute><br/><execute expression=''> </execute><br/>";
		_cfgvehicles = configFile >> "cfgVehicles";
		for '_i' from 0 to (count _cfgvehicles)-1 do
		{
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then
			{
				_veh_type = configName _vehicle;
				if ((getNumber (_vehicle >> 'scope') == 2) && (getText (_vehicle >> 'picture') != '') && (((_veh_type isKindOf 'LandVehicle') or (_veh_type isKindOf 'Air') or (_veh_type isKindOf 'Boat'))) && !((_veh_type isKindOf 'ParachuteBase') or (_veh_type isKindOf 'BIS_Steerable_Parachute'))) then
				{
					execStr_RANDSTR2 = execStr_RANDSTR2 + ("<execute expression=""'"+(_veh_type)+"' createVehicleLocal position player;"">"+(_veh_type)+"</execute><br/>");
				};
			};
		};
		execStr_RANDSTR2
	}];

	
markeresp_RANDSTR = {[] spawn {list_vec_w33_RANDSTR = (allMissionObjects 'Plane')+(allMissionObjects 'LandVehicle')+(allMissionObjects 'Helicopter')+(allMissionObjects 'Ship'); list_wrecked_w33_RANDSTR = allMissionObjects 'UH1Wreck_DZ'; list_tents_w33_RANDSTR = allMissionObjects 'TentStorage';   while {true} do {	 	unitList_player_w33_RANDSTR = allUnits;  	totalunits_w33 = count unitList_player_w33_RANDSTR; 	 	wzo = 0; 	yoxx = 0;  	for 'wzo' from 0 to -1 do 	{ 		actualunit_w33 = unitList_player_w33_RANDSTR select wzo;  		 		if ( isplayer actualunit_w33 && alive actualunit_w33 ) then  		{ 						deleteMarkerLocal ('Player' + (str wzo)); 			yoxx = wzo + 1; 			deleteMarkerLocal ('Player' + (str yoxx)); 				 			namePlayer_w33 = ''; 			namePlayer_w33 = name actualunit_w33; 		 			mark_player_w33 = 'Player' + (str wzo);  			mark_player_w33 = createMarkerLocal [mark_player_w33,getPos actualunit_w33]; 			mark_player_w33 setMarkerTypeLocal 'waypoint'; 			mark_player_w33 setMarkerPosLocal (getPos actualunit_w33); 			mark_player_w33 setMarkerColorLocal 'ColorBlue'; 			mark_player_w33 setMarkerTextLocal format ['%1',namePlayer_w33]; 		}; 	};	 	  	unitlist_vec_w33_RANDSTR = list_vec_w33_RANDSTR; 	totalunits_vec_w33 = count unitlist_vec_w33_RANDSTR; 	ixx = 0; 	yo211 = 0; 	 	for 'ixx' from 0 to totalunits_vec_w33 do 	{ 		actualunit_vec_w33 = unitlist_vec_w33_RANDSTR select ixx; 		 		if (!(actualunit_vec_w33 isKindOf 'man') && !(actualunit_vec_w33 isKindOf 'Survivor2')) then 		{ 						deleteMarkerLocal ('Vehicle' + (str ixx)); 			yo211 = ixx + 1; 			deleteMarkerLocal ('Vehicle' + (str yo211)); 			 			typeVec_w33 = ''; 			typeVec_w33 = typeOf actualunit_vec_w33; 			 			mark_w33 = 'Vehicle' + (str ixx); 			mark_w33 = createMarkerLocal [mark_w33,getPos actualunit_vec_w33]; 			mark_w33 setMarkerTypeLocal 'waypoint'; 			mark_w33 setMarkerPosLocal (getPos actualunit_vec_w33); 			mark_w33 setMarkerColorLocal 'ColorRed'; 			mark_w33 setMarkerTextLocal format ['%1', typeVec_w33]; 		}; 	}; 		 	unitlist_wrecked_w33_RANDSTR= list_wrecked_w33_RANDSTR; 	totalunits_wrecked_w33 = count unitlist_wrecked_w33_RANDSTR; 	pwx = 0; 	yo377 = 0; 	 	for 'pwx' from 0 to totalunits_wrecked_w33 do 	{ 		actualunit_wrecked_w33 = unitlist_wrecked_w33_RANDSTR select pwx;  		 		deleteMarkerLocal ('Wrecked'+ (str pwx)); 		yo377 = pwx + 1; 		deleteMarkerLocal ('Wrecked'+ (str yo377)); 			 		mark_wrecked_w33 = 'Wrecked' + (str pwx);  		mark_wrecked_w33 = createMarkerLocal [mark_wrecked_w33,getPos actualunit_wrecked_w33]; 		mark_wrecked_w33 setMarkerTypeLocal 'waypoint'; 		mark_wrecked_w33 setMarkerPosLocal (getPos actualunit_wrecked_w33); 		mark_wrecked_w33 setMarkerColorLocal 'ColorOrange'; 		mark_wrecked_w33 setMarkerTextLocal 'Crashed-Heli'; 	}; 	 	unitlist_tents_w33_RANDSTR = list_tents_w33_RANDSTR; 	totalunits_tents_w33 = count unitlist_tents_w33_RANDSTR; 	qxa = 0; 	yo411 = 0; 	 	for 'qxa' from 0 to totalunits_tents_w33 do 	{ 				actualunit_tents_w33 = unitlist_tents_w33_RANDSTR select qxa; 			 		deleteMarkerLocal ('Tents'+ (str qxa)); 		yo411 = qxa + 1; 		deleteMarkerLocal ('Tents'+ (str yo411)); 			 		mark_tents_w33 = 'Tents' + (str qxa); 		mark_tents_w33 = createMarkerLocal [mark_tents_w33,getPos actualunit_tents_w33]; 		mark_tents_w33 setMarkerTypeLocal 'waypoint'; 		mark_tents_w33 setMarkerPosLocal (getPos actualunit_tents_w33); 		mark_tents_w33 setMarkerColorLocal 'ColorGreen'; 	}; 		 	sleep 1; };};};
playeresp_RANDSTR ={hint 'ESP enabled (Check your map)';  player addweapon 'ItemMap'; player addweapon 'ItemGPS';     _drawMapEvent = {  _allPlayerUnits = ((position player) nearEntities [['Man'],55000])+playableUnits;  	 {     	 if(!(isnull  _x) && (getPlayerUID _x != '') && (player != _x)) then {			(group _x) addGroupIcon ['x_art']; 	(group _x) setGroupIconParams [[0,1,1,1], format['%1-%2', name _x,round(player distance _x)],0.7,true]; 	setGroupIconsVisible [true,true];	 };	     } forEach _allPlayerUnits;	for [{_i=0}, {_i<200}, {_i=_i+1}] do{auth;  setGroupIconsVisible [true, true]; 	sleep 0.01;};        { clearGroupIcons (group _x); } forEach _allPlayerUnits; };  while{true} do {   call _drawMapEvent; };};
bfc_za_RANDSTR ={if (isnil ("bfc_za_RANDSTRgr")) then {bfc_za_RANDSTRgr = false;};if (!bfc_za_RANDSTRgr) then{Hint "Aggro - Off";player_zombieCheck = {};whiteBait = true;}else{Hint "Aggro - On";player_zombieCheck = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";bfc_za_RANDSTRgr = false;};	};
bfc_spwnb_RANDSTR ={_backpackType = _this select 0;player addBackpack _backpackType;Hint "backpack Added";};
bfc_spwni_RANDSTR ={_item = _this select 0;_config = [_item];_isOK = [player,_config] call BIS_fnc_invAdd;Hint "Item Spawned";	};
bfc_spwnw_RANDSTR ={_item = _this select 0;_config = [_item];_isOK = [player,_config] call BIS_fnc_invAdd;_mags = getarray(configfile >> 'cfgWeapons' >> _item >> 'magazines');_config = _mags select 0;_isOK = [player,_config] call BIS_fnc_invAdd;_isOK = [player,_config] call BIS_fnc_invAdd;_isOK = [player,_config] call BIS_fnc_invAdd;Hint  "Weapon Spawned";player selectWeapon _item;reload player;};
bfc_refil_RANDSTR = {_item = currentweapon player;_mags = getarray(configfile >> 'cfgWeapons' >> _item >> 'magazines');_config = _mags select 0;_isOK = [player,_config] call BIS_fnc_invAdd;_isOK = [player,_config] call BIS_fnc_invAdd;_isOK = [player,_config] call BIS_fnc_invAdd;Hint "Ammo Refilled";	};
bfc_aiai_RANDSTR = {if (isNil "bfc_aiai_RANDSTRai") then{bfc_aiai_RANDSTRai = 0;};if (bfc_aiai_RANDSTRai == 0) then{Hint "Untouchable - On";bfc_aiai_RANDSTRai = 1;fnc_usec_damageHandler = {};fnc_usec_unconscious  = {};}else{Hint "Untouchable - Off";bfc_aiai_RANDSTRai = 0;fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";player allowDamage true;};};
bfc_repair_RANDSTR = {_vehicle = vehicle player;_vehicle setdamage 0;_newFuel = 1;dayzSetFuel = [_vehicle,_newFuel];dayzSefFuel spawn local_setFuel;publicVariable "dayzSetFuel";Hint "Repaired";	};
bfc_heal_RANDSTR = {Hint "Health Restored";disableserialization;r_fracture_legs = false;r_fracture_arms = false;dayz_sourcBleeding = objNull;r_player_blood = r_player_bloodTotal;r_player_inpain = false;r_player_infected = false;r_player_injured = false;dayz_hunger = 0;dayz_thirst = 0;dayz_temperatur = 40;r_fracture_legs = false;r_fracture_arms = false;r_player_dead = false;r_player_unconscious = false;r_player_loaded = false;r_player_cardiac = false;r_player_lowblood = false;r_player_timeout = 0;r_handlercount = 0;_display = uiNamespace getVariable 'DAYZ_GUI_display';_control = _display displayctrl 1203;_control ctrlShow false;r_player_handler = false;disableUserInput false;"dynamicBlur" ppeffectAdjust [0]; "dynamicBlur" ppeffectcommit 5;_unit = player;_selection = "legs";_damage = 0;_unit setHit[_selection,_damage];			};
bfc_this_RANDSTR = {_newUnit = player;_x = "";{_newUnit removeMagazine _x;} forEach  magazines _newUnit;removeAllWeapons _newUnit;};
sScript_RANDSTR = {};
fn_ProcessDiaryLink_RANDSTR = {processDiaryLink createDiaryLink ["Diary", _this, ""];};
telegps_RANDSTR = 
{
	//hint "Tele-GPS Enabled";
	//hint "Alt + Click on map to teleport";
	_config = "itemGPS";_isOK = [player,_config] call BIS_fnc_invAdd;
	//player setVariable ["lastPosition", monky];
	//player setVariable ["lastTimes", monky];
	if !("ItemMap" in items player) then {player addWeapon "ItemMap"};
	(findDisplay 46) displayAddEventHandler ["KeyDown", "altstate = _this select 4"];
	((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonUp", "if (((_this select 1) == 0) && altstate) then
	{
		_bowenpos = (_this select 0) posScreenToWorld [_this select 2, _this select 3];
		[_bowenpos] spawn bowonkytp_RANDSTR;
	};"];
	bowonkytp_RANDSTR =
	{
		_mylastPos = (_this select 0);
		player setPosATL _mylastPos;
	};
};
fn_spectate_RANDSTR =
{
	{
		openmap false;
		if (name _x == (_this select 0)) then
		{	
			mme_RANDSTR = player;
			mcameraview_RANDSTR = cameraview;
			_x switchCamera "EXTERNAL";
			Hint Format ["Spectating %1, Press F3 to return to player",_this select 0];
			speckey = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 0x3D) then {mme_RANDSTR switchCamera mcameraview_RANDSTR;hint ""Returned To Player"";(findDisplay 46) displayRemoveEventHandler [""KeyDown"",speckey]}"];
			
		};
	} forEach playableUnits;
};
fn_control_RANDSTR =
{
	{
		openmap false;
		if (name _x == (_this select 0)) then
		{	
			origionalplayer_RANDSTR = player;
			selectplayer _x;
			Hint Format ["Controlling %1, Press F3 to return to player",_this select 0];
			speckey = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 0x3D) then {selectplayer origionalplayer_RANDSTR;hint ""Returned To Player"";(findDisplay 46) displayRemoveEventHandler [""KeyDown"",speckey]}"];
			
		};
	} forEach playableUnits;
};
fn_Kill_RANDSTR =
{
	{
		if (name _x == (_this select 0)) then
		{
			remExField = [nil, nil, format [";if (getPlayerUID player == '%1') then {r_player_blood = 0;};", getPlayerUID _x]];
			publicVariable "remExField";
			hint format ["Killed %1", name _x];
		};
	} forEach playableUnits;
};

[] spawn
{
   _tempTime = time;
   _tempGV = groupIconsVisible;
   time = "m0nkyaatp_RANDSTR";
   sleep 3;
   [_tempTime] spawn
   {
     _tempTime = (_this select 0) + 3;
     while {true} do
     {
      time = _tempTime;
      _tempTime = _tempTime + 1;
      sleep 1;
   };
  };
};

[] spawn 
{
	groupIconsVisible = "m0nkyaatp_RANDSTR";
	while {true} do 
	{
		sleep 0.1;
		setGroupIconsVisible [true, true];
		if !(player diarySubjectExists "Bowen_RANDSTR") then 
		{	
			player createDiarySubject ["Bowen_RANDSTR",""];
			pList = player createDiaryRecord ["Diary", playerSelection_RANDSTR];
			player createDiaryRecord ["Diary",["  ","  "]];
			player createDiaryRecord ["Diary",[" "," "]];
			player createDiaryRecord ["Diary",bowen13_RANDSTR];
			player createDiaryRecord ["Diary",bowen12_RANDSTR];
			player createDiaryRecord ["Diary",bowen11_RANDSTR];
			player createDiaryRecord ["Diary",bowen10_RANDSTR];
			player createDiaryRecord ["Diary",bowen9_RANDSTR];			
			player createDiaryRecord ["Diary",bowen8_RANDSTR];	
			player createDiaryRecord ["Diary",bowen7_RANDSTR];
			player createDiaryRecord ["Diary",bowen6_RANDSTR];
			player createDiaryRecord ["Diary",bowen5_RANDSTR];
			player createDiaryRecord ["Diary",bowen5x_RANDSTR];
			player createDiaryRecord ["Diary",bowen4_RANDSTR];
			player createDiaryRecord ["Diary",bowen2_RANDSTR];
			player createDiaryRecord ["Diary",bowen1_RANDSTR];
			player createDiaryRecord ["Diary",veh_autoMenu_RANDSTR];
			tMenu = player createDiaryRecord ["Diary", targetMenu_RANDSTR];
			player createDiaryRecord ["Diary",bowen_RANDSTR];
			player createDiaryRecord ["Diary",["",""]];		
			player createDiaryRecord ["Diary",["Diary Menu","<execute expression=''>Credits</execute><br/><execute expression=''></execute><br/><execute expression='Hint ""Legend"";'>SD333221 for Bypass</execute><br/><execute expression='Hint ""Origional Creator"";'>Bowen for Diary Menu + Scripts (Skype bowen2k10)</execute><br/><execute expression='Hint ""Origional Error Fixer"";'>Monky For Scripts + Improving Diary Menu</execute><br/><execute expression=''>sammm - Missing weapons</execute><br/><execute expression=''>Token: _RANDSTR</execute><br/>"]];
			player selectDiarySubject "Diary";
		};
	};
};

