

removeAllWeapons player;
removeAllItems player;
removebackpack player;



player_zombieCheck = {};

morphtoanimals = 
[
	["",true],
	["Animals:", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Chicken", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Hen'] spawn player_humanityMorph;"]], "1", "1"],
	["Cow (Black & White)", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow04'] spawn player_humanityMorph;"]], "1", "1"],
	["Cow (Black)", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow03'] spawn player_humanityMorph;"]], "1", "1"],
	["Cow (Brown & White)", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow01'] spawn player_humanityMorph;"]], "1", "1"],
	["Cow (Brown)", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Cow02'] spawn player_humanityMorph;"]], "1", "1"],
	["Goat", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Goat'] spawn player_humanityMorph;"]], "1", "1"],
	["Rabbit", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Rabbit'] spawn player_humanityMorph;"]], "1", "1"],
	["Sheep", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Sheep'] spawn player_humanityMorph;"]], "1", "1"],
	["Wild Boar", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'WildBoar'] spawn player_humanityMorph;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Next", [11], "#USER:morphtoplayers", -5, [["expression", ""]], "1", "1"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtoplayers = 
[
	["",true],
	["Player Skins:", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Survivor Skin", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor2_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Survivor Girl Skin", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'SurvivorW2_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Hero Skin", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Survivor3_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Camo Skin", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Camo1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Ghillie Skin", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Sniper1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["Soldier Skin *", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'Soldier1_DZ'] spawn player_humanityMorph;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Next", [11], "#USER:morphtozombies", -5, [["expression", ""]], "1", "1"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],	
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

morphtozombies = 
[
	["",true],
	["Zombies:", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Doctor", [2], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_doctor'] spawn player_humanityMorph;"]], "1", "1"],
	["Hunter", [3], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_hunter'] spawn player_humanityMorph;"]], "1", "1"],
	["Policeman", [4], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_policeman'] spawn player_humanityMorph;"]], "1", "1"],
	["Priest", [5], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_priest'] spawn player_humanityMorph;"]], "1", "1"],
	["Soldier", [6], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_soldier'] spawn player_humanityMorph;"]], "1", "1"],
	["Soldier Heavy", [7], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_soldier_heavy'] spawn player_humanityMorph;"]], "1", "1"],
	["Soldier Pilot", [8], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_soldier_pilot'] spawn player_humanityMorph;"]], "1", "1"],
//	["Suit", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_suit1'] spawn player_humanityMorph;"]], "1", "1"],
//	["Suit", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_suit2'] spawn player_humanityMorph;"]], "1", "1"],
	["Teacher", [9], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_teacher'] spawn player_humanityMorph;"]], "1", "1"],
	["Villager (Blue check)", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_villager1'] spawn player_humanityMorph;"]], "1", "1"],
//	["Villager (Green check)", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_villager2'] spawn player_humanityMorph;"]], "1", "1"],
//	["Villager (Green)", [10], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_villager3'] spawn player_humanityMorph;"]], "1", "1"],
	["Worker (Blue)", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_worker3'] spawn player_humanityMorph;"]], "1", "1"],
//	["Worker (Gray)", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_worker1'] spawn player_humanityMorph;"]], "1", "1"],
//	["Worker (Green)", [11], "", -5, [["expression", "[dayz_playerUID,dayz_characterID,'z_worker2'] spawn player_humanityMorph;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Read before Zombie morph!", [-1], "", -5, [["expression", "titleText ['Make sure Zombie Shield is disabled! Being near other players will cause you to attack them!','PLAIN DOWN']; titleFadeOut 20;
"]], "1", "1"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],	
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:morphtoanimals";