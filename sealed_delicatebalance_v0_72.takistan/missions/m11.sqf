private ["_randomobjposition","_position","_script_handler","_random_point","_taskquad","_i"];

if !(isServer) exitWith {};
_randomobjposition = [
			EO1,
			EO2,
			EO3,
			EO4,
			EO5,			
			EO6
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
					
script_handler = ["smallbase1", (getDir _position), objposition] execVM "scripts\server\objectMapper.sqf";
waitUntil {scriptDone script_handler};
			
_grp = createGroup west;
missionobject = _grp createUnit ["US_Delta_Force_Undercover_Takistani06_EP1", [0,0,0], [], 0, "NONE"];
sleep 0.1;
missionobject disableAI "MOVE";
sleep 0.1;
missionobject setDir (getDir _position);
missionobject setPos objposition;
RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, missionobject];
RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _grp];
[missionobject] execVM "scripts\server\DestroyObject.sqf";	
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

