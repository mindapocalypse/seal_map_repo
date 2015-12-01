private["_pos","_grp","_grpskill","_men","_bldgPos","_i","_j","_nearbldgs"];

if !(isServer) exitWith{};

_pos = _this select 0;


_bldgPos = [];
_i = 0;
_j = 0;
_nearbldgs = nearestObjects [_pos, ["Building"], 300];
{
	private["_y"];
	_y = _x buildingPos _i;
	while {format["%1", _y] != "[0,0,0]"} do {
		_bldgPos set [_j, _y];
		_i = _i + 1;
		_j = _j + 1;
		_y = _x buildingPos _i;
		sleep 0.01;
	};
	_i = 0;
} forEach _nearbldgs;

_j = 10;
_i = 0;
if ((count _bldgPos) < 10) then {_j = (count _bldgPos)};

while {_i < _j} do {
	_grp = createGroup WEST;
	RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _grp];
	_grpskill = RIPAIDEFAULTSKILL + (random 0.2);
	_men = objNull;
	_men = _grp createUnit [RIPPATROLMENS select floor(random count RIPPATROLMENS), _pos, [], 100, "NONE"];
	RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];
	_men setCombatMode "YELLOW";
	_men setDir (random 360);
	_men setPos (_bldgPos select floor(random count _bldgPos));
	_i = _i + 1;
	sleep 0.2;
};