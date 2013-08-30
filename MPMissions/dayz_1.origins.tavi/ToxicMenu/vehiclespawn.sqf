spawnvehicles1 = [];

spawnvehicles2 = [];
spawnvehicles3 = [];
spawnvehicles4 = [];
spawnvehicles5 = [];
spawnvehicles6 = [];
spawnvehicles7 = [];
spawnvehicles8 = [];
spawnvehicles9 = [];


_dir = getdir vehicle player;

_pos = getPos vehicle player;

_pos = [(_pos select 0)+10*sin(_dir),(_pos select 1)+10*cos(_dir),0]; // 50 meters behind

_xos = _pos select 0;

_yos = _pos select 1;

_zos = _pos select 2;

_rid = 999+random(9999);



_svr = format["

if (isServer) then {

_object = createVehicle ['%1', [%2, %3, %4], [], 0, 'CAN_COLLIDE'];

_object setVariable ['ObjectID', %5, true];

dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];

_uid = _object call dayz_objectUID;

_object setVariable ['ObjectUID', _uid, true];

_object setVariable ['OwnerID', 0, true];

}", "%1", _xos, _yos, _zos, _rid];



spawnvehicles1 = 

[

["",true],

["Popular", [2], "#USER:spawnvehicles2", -5, [["expression", ""]], "1", "1"],

["Bikes", [3], "#USER:spawnvehicles3", -5, [["expression", ""]], "1", "1"],

["Boats", [4], "#USER:spawnvehicles4", -5, [["expression", ""]], "1", "1"],

["Civil Cars", [5], "#USER:spawnvehicles5", -5, [["expression", ""]], "1", "1"],

["Offroads", [6], "#USER:spawnvehicles7", -5, [["expression", ""]], "1", "1"],

["Trucks", [7], "#USER:spawnvehicles9", -5, [["expression", ""]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Read before spawn...", [-1], "", -5, [["expression", "titleText ['Vehicles with asterisk (*) are not in DayZ mod anymore (or never was). It means that server admins can detect it the logs and you can get local ban on this server.','PLAIN DOWN']; titleFadeOut 20;
"]], "1", "1"],

["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];



spawnvehicles2 = 

[

["",true],

["UH1H Heli", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UH1H_DZ"]]]]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Old Bike (Green)", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Old_bike_TK_INS_EP1"]]]]], "1", "1"],
["Motorcycle (Red)", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "TT650_INS"]]]]], "1", "1"],
["ATV", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "ATV_US_EP1"]]]]], "1", "1"],
["VAZ (Militia) *", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "LadaLM"]]]]], "1", "1"],
["Police Car *", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "policecar"]]]]], "1", "1"],
["SUV (Black) *", [8], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "SUV_TK_EP1"]]]]], "1", "1"],
["UAZ (Camo)", [9], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UAZ_CDF"]]]]], "1", "1"],
["Praha V3S (Green)", [10], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "V3S_Civ"]]]]], "1", "1"],
["UH-1Y", [11], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UH1y"]]]]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];

spawnvehicles3 = 

[

["",true],

["Old Bike (Green)", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Old_bike_TK_CIV_EP1"]]]]], "1", "1"],
["Old Motorcycle (Gray)", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Old_moto_TK_Civ_EP1"]]]]], "1", "1"],

//	["Motorcycle (Green)", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "M1030"]]]]], "1", "1"],

["Motorcycle (Green)", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "M1030_US_DES_EP1"]]]]], "1", "1"],

["Motorcycle (Red)", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "TT650_Gue"]]]]], "1", "1"],

["Motorcycle (Red&White)", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "TT650_Civ"]]]]], "1", "1"],

//	["Motorcycle (Rusty)", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "TT650_TK_EP1"]]]]], "1", "1"],

["Motorcycle (Rusty)", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "TT650_TK_CIV_EP1"]]]]], "1", "1"],

["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];


spawnvehicles4 = 

[

["",true],

["PBX", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "PBX"]]]]], "1", "1"],

["Fishing Boat", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Fishing_Boat"]]]]], "1", "1"],

["Small Boat", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Smallboat_1"]]]]], "1", "1"],

["Small Boat II", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Smallboat_2"]]]]], "1", "1"],

["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];


spawnvehicles5 = 

[

["",true],

[">>> Next >>>", [13], "#USER:spawnvehicles6", -5, [["expression", ""]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Car (Blue Rusty)", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "SkodaBlue"]]]]], "1", "1"],

["Car (Green) *", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "SkodaGreen"]]]]], "1", "1"],

["Car (Red)", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "SkodaRed"]]]]], "1", "1"],

["Car (White) *", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Skoda"]]]]], "1", "1"],

["Hatchback (Red) *", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "VWGolf"]]]]], "1", "1"],

["Old Hatchback (Yellow)", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "car_hatchback"]]]]], "1", "1"],

["Sedan (White)", [8], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "car_sedan"]]]]], "1", "1"],

["S1203 (Blue)", [9], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "S1203_TK_CIV_EP1"]]]]], "1", "1"],

["Tractor", [10], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Tractor"]]]]], "1", "1"],

["A10", [11], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "A10"]]]]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];


spawnvehicles6 = 

[

["",true],
["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],

["Bus (White)", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Ikarus"]]]]], "1", "1"],

["Bus (Grey) *", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Ikarus_TK_CIV_EP1"]]]]], "1", "1"],

//	["VAZ", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Lada_base"]]]]], "1", "1"],

["VAZ (Red)", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Lada2"]]]]], "1", "1"],

["VAZ (White) *", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Lada1"]]]]], "1", "1"],

["Lada TK (Green Rusty)", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Lada1_TK_CIV_EP1"]]]]], "1", "1"],

["Lada TK2 (Green Rusty) *", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Lada2_TK_CIV_EP1"]]]]], "1", "1"],

["Vloha (Blue Rusty) *", [8], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Volha_1_TK_CIV_EP1"]]]]], "1", "1"],

["Vloha (Grey Rusty)", [9], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Volha_2_TK_CIV_EP1"]]]]], "1", "1"],
["Vloha Limo (Black) *", [10], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "VolhaLimo_TK_CIV_EP1"]]]]], "1", "1"],

["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];


spawnvehicles7 = 

[

["",true],
[">>> Next >>>", [13], "#USER:spawnvehicles8", -5, [["expression", ""]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],

["ATV", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "ATV_CZ_EP1"]]]]], "1", "1"],

//	["Land Rover (Camo)", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "BAF_Offroad_W"]]]]], "1", "1"],
["Land Rover (Sand)", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "LandRover_CZ_EP1"]]]]], "1", "1"],

["Land Rover (Red) *", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "LandRover_TK_CIV_EP1"]]]]], "1", "1"],
["Offroad (Red Covered) *", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "hilux1_civil_2_covered"]]]]], "1", "1"],

["Offroad (Tan) *", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "hilux1_civil_1_open"]]]]], "1", "1"],

["Offroad (White)", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "hilux1_civil_3_open"]]]]], "1", "1"],

["Pick-Up (Blue)", [8], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "datsun1_civil_1_open"]]]]], "1", "1"],

["Pick-Up (Sand Covered) *", [9], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "datsun1_civil_2_covered"]]]]], "1", "1"],

["Pick-Up (Tube Frame) *", [10], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "datsun1_civil_3_open"]]]]], "1", "1"],

["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];

spawnvehicles8 = 

[

["",true],
["<<< Back <<<", [12], "", -4, [["expression", ""]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["SUV (Black) *", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "SUV_TK_CIV_EP1"]]]]], "1", "1"],
["UAZ (Camo)", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UAZ_CDF"]]]]], "1", "1"],

["UAZ (Camo) *", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UAZ_RU"]]]]], "1", "1"],

["UAZ (Sand Camo)", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UAZ_Unarmed_TK_EP1"]]]]], "1", "1"],

["UAZ (White) *", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UAZ_Unarmed_UN_EP1"]]]]], "1", "1"],

["UAZ (Sand)", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UAZ_Unarmed_TK_CIV_EP1"]]]]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];

spawnvehicles9 = 

[

["",true],

["Praha V3S (Green)", [2], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "V3S_Civ"]]]]], "1", "1"],

["Ural (Blue Covered)", [3], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Ural_TK_CIV_EP1"]]]]], "1", "1"],
["Ural (Blue Open) *", [4], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UralCivil2"]]]]], "1", "1"],
["Ural (Camo Covered) *", [5], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Ural_CDF"]]]]], "1", "1"],
["Ural (Camo Open) *", [6], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UralOpen_INS"]]]]], "1", "1"],
["Ural (Junge Camo Covered) *", [7], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "Ural_INS"]]]]], "1", "1"],
["Ural (Orange Covered) *", [8], "", -5, [["expression", format["sleep 0.1; player %1; sleep 0.1; processInitCommands; sleep 0.1; clearVehicleInit player;", format['setVehicleInit "%1"', format[_svr, "UralCivil"]]]]], "1", "1"],
["", [-1], "", -5, [["expression", ""]], "1", "1"],
["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]

];

showCommandingMenu "#USER:spawnvehicles1"