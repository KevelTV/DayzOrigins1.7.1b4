hint "Open the Map and Select Map Position";
onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";

//<-----------------MAP ESP----------------->
player addweapon "ItemGPS";

//<-----GLOBAL-VARIABLE----->
marker_mapesp = true;
//Alle Vehicle
list_vec = (allMissionObjects "Plane")+(allMissionObjects "LandVehicle")+(allMissionObjects "Helicopter")+(allMissionObjects "Ship");
list_wrecked = allMissionObjects "UH1Wreck_DZ";
list_tents = allMissionObjects "TentStorage";
//<-----GLOBAL-VARIABLE----->

//hint "Adding Markers on the map";

while {marker_mapesp} do
{	
	//<-----PLAYER-MARKER----->
	//<----------------------->
	//<-----PLAYER-MARKER----->
	unitList_player = allUnits; //getting all units
	totalunits = count unitList_player;
	//hint format["%1", totalunits];
	
	o = 0;
	yo = 0;

	for "o" from 0 to totalunits do
	{
		actualunit = unitList_player select o; //Player1
		//hint format["%1", actualunit];
		
		if ( isplayer actualunit && alive actualunit ) then 
		{
			deleteMarkerLocal ("Player" + (str o));
			yo = o + 1;
			deleteMarkerLocal ("Player" + (str yo));
				
			namePlayer = "";
			namePlayer = name actualunit;
		
			mark_player = "Player" + (str o); //Player0, Player1, Player2
			mark_player = createMarkerLocal [mark_player,getPos actualunit];
			mark_player setMarkerTypeLocal "waypoint";
			mark_player setMarkerPosLocal (getPos actualunit);
			mark_player setMarkerColorLocal "ColorBlue";
			mark_player setMarkerTextLocal format ["%1",namePlayer];
		};
	};	
	

	//<-----VEHICLE-MARKER----->
	//<------------------------>
	//<-----VEHICLE-MARKER----->
	unitList_vec = list_vec;
	totalunits_vec = count unitList_vec;
	i = 0;
	yo2 = 0;
	
	for "i" from 0 to totalunits_vec do
	{
		actualunit_vec = unitList_vec select i; //Car, Helicopter, Boat
		//hint format["%1", actualunit_vec];
		
		if (!(actualunit_vec isKindOf "man") && !(actualunit_vec isKindOf "Survivor2")) then
		{
			deleteMarkerLocal ("Vehicle" + (str i));
			yo2 = i + 1;
			deleteMarkerLocal ("Vehicle" + (str yo2));
			
			typeVec = "";
			typeVec = typeOf actualunit_vec;
			//hint format ["%1", typeVec];
			
			mark = "Vehicle" + (str i);
			mark = createMarkerLocal [mark,getPos actualunit_vec];
			mark setMarkerTypeLocal "waypoint";
			mark setMarkerPosLocal (getPos actualunit_vec);
			mark setMarkerColorLocal "ColorRed";
			mark setMarkerTextLocal format ["%1", typeVec];
		};
	};
		
	//<-----WRECKED_HELI-MARKER----->
	//<----------------------------->
	//<-----WRECKED_HELI-MARKER----->
	unitList_wrecked = list_wrecked;
	totalunits_wrecked = count unitList_wrecked;
	//hint format["%1", totalunits_wrecked];
	p = 0;
	yo3 = 0;
	
	for "p" from 0 to totalunits_wrecked do
	{
		actualunit_wrecked = unitList_wrecked select p; //Car, Helicopter, Boat
			
		deleteMarkerLocal ("Wrecked"+ (str p));
		yo3 = p + 1;
		deleteMarkerLocal ("Wrecked"+ (str yo3));
			
		mark_wrecked = "Wrecked" + (str p); //Car, Boat, Helicopter
		mark_wrecked = createMarkerLocal [mark_wrecked,getPos actualunit_wrecked];
		mark_wrecked setMarkerTypeLocal "waypoint";
		mark_wrecked setMarkerPosLocal (getPos actualunit_wrecked);
		mark_wrecked setMarkerColorLocal "ColorOrange";
		mark_wrecked setMarkerTextLocal "Crashed-Heli";
	};
	
	//<-----TENT-MARKER----->
	//<----------------------------->
	//<-----TENT-MARKER----->
	unitList_tents = list_tents;
	totalunits_tents = count unitList_tents;
	//hint format["%1", totalunits_tents];
	q = 0;
	yo4 = 0;
	
	for "q" from 0 to totalunits_tents do
	{
		actualunit_tents = unitList_tents select q; //Car, Helicopter, Boat
			
		deleteMarkerLocal ("Tents"+ (str q));
		yo4 = q + 1;
		deleteMarkerLocal ("Tents"+ (str yo4));
			
		mark_tents = "Tents" + (str q); //Car, Boat, Helicopter
		mark_tents = createMarkerLocal [mark_tents,getPos actualunit_tents];
		mark_tents setMarkerTypeLocal "waypoint";
		mark_tents setMarkerPosLocal (getPos actualunit_tents);
		mark_tents setMarkerColorLocal "ColorGreen";
		//mark_tentssetMarkerTextLocal "Tent";
	};
		
	//bit of sleep
	sleep 2;
};

k = 0;
for "k" from 0 to 2000 do
{
	deleteMarkerLocal ("Player"+ (str k));
	deleteMarkerLocal ("Vehicle"+ (str k));
	deleteMarkerLocal ("Wrecked"+ (str k));
	deleteMarkerLocal ("Tents"+ (str k));
};

