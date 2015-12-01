RIPCITYNAMES = nearestLocations [RIPCENTERMAP, ["NameCityCapital","NameCity", "NameVillage"],8000];
_NearBaseCity = nearestLocations [(getMarkerPos "RU_Base"), ["NameCityCapital","NameCity", "NameVillage"],1500];
RIPCITYNAMES = RIPCITYNAMES - _NearBaseCity;

RIPAISPAWNED = false;

SpawnAI = {
	private ["_townGroup","_town","_man","_i","_townUnits","_grpskill"];
	
	_town = _this select 0;
	RIPAISPAWNED = true;
	_townUnits = [];
	_grpskill = RIPAIDEFAULTSKILL + (random 0.2);
	_townGroup = CreateGroup West;
	_pos = [(position _town), 100] call War_GetRandomPoint;
	for [{_i=0},{_i<2},{_i=_i+1}] do {
	_man = objNull;
	_man = _townGroup createUnit [RIPPATROLMENS select floor(random count RIPPATROLMENS), _pos, [], 10, "NONE"];
	[_man] JoinSilent _townGroup;
	_townUnits set [count _townUnits, _man];
	_man setDir (random 360);
	};
	(leader _townGroup) setSkill _grpskill;
	_townGroup setCombatMode "RED";
	_townGroup setBehaviour "COMBAT";

	waituntil {!isnil "bis_fnc_init"};
	[_townGroup, (getPos player)] call BIS_fnc_taskAttack;
	while {RIPAISPAWNED} do {
		if ((_town distance (getPosATL player)) > 800) then {
			if (([(position _town), 400] call War_func_NearestPlayers) < 1) then {RIPAISPAWNED = false};
		};
		sleep 1;
	};

	{hideBody _x; deleteVehicle _x;} forEach _townUnits;
	deleteGroup _townGroup;
};

while {true} do {
	if !(RIPAISPAWNED) then {
		{	
			if (((getPosATL player) select 2) < 10) then {
				if ((_x distance (getPosATL player)) < 800) then {
					if (([_x, 400] call War_func_NearestPlayers) < 1) then {[_x] spawn SpawnAI};
				};
			};
		} forEach RIPCITYNAMES;
	};
	sleep 1;
};