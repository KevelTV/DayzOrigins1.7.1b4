sleep 10;
{
If (typeOf _x in ["CH_47F_EP1_DZ","Mi17_DZ","UH60M_EP1_DZ","UH60M_EP1","MH60S","UH1H_DZ","UH1Y_DZ"]) then //Helis with 10+ seats armed
{
nul = _x addAction ["To Pilot's Seat","Scripts\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
nul = _x addAction ["To Gunner's Seat","Scripts\switchseat.sqf",["gunner"],5,false,true,"","driver _target == player"];
nul = _x addAction ["To Backseat","Scripts\switchseat.sqf",["back"],5,false,true,"","driver _target == player"];
};
 
If (typeOf _x in ["Ka60_PMC","Mi17_Civilian_DZ","UH60M_MEV_EP1"]) then //Helis with 10+ seats unarmed
{
nul = _x addAction ["To Pilot's Seat","Scripts\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
nul = _x addAction ["To Backseat","Scripts\switchseat.sqf",["back"],5,false,true,"","driver _target == player"];
};
 
If (typeOf _x in ["AH6X_DZ","AH6X_EP1","AH6J_EP1","AH6J","GNT_C185","GNT_C185C","GNT_C185F","GNT_C185R","GNT_C185U"]) then //Helis with 2 seats unarmed
{
nul = _x addAction ["To Pilot's Seat","Scripts\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
nul = _x addAction ["To Backseat","Scripts\switchseat.sqf",["backlittle"],5,false,true,"","driver _target == player"];
};
 
If (typeOf _x in ["Ka137_MG_PMC"]) then //Helis with 2 seats armed
{
nul = _x addAction ["To Pilot's Seat","Scripts\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
nul = _x addAction ["To Gunner's Seat","Scripts\switchseat.sqf",["gunner"],5,false,true,"","driver _target == player"];
};
 
If (typeOf _x in ["MH6J_DZ","MH6J_EP1","MH6J"]) then //Helis with <7 seats
{
nul = _x addAction ["To Pilot's Seat","Scripts\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
nul = _x addAction ["To Backseat","Scripts\switchseat.sqf",["backmedium"],5,false,true,"","driver _target == player"];
};
} forEach (vehicles);