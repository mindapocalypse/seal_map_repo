//by RIP
private["_startpos","_destination","_grpskill","_typeplane","_radius","_PatrolUnits","_PatrolVeh","_arrayofvehicle","_vehicle","_units","_mode","_formation"];

if(!isServer) exitWith {};

_RIPAVIAPATRLOVEHICLES = ["AH1Z","AH64D","AH6J_EP1","UH1Y","A10_US_EP1","ACE_AH6_GAU19"];

_radius = _this select 0;

_destination = [];
_startpos = [];
waituntil {!isnil "bis_fnc_init"};

while {true} do {

	sleep 300;
	_PatrolUnits = [];
	_PatrolVeh = [];
	_grpskill = RIPAIDEFAULTSKILL + (random 0.2);
	_PatrolGrp = createGroup West;
	_typeplane = _RIPAVIAPATRLOVEHICLES call BIS_fnc_selectRandom;
	_startpos = [RIPCENTERMAP, _radius] call War_GetRandomPointCircleOuter;
	_startpos set [2,200];
	_dir = round(random 360);

	{
		_arrayofvehicle = [_startpos, _dir, _typeplane, _PatrolGrp] call bis_fnc_spawnvehicle;
		_vehicle = _arrayofvehicle select 0;
		_vehicle setDir _dir;
		_PatrolVeh set [count _PatrolVeh, _vehicle];

		_units = _arrayofvehicle select 1;
		_PatrolUnits = _PatrolUnits + _units;

		_startpos = [(_startpos select 0) - 20*sin _dir, (_startpos select 1) - 20*cos _dir, (_startpos select 2)];
	} forEach [0,1];
	(leader _PatrolGrp) setSkill _grpskill;

	_destination = [RIPCENTERMAP, _radius] call War_GetRandomPointCircleOuter;
	_wp = _PatrolGrp addWayPoint [_destination, 0];
	_wp setWaypointType "SAD";

	while {canMove (_PatrolVeh select 0) || canMove (_PatrolVeh select 1)} do {

		_destination = [RIPCENTERMAP, _radius] call War_GetRandomPointCircleOuter;
		while {_startpos distance _destination < 3500} do {
			_destination = [RIPCENTERMAP, _radius] call War_GetRandomPointCircleOuter;
			sleep 0.01;
		};

		_startpos = _destination;

		_mode = ["YELLOW", "RED"] call BIS_fnc_selectRandom;
		_formation = ["WEDGE", "VEE","DIAMOND"] call BIS_fnc_selectRandom;
		_PatrolGrp setCombatMode _mode;
		_PatrolGrp setFormation _formation;
		_PatrolGrp setBehaviour "AWARE";
		_PatrolGrp setSpeedMode "NORMAL";

		[_PatrolGrp, 1] setWaypointPosition [_destination, 0];


		while {((leader _PatrolGrp) distance _destination > 1800) && (canMove (_PatrolVeh select 0) || canMove (_PatrolVeh select 1)) || ((leader _PatrolGrp) distance Flag_Base_RU < 2000)} do
		{
			sleep 5;
		};

	};

	sleep 300;
	{hideBody _x; deleteVehicle _x;} forEach _PatrolUnits;
	switch (RIPVEHICLECAPTURE) do 
	{ 
		  case 0: {{deleteVehicle _x;} forEach _PatrolVeh;}; 
		  case 1: {{if !(isPlayer (driver _x)) then {deleteVehicle _x;}} forEach _PatrolVeh;}; 
	};
	deleteGroup _PatrolGrp; 	
};
