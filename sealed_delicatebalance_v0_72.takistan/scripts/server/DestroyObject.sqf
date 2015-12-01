private ["_obj","_isdestroyed","_teamscore"];
_obj = _this select 0;
if !(isServer) exitWith {};

_isdestroyed = false;
while {!_isdestroyed} do 
{
	if (!alive _obj) then {_isdestroyed = true;Server setVariable ["RIPMISSIONSUCCEED",1,true];};
	sleep 10;
};

[nil, nil, rEXECVM, "scripts\server\func\War_func_MissionWinHint.sqf"] call RE;

_teamscore = Server getVariable "RIPTEAMSCORE";
_teamscore = _teamscore + 5;
Server setVariable ["RIPTEAMSCORE",_teamscore,true];

Server setVariable ["RIPMISSIONCOMPLETED",true,true];
[] execVM "scripts\server\func\War_func_EscapeZone.sqf";
