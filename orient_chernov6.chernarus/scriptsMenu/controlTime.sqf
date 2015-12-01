private ["_hour", "_minute"];

_hour = floor (selTime*0.25);
_minute=(selTime%4)*15;

hint format["%1:%2",_hour, _minute];

[-2, {setDate [2010, 6, 25, _this select 0, _this select 1]}, [_hour, _minute]] call CBA_fnc_globalExecute;