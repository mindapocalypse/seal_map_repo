﻿private ["_randomobjposition","_position","_script_handler","_random_point","_taskquad","_i"];

if !(isServer) exitWith {};
_randomobjposition = [
			RP1,
			RP2,
			RP3,
			RP4,
			RP5,			
			RP6
			];
_position = _randomobjposition call BIS_fnc_selectRandom;
while {(RIPLASTMISSIONPOS distance _position) < 2000} do {
	_position = _randomobjposition call BIS_fnc_selectRandom;
	sleep 0.5;
};

objposition = getPosATL _position;
RIPLASTMISSIONPOS = objposition;
"area0" setMarkerPos objposition;

_taskquad = mapGridPosition objposition;
Server setVariable ["RIPMISSIONTASKSQUAD",_taskquad,true];
								
_grp = createGroup east;
missionobject = _grp createUnit ["RU_Soldier_Pilot", [0,0,0], [], 0, "NONE"];
sleep 0.1;
missionobject disableAI "MOVE";
sleep 0.1;
missionobject setCaptive true;
sleep 0.1;
missionobject setDir (getDir _position);
missionobject setPos objposition;
RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, missionobject];
RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _grp];
missionobject setVehicleInit "this addAction ['<t color=''#ff0000''>'+localize 'STR_RIP_TAKECONTROL'+'</t>', 'scripts\server\func\War_func_Arest.sqf',[],-1,false, true];";
processInitCommands;
[missionobject] execVM "scripts\server\StillObject.sqf";		
sleep 1;

_random_point= [];
for [{_i=0},{_i<=RIPAICOUNT},{_i=_i+1}] do
{
	_random_point = [objposition, 300] call War_GetRandomPoint;
	[_random_point]  spawn War_func_CreateInfGroup;
	sleep 0.5;
};
sleep 1;
if (RIPAILIGHTVEHCOUNT > 0) then {
	if (RIPAILIGHTVEHCOUNT == 1) then {
		_random_point = [objposition, 300] call War_GetRandomPoint;
		[_random_point] spawn War_func_CreateLightVehGroup;
	};
	if (RIPAILIGHTVEHCOUNT == 2) then {
		{
		_random_point = [objposition, 300] call War_GetRandomPoint;
		[_random_point] spawn War_func_CreateLightVehGroup;
		sleep 0.5;
		} forEach [0,1,2];
	};
};
sleep 1;
if (RIPAIHEAVYVEHCOUNT > 0) then {
	if (RIPAIHEAVYVEHCOUNT == 1) then {
		_random_point = [objposition, 300] call War_GetRandomPoint;
		[_random_point] spawn War_func_CreateHardVehGroup;
	};
	if (RIPAIHEAVYVEHCOUNT == 2) then {
		{
		_random_point = [objposition, 300] call War_GetRandomPoint;
		[_random_point] spawn War_func_CreateHardVehGroup;
		sleep 0.5;
		} forEach [0,1,2];
	};
};
sleep 0.5;

{nul=[(leader _x),"area0","nosmoke","noveh","spawned"] execVM "scripts\server\upsmon.sqf"} forEach RIPMISSIONGUARDGROUPS;
sleep 2;
[objposition] spawn War_func_CreateStatic;
sleep 0.5;
[objposition] spawn War_func_BotsHouse;
sleep 0.5;

Server setVariable ["RIPMISSIONCOMPLETED",false,true];			
Server setVariable ["RIPMISSIONCREATED",true,true];
[] spawn War_func_RemoveDead;	