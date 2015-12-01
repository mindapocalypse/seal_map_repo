{
	if (!(isPlayer _x)) then { 
		deleteVehicle _x; 
	};
} forEach allUnits;

{ 
	if (!(isPlayer _x)) then { 
		deleteVehicle _x; 
	}
} forEach allDead;

{
	_units = crew _x;
	_count = count _units;
	
	if(_count == 0) then {
		deleteVehicle _x; 
	} else {
		if((isPlayer (_units select 0)) == false) then {
			_x setDamage 1000;
			deleteVehicle _x; 
		};
	};
	
} forEach vehicles;

hint "Юниты удалены";