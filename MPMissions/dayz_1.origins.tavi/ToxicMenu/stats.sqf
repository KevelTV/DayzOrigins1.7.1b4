Stats = "";

changestats = 
[
	["",true],
	["Add Zombie Kills", [2], "#USER:addzombiekillsmenu", -5, [["expression", ""]], "1", "1"],
	["Add Zombie Headshots", [3], "#USER:addzombieheadshotsmenu", -5, [["expression", ""]], "1", "1"],
	["Add Murders", [4], "#USER:addhumankillsmenu", -5, [["expression", ""]], "1", "1"],
	["Add Bandit Kills", [5], "#USER:addbanditkillsmenu", -5, [["expression", ""]], "1", "1"],
	["Add Humanity", [6], "#USER:addhumanitymenu", -5, [["expression", ""]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

addzombiekillsmenu = 
[
	["",true],
	["1", [2], "", -5, [["expression", "ZombieKillsAmount=1;Stats='AddZombieKills';"]], "1", "1"],
	["5", [3], "", -5, [["expression", "ZombieKillsAmount=5;Stats='AddZombieKills';"]], "1", "1"],
	["10", [4], "", -5, [["expression", "ZombieKillsAmount=10;Stats='AddZombieKills';"]], "1", "1"],
	["25", [5], "", -5, [["expression", "ZombieKillsAmount=25;Stats='AddZombieKills';"]], "1", "1"],
	["50", [6], "", -5, [["expression", "ZombieKillsAmount=50;Stats='AddZombieKills';"]], "1", "1"],
	["100", [7], "", -5, [["expression", "ZombieKillsAmount=100;Stats='AddZombieKills';"]], "1", "1"],
	["250", [8], "", -5, [["expression", "ZombieKillsAmount=250;Stats='AddZombieKills';"]], "1", "1"],
	["500", [9], "", -5, [["expression", "ZombieKillsAmount=500;Stats='AddZombieKills';"]], "1", "1"],
	["1000", [10], "", -5, [["expression", "ZombieKillsAmount=1000;Stats='AddZombieKills';"]], "1", "1"],
	["5000", [11], "", -5, [["expression", "ZombieKillsAmount=5000;Stats='AddZombieKills';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

addzombieheadshotsmenu = 
[
	["",true],
	["1", [2], "", -5, [["expression", "ZombieHeadshotsAmount=1;Stats='AddZombieHeadshots';"]], "1", "1"],
	["5", [3], "", -5, [["expression", "ZombieHeadshotsAmount=5;Stats='AddZombieHeadshots';"]], "1", "1"],
	["10", [4], "", -5, [["expression", "ZombieHeadshotsAmount=10;Stats='AddZombieHeadshots';"]], "1", "1"],
	["25", [5], "", -5, [["expression", "ZombieHeadshotsAmount=25;Stats='AddZombieHeadshots';"]], "1", "1"],
	["50", [6], "", -5, [["expression", "ZombieHeadshotsAmount=50;Stats='AddZombieHeadshots';"]], "1", "1"],
	["100", [7], "", -5, [["expression", "ZombieHeadshotsAmount=100;Stats='AddZombieHeadshots';"]], "1", "1"],
	["250", [8], "", -5, [["expression", "ZombieHeadshotsAmount=250;Stats='AddZombieHeadshots';"]], "1", "1"],
	["500", [9], "", -5, [["expression", "ZombieHeadshotsAmount=500;Stats='AddZombieHeadshots';"]], "1", "1"],
	["1000", [10], "", -5, [["expression", "ZombieHeadshotsAmount=1000;Stats='AddZombieHeadshots';"]], "1", "1"],
	["5000", [11], "", -5, [["expression", "ZombieHeadshotsAmount=5000;Stats='AddZombieHeadshots';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

addhumankillsmenu = 
[
	["",true],
	["1", [2], "", -5, [["expression", "HumanKillsAmount=1;Stats='AddHumanKills';"]], "1", "1"],
	["5", [3], "", -5, [["expression", "HumanKillsAmount=5;Stats='AddHumanKills';"]], "1", "1"],
	["10", [4], "", -5, [["expression", "HumanKillsAmount=10;Stats='AddHumanKills';"]], "1", "1"],
	["25", [5], "", -5, [["expression", "HumanKillsAmount=25;Stats='AddHumanKills';"]], "1", "1"],
	["50", [6], "", -5, [["expression", "HumanKillsAmount=50;Stats='AddHumanKills';"]], "1", "1"],
	["100", [7], "", -5, [["expression", "HumanKillsAmount=100;Stats='AddHumanKills';"]], "1", "1"],
	["250", [8], "", -5, [["expression", "HumanKillsAmount=250;Stats='AddHumanKills';"]], "1", "1"],
	["500", [9], "", -5, [["expression", "HumanKillsAmount=500;Stats='AddHumanKills';"]], "1", "1"],
	["1000", [10], "", -5, [["expression", "HumanKillsAmount=1000;Stats='AddHumanKills';"]], "1", "1"],
	["5000", [11], "", -5, [["expression", "HumanKillsAmount=5000;Stats='AddHumanKills';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

addbanditkillsmenu = 
[
	["",true],
	["1", [2], "", -5, [["expression", "BanditKillsAmount=1;Stats='AddBanditKills';"]], "1", "1"],
	["5", [3], "", -5, [["expression", "BanditKillsAmount=5;Stats='AddBanditKills';"]], "1", "1"],
	["10", [4], "", -5, [["expression", "BanditKillsAmount=10;Stats='AddBanditKills';"]], "1", "1"],
	["25", [5], "", -5, [["expression", "BanditKillsAmount=25;Stats='AddBanditKills';"]], "1", "1"],
	["50", [6], "", -5, [["expression", "BanditKillsAmount=50;Stats='AddBanditKills';"]], "1", "1"],
	["100", [7], "", -5, [["expression", "BanditKillsAmount=100;Stats='AddBanditKills';"]], "1", "1"],
	["250", [8], "", -5, [["expression", "BanditKillsAmount=250;Stats='AddBanditKills';"]], "1", "1"],
	["500", [9], "", -5, [["expression", "BanditKillsAmount=500;Stats='AddBanditKills';"]], "1", "1"],
	["1000", [10], "", -5, [["expression", "BanditKillsAmount=1000;Stats='AddBanditKills';"]], "1", "1"],
	["5000", [11], "", -5, [["expression", "BanditKillsAmount=5000;Stats='AddBanditKills';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

addhumanitymenu = 
[
	["",true],
	["10", [2], "", -5, [["expression", "HumanityAmount=10;Stats='AddHumanity';"]], "1", "1"],
	["20", [3], "", -5, [["expression", "HumanityAmount=20;Stats='AddHumanity';"]], "1", "1"],
	["50", [4], "", -5, [["expression", "HumanityAmount=50;Stats='AddHumanity';"]], "1", "1"],
	["250", [5], "", -5, [["expression", "HumanityAmount=250;Stats='AddHumanity';"]], "1", "1"],
	["500", [6], "", -5, [["expression", "HumanityAmount=500;Stats='AddHumanity';"]], "1", "1"],
	["1000", [7], "", -5, [["expression", "HumanityAmount=1000;Stats='AddHumanity';"]], "1", "1"],
	["2500", [8], "", -5, [["expression", "HumanityAmount=2500;Stats='AddHumanity';"]], "1", "1"],
	["5000", [9], "", -5, [["expression", "HumanityAmount=5000;Stats='AddHumanity';"]], "1", "1"],
	["10000", [10], "", -5, [["expression", "HumanityAmount=10000;Stats='AddHumanity';"]], "1", "1"],
	["50000", [11], "", -5, [["expression", "HumanityAmount=50000;Stats='AddHumanity';"]], "1", "1"],
	["-500000", [12], "", -5, [["expression", "HumanityAmount=-500000;Stats='AddHumanity';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:changestats";

WaitUntil{Stats != ""};

switch (Stats) do
{
	case "AddZombieKills":
	{
		titleText [format["%1 Zombie Kills added to your stats.",ZombieKillsAmount],"PLAIN DOWN"]; titleFadeOut 4;
		_zombiekills = player getVariable["zombiekills",0];
		player setVariable["zombiekills",_zombiekills+ZombieKillsAmount,true];
	};
	case "AddZombieHeadshots":
	{
		titleText [format["%1 Zombie Headshots added to your stats.",ZombieHeadshotsAmount],"PLAIN DOWN"]; titleFadeOut 4;
		_zombieheadshots = player getVariable["headShots",0];
		player setVariable["headShots",_zombieheadshots+ZombieHeadshotsAmount,true]
	};
	case "AddHumanKills":
	{
		titleText [format["%1 Murders added to your stats.",HumanKillsAmount],"PLAIN DOWN"]; titleFadeOut 4;
		_humankills = player getVariable["humanKills",0];
		player setVariable["humanKills",_humankills+HumanKillsAmount,true];
	};
	case "AddBanditKills":
	{
		titleText [format["%1 Bandit Kills added to your stats.",BanditKillsAmount],"PLAIN DOWN"]; titleFadeOut 4;
		_banditkills = player getVariable["banditKills",0];
		player setvariable["banditKills",_banditkills+BanditKillsAmount,true];
	};
	case "AddHumanity":
	{
		titleText [format["%1 Humanity added to your stats.",HumanityAmount],"PLAIN DOWN"]; titleFadeOut 4;
		_humanity = player getVariable["humanity",0];
		player setVariable["humanity",_humanity+HumanityAmount,true]
	};
};