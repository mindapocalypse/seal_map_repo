// Created by SMC v2.1.3 (for Arma 2)
// Sun Nov  8 22:46:11 2015

// --Units--
_group0 = createGroup east;
	_unit0 = _group0 createUnit ["ACE_KamazRepair",[5627.1455,11357.273,0],[],0,"FORM"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["ACE_KamazRepair",[5627.1455,11357.273,0],[],0,"FORM"];
 			[_unit0,_group0] call BIS_fnc_spawnCrew;
		};
		(group _unit0) selectLeader _unit0;
		_unit0 setFormDir 50;
		_unit0 setDir 50;
		_unit0 setRank "CORPORAL";
	if (random 1 < 0.5) then {
	_unit1 = _group0 createUnit ["ACE_KamazRepair",[5617.8091,11348.225,0],[],0,"FORM"];
		if (isNull _unit1) then {
			_unit1 = createVehicle ["ACE_KamazRepair",[5617.8091,11348.225,0],[],0,"FORM"];
 			[_unit1,_group0] call BIS_fnc_spawnCrew;
		};
	};
// --Waypoints--
processInitCommands;