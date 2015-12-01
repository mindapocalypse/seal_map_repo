if (isDedicated) exitWith {}; 
waitUntil { alive player }; 
[] spawn {//EH
	while {true} do {
		_veh = vehicle player;
		_act = _veh addAction ["<t color=""#3cff00"">" +"Меню","scriptsMenu\Functional.sqf",[],-1];
		waitUntil {sleep 1;(_veh != (vehicle player))};
		_veh removeAction _act;

	};
};
[] spawn {//EH
	while {true} do {
		_veh = vehicle player;
		_act = _veh addAction ["<t color=""#FFFF00"">" +"Спектатор","scriptsMenu\spectating.sqf",[],-2];
		waitUntil {sleep 1;(_veh != (vehicle player))};
		_veh removeAction _act;

	};
};
