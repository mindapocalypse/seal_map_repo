//by RIP
private ["_grpskill","_PatrolGrp","_pos","_dir","_PatrolUnits","_PatrolVeh","_arrayofvehicle","_vehicle","_units","_upshandle","_list"];

if(!isServer) exitWith{};

waituntil {!isnil "bis_fnc_init"};

_pos = getMarkerPos (_this select 0);
_dir = markerDir (_this select 0);
_area = (_this select 1);

while {true} do {
	_PatrolUnits = [];
	_PatrolVeh = [];
	_grpskill = RIPAIDEFAULTSKILL + (random 0.2);

	_list = _pos nearEntities [["Man","Car","Tank"],500];
	while {(east countSide _list)>0} do {
		sleep 5;
		_list = _pos nearEntities [["Man","Car","Tank"],500];
	};

	_PatrolGrp = createGroup West;
	{
			_arrayofvehicle = [_pos, _dir, (RIPPATROLGROUNDVEHICLES select floor(random count RIPPATROLGROUNDVEHICLES)), _PatrolGrp] call bis_fnc_spawnvehicle;
			_vehicle = _arrayofvehicle select 0;
			_vehicle setDir _dir;
			_PatrolVeh set [count _PatrolVeh, _vehicle];

			_units = _arrayofvehicle select 1;
			_PatrolUnits = _PatrolUnits + _units;

			_pos = [(_pos select 0) - 10*sin _dir, (_pos select 1) - 10*cos _dir];
	} forEach [0,1];
	(leader _PatrolGrp) setSkill _grpskill;

	_upshandle = [(leader _PatrolGrp),_area,"onroad","nosmoke","nowait","spawned"] execVM "scripts\server\upsmon.sqf";

	while {canMove (_PatrolVeh select 0) || canMove (_PatrolVeh select 1)} do {sleep 10;};

	sleep 600;
	terminate _upshandle;
	{hideBody _x; deleteVehicle _x;} forEach _PatrolUnits;
	switch (RIPVEHICLECAPTURE) do 
	{ 
		  case 0: {{deleteVehicle _x;} forEach _PatrolVeh;}; 
		  case 1: {{if !(isPlayer (driver _x)) then {deleteVehicle _x;}} forEach _PatrolVeh;}; 
	};
	deleteGroup _PatrolGrp; 	
};