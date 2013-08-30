if (isnil ("xZombieBait")) then {xZombieBait = false;};
if (!xZombieBait) then
{
	hint "Zombies are now nerf'd";
	player_zombieCheck = {};
	xZombieBait = true;
}
else
{
	hint "Zombies are now Mike Tyson";
	player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
	xZombieBait = false;
};