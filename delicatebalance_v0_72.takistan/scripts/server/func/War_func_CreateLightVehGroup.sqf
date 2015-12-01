//by RIP
private["_arrayofvehicle","_vehicle","_units","_grp","_grpskill","_startpos","_sizevec","_isFlat"];

if(!isServer) exitWith{};

_startpos = _this select 0;

_grpskill = RIPAIDEFAULTSKILL + (random 0.2);

{
	waituntil {!isnil "bis_fnc_init"};
	_arrayofvehicle = [_startpos, 180, (RIPPATROLLIGHTVEHICLES select floor(random count RIPPATROLLIGHTVEHICLES)), West] call bis_fnc_spawnvehicle;

	_vehicle = _arrayofvehicle select 0;
	clearWeaponCargo _vehicle;
	RIPMISSIONGUARDVEHICLES set [count RIPMISSIONGUARDVEHICLES, _vehicle];

	_sizevec = sizeOf (typeOf _vehicle);
	_isFlat = (position _vehicle) isFlatEmpty [_sizevec / 2, 150, 0.7, _sizevec, 0, false, _vehicle];
	if (count _isFlat > 1) then {
			_startpos = _isFlat;
			_startpos set [2, 0];
	};
	_vehicle setPos _startpos;

	_grp = _arrayofvehicle select 2;
	RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _grp];

	_units = _arrayofvehicle select 1;
	RIPMISSIONGUARDUNITS = RIPMISSIONGUARDUNITS + _units;

	(leader _grp) setSkill _grpskill;
} forEach [0,1];



sleep 1;
if (true) exitWith {};
