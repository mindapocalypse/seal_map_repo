private ["_pos","_trg_boom","_teamscore"];

if !(isServer) exitWith {};

_pos = _this select 0;

townClear = {
		_teamscore = Server getVariable "RIPTEAMSCORE";
		_teamscore = _teamscore + 5;
		Server setVariable ["RIPMISSIONSUCCEED",1,true];
		[nil, nil, rEXECVM, "scripts\server\func\War_func_MissionWinHint.sqf"] call RE;
		Server setVariable ["RIPTEAMSCORE",_teamscore,true];
		Server setVariable ["RIPMISSIONCOMPLETED",true,true];
		[] execVM "scripts\server\func\War_func_EscapeZone.sqf";
};


_trg_boom = createTrigger["EmptyDetector",_pos];
_trg_boom setTriggerArea[300,300,0,false];
_trg_boom setTriggerActivation["WEST","PRESENT",false];
_trg_boom setTriggerStatements["west countSide thislist <= 10", "call townClear;", ""];
RIPMISSIONOBJ set [count RIPMISSIONOBJ, _trg_boom];

if (true) exitWith {};
