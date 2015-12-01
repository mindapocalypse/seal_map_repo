private ["_taskdesc","_squadtask","_numtask","_task","_missiontime","_hour","_done","_currenthour"];
if (isDedicated) exitWith {};

_task = localize "STR_RIP_HINT_MISSION";
_numtask = Server getVariable "RIPMISSIONTASKNUM";
_taskdesc = localize format ["STR_RIP_MISSION%1",_numtask];
_squadtask = Server getVariable "RIPMISSIONTASKSQUAD";
_taskdesc = format [_taskdesc,_squadtask];

waitUntil{!(isNil "BIS_fnc_init")};

switch ((Server getVariable "RIPMISSIONSUCCEED")) do 
{ 
  case 0: {RIPNEWTASK setTaskState "Failed";}; 
  case 1: {RIPNEWTASK setTaskState "Succeeded";}; 
};

RIPNEWTASK = player createSimpleTask [_task];
RIPNEWTASK setSimpleTaskDescription [_taskdesc, _task, ""];
RIPNEWTASK setTaskState "Assigned";

if (RIPRANDOMTIME == 1) then {
					_missiontime = Server getVariable "RIPTASKTIME";
					_hour = _missiontime select 3;
					_done = false;

					while {!_done} do {
								_currenthour = date select 3;

								if!(_hour == _currenthour) then {
														skiptime 0.009;
								}else{
										setDate _missiontime;
										_done = true;
								};
								sleep 0.0005;
					};
};

hint composeText [parseText format ["<t><img size='2.8' align='center' image='Pics\topsecret_ru.paa'></t><br /><t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINT_NEWMISSION"+"</t>"]];

if !(isNull (Server getVariable "RIPMISSIONOBJECT")) then {[]execVM "scripts\server\func\War_func_Contamination.sqf";};

