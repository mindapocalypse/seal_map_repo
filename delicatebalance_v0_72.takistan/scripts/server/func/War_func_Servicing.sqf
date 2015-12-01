private ["_object", "_time", "_magazines","_cmagazines"];

	_returnVehicleTurrets = {
		private ["_vehicle", "_turrets", "_cfg", "_i", "_turret", "_turr"];

		_vehicle = this select 1;
		_turrets = [];
		_cfg = configFile >> "CfgVehicles" >> typeOf _vehicle >> "turrets";
		if !(isClass _cfg) exitWith { _turrets };

		for "_i" from 0 to (count _cfg) - 1 do {
		   _turret = _cfg select _i;
		   if (isClass _turret) then {
 	 	   _turr = [];
 	  	  _turrets set [count _turrets, _turr];
 	  	};
		};
		_turrets;
	};

	_reloadTurrets = {
		private ["_turrets", "_path"];

		_turrets = _this select 0;
		_path = _this select 1;

		private ["_i"];
		_i = 0;
		while {_i < (count _turrets)} do {
		private ["_turretIndex", "_thisTurret"];
			_turretIndex = _turrets select _i;
			_thisTurret = _path + [_turretIndex];
	
			_magazines = _object magazinesTurret _thisTurret;
			if (!alive _object) exitWith {};
			_removed = [];
			{
					if (!(_x in _removed)) then {
					_object removeMagazinesTurret [_x, _thisTurret];
						_removed set [count _removed, _x];
					};
			} forEach _magazines;
			if (!alive _object) exitWith {};
			{
				sleep 0.1;
				if (!alive _object) exitWith {};
				_object addMagazineTurret [_x, _thisTurret];
				sleep 0.1;
				if (!alive _object) exitWith {};
			} forEach _magazines;
		
			if (!alive _object) exitWith {};
		
			[_turrets select (_i + 1), _thisTurret] call _reloadTurrets;
			_i = _i + 2;
			if (!alive _object) exitWith {};
		};
	};

_object = _this select 0;
if ((fuel _object) == 1) exitWith {};
_type = typeof _object;
_typename = getText (configFile >> "CfgVehicles" >> _type >> "DisplayName");
_time = RIPRELOADTIME / 60;
_cmagazines = _object magazinesTurret[0];
_object vehicleChat format[localize "STR_RIP_HINT_STARTSERVICING",_typename,_time];

_object setFuel 0;	
sleep RIPRELOADTIME;
_object setDammage 0;

_magazines = getArray(configFile >> "CfgVehicles" >> _type >> "magazines");
if (count _magazines > 0) then {
	_removed = [];
	{
		if (!(_x in _removed)) then {
				_object removeMagazines _x;
				_removed set [count _removed, _x];
		};
	} forEach _magazines;
	{
			sleep 0.1;
			if (!alive _object) exitWith {};
			_object addMagazine _x;
	} forEach _magazines;
};

_turrets = [configFile >> "CfgVehicles" >> _type >> "Turrets"] call _returnVehicleTurrets;
[_turrets, []] call _reloadTurrets;
if (!alive _object) exitWith {};
sleep 2;
_object setVehicleAmmo 1;
//	_object setVehicleInit "this setVehicleAmmo 1"; processInitCommands;
sleep 2;
_object setFuel 1;
if (!alive _object) exitWith {};
_object vehicleChat format[localize "STR_RIP_HINT_ENDSERVICING",_typename];

if (true) exitwith {};
