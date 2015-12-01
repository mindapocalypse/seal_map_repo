private ["_obj","_isdestroyed","_atbase","_teamscore"];
_obj = _this select 0;
if !(isServer) exitWith {};

_isdestroyed = false;
_atbase = false;
while {!(_isdestroyed) && !(_atbase)} do 
{
	if (!alive _obj) then {_isdestroyed = true;};
	if ((_obj distance Flag_Base_RU) < 80) then {_atbase = true;};
	sleep 10;
};

_teamscore = Server getVariable "RIPTEAMSCORE";
if (_isdestroyed) then {Server setVariable ["RIPMISSIONSUCCEED",0,true];_teamscore = _teamscore - 3;[nil, nil, rEXECVM, "scripts\server\func\War_func_MissionFailHint.sqf"] call RE;};

if (_atbase) then {Server setVariable ["RIPMISSIONSUCCEED",1,true];_teamscore = _teamscore + 5;[nil, nil, rEXECVM, "scripts\server\func\War_func_MissionWinHint.sqf"] call RE;};
Server setVariable ["RIPTEAMSCORE",_teamscore,true];

Server setVariable ["RIPMISSIONCOMPLETED",true,true];
[] execVM "scripts\server\func\War_func_EscapeZone.sqf";