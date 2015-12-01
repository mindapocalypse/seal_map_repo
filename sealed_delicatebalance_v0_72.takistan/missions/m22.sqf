private ["_randomobjposition","_position","_script_handler","_random_point","_townlist","_town","_i"];

if !(isServer) exitWith {};
_randomobjposition = [
			CT1,
			CT2,
			CT3,
			CT4,
			CT5,
			CT6
			];
_position = _randomobjposition call BIS_fnc_selectRandom;

while {(RIPLASTMISSIONPOS distance _position) < 2000} do {
	_position = _randomobjposition call BIS_fnc_selectRandom;
	sleep 0.5;
};

objposition = getPosATL _position;
RIPLASTMISSIONPOS = objposition;
"area0" setMarkerPos objposition;

_townlist = nearestLocations [objposition, ["NameCityCapital","NameCity", "NameVillage"], 300];
_town = text (_townlist select 0);
Server setVariable ["RIPMISSIONTASKSQUAD",_town,true];					
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

[objposition] execVM "scripts\server\ClearTown.sqf";	

Server setVariable ["RIPMISSIONCOMPLETED",false,true];			
Server setVariable ["RIPMISSIONCREATED",true,true];
[] spawn War_func_RemoveDead;			

