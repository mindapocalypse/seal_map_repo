//by RIP
private ["_list"];

if !(isServer) exitWith {};

[nil, nil, rEXECVM, "scripts\server\func\War_func_LeaveAreaHint.sqf"] call RE;

_list = objposition nearEntities [["RU_Soldier_Base","RUS_Soldier_Base"],800];
while {(count _list) > 0} do {
	sleep 30;
	_list = objposition nearEntities [["RU_Soldier_Base","RUS_Soldier_Base"],800];
};

Server setVariable ["RIPMISSIONCREATED",false,true];