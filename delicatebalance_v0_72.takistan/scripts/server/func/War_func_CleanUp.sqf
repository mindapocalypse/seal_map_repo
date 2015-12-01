private ["_STime"];

_STime = time;
while {true} do {
		if (time - _STime > 1800) then {
			{
				if (([(getPosATL _x), 500] call War_func_NearestPlayers) < 1) then {
						if (_x isKindOf "SoldierWB") then {hideBody _x;deleteVehicle _x;};
				};
				sleep 0.001;
			} forEach allDead;
			{if((count units _x) == 0) then {deleteGroup _x;};sleep 0.001;} forEach allGroups;
			_STime = time;
		};
		sleep 30;
};
