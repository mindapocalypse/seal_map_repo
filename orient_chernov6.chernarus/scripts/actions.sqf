private ["_unit"];

_unit = _this select 0;

_unit addAction ["Прыгнуть с парашюта", "scripts\desant.sqf", [_unit]];