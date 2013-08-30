    /*
    credits to r00tbag since i used his map as a kind of template.
     
    created by infiSTAR aka iniinfi
     
    Shows MedBox0 on MAP and GPS
     
    working on Chernarus and Lingor vilayer server at 17:48 10/10/12 UTC+1, Germany
    */
     
    if !("ItemMap" in items player) then {player addweapon "ItemMap";};
     
    if (isNil "markmboxPos") then {markmboxPos = true;} else {markmboxPos = !markmboxPos};
    hint "MedBox0-map 1";
     
    //----------------------#MedBox0#----------------------------
    AddMedBox0ToMap=true;
    MedBox0MarkerType="vehicle";
    MedBox0MarkerColor="ColorWhite";
    //----------------------#MedBox0#----------------------------
     
     
    /*ON*/
     
    While {markmboxPos} do {
     
    If (AddMedBox0ToMap) then {
     
    _maapside = 15000;
    maaphalf = _maapside/2; maapscanrad = sqrt (2*maaphalf*maaphalf);
    medList = nearestObjects [[maaphalf,maaphalf],["MedBox0"],maapscanrad];
     
    //medList = allmissionobjects "MedBox0";
    j = count medList;
    i = 0;
     
    for "i" from 0 to j do
    {
    med = medList select i;
    _name = "MedBox0";
     
    pos = position med;
    deleteMarkerLocal ("medMarker"+ (str i));
    MarkerMed = "medMarker" + (str i);
    ParamsMed=[MarkerMed,pos];
    MarkerMed = createMarkerLocal ParamsMed;
    MarkerMed setMarkerTypeLocal MedBox0MarkerType;
    MarkerMed setMarkerPosLocal (pos);
    MarkerMed setMarkerColorLocal(MedBox0MarkerColor);
    MarkerMed setMarkerTextLocal format ["%1",_name];
    };
    };
    sleep 4;
     
    //{clearGroupIcons (group _x);} forEach allUnits;
     
    };
     
     
    /*OFF*/
     
    if(!markmboxPos) then {
    If (AddMedBox0ToMap) then {
     for "i" from 0 to j do
     {
     med = medList select i;
     deleteMarkerLocal ("medMarker"+ (str i));
     };
     };
      sleep 0.5;
     };
     
    hint "MedBox0-map 0";
