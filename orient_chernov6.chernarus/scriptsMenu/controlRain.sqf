
_overcast = selRain/5;

if(_overcast < 0.5) then {
	_overcast = 0.6;
};

if(_overcast > 0.6 && _overcast < 1) then {
	_overcast = 0.9;
};

[-2, {0 setOvercast _this}, _overcast] call CBA_fnc_globalExecute;
[-2, {0 setRain _this}, selRain/5] call CBA_fnc_globalExecute;