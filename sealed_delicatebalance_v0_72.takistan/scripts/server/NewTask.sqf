private ["_task_number","_hour","_minute","_missiontime"];
if !(isServer) exitWith {};

_task_number = RIP_TASK_NUMBERS select floor(random count RIP_TASK_NUMBERS);
RIP_TASK_NUMBERS = RIP_TASK_NUMBERS - [_task_number];
RIPMISSIONCOUNT = RIPMISSIONCOUNT + 1;

if (RIPMISSIONCOUNT > RIPMISSIONCOUNTFORWIN) exitWith {Server setvariable ["RIPMISSIONENDWINNER",true,true];};
if ((Server getVariable "RIPTEAMSCORE") < -30) exitWith {Server setvariable ["RIPMISSIONENDLOOSER",true,true];};

sleep 120;
switch (RIPVEHICLECAPTURE) do 
{ 
  case 0: {{deleteVehicle _x;} forEach RIPMISSIONOBJ;}; 
  case 1: {{if !(isPlayer (driver _x)) then {deleteVehicle _x;}} forEach RIPMISSIONOBJ;}; 
};
sleep 2;
switch (RIPVEHICLECAPTURE) do 
{ 
  case 0: {{deleteVehicle _x;} forEach RIPMISSIONGUARDVEHICLES;}; 
  case 1: {{if !(isPlayer (driver _x)) then {deleteVehicle _x;}} forEach RIPMISSIONGUARDVEHICLES;}; 
};
sleep 2;
{hideBody _x;deleteVehicle _x;} forEach RIPMISSIONGUARDUNITS;
sleep 2;
{deleteGroup _x;} forEach RIPMISSIONGUARDGROUPS;
sleep 2;
[] execVM "scripts\server\func\War_func_UpgrageAmmobox.sqf";
sleep 2;
null = [] execVM format ["missions\" + "m%1.sqf",_task_number];
numtask = _task_number;
if (RIPRANDOMTIME == 1) then {
					_hour = floor(random 23);
					_minute = floor(random 59);					
					_missiontime = [(date select 0), (date select 1), (date select 2), _hour, _minute];
					Server setVariable ["RIPTASKTIME",_missiontime,true];
					setDate _missiontime;
					};
Server setVariable ["RIPMISSIONTASKNUM",numtask,true];
