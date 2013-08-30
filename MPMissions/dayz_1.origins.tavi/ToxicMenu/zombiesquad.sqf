_unitTypes = ["zZombie_Base", "z_hunter", "z_teacher", "z_suit1", "z_suit2", "z_worker1", "z_worker2", "z_worker3", "z_villager1", "z_villager2", "z_villager3","z_soldier_pilot", "z_soldier", "z_soldier_heavy", "z_policeman", "z_priest"];

_originalPos =  getPosATL player;

_i = 1;

 for "_i" from 1 to 30 do
 {
  _type = _unitTypes call BIS_fnc_selectRandom;
  _agent = createAgent [_type, _originalPos, [], 40, "NONE"];

  _position = getPosATL _agent;

  [_position,_agent] execFSM "\z\AddOns\dayz_code\system\zombie_agent.fsm";
 };
 
hint "done";