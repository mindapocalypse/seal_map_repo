private ["_unit"];

_unit = _this select 3 select 0;

player SetPosATL [(getMarkerPos "desant" select 0), (getMarkerPos "desant" select 1), HaloHeight];
