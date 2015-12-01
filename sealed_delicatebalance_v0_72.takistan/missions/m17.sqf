private ["_randomobjposition","_position","_script_handler","_random_point","_taskquad"];

if !(isServer) exitWith {};
_randomobjposition = [
			SR1,
			SR2,
			SR3,
			SR4,
			SR5,			
			SR6
			];
_position = _randomobjposition call BIS_fnc_selectRandom;
while {(RIPLASTMISSIONPOS distance _position) < 2000} do {
	_position = _randomobjposition call BIS_fnc_selectRandom;
	sleep 0.5;
};

objposition = getPosATL _position;
RIPLASTMISSIONPOS = objposition;

_taskquad = mapGridPosition objposition;
Server setVariable ["RIPMISSIONTASKSQUAD",_taskquad,true];
					
script_handler = ["radarsite", (getDir _position), objposition] execVM "scripts\server\objectMapper.sqf";
waitUntil {scriptDone script_handler};
			
missionobject = createVehicle ["76n6ClamShell", objposition , [], 0, "NONE"];
sleep 0.1;
missionobject setDir ((getDir _position) -120);
RIPMISSIONOBJ set [count RIPMISSIONOBJ, missionobject];
[missionobject,1200] execVM "scripts\server\DefenseObject.sqf";				
sleep 1;

Server setVariable ["RIPMISSIONCOMPLETED",false,true];			
Server setVariable ["RIPMISSIONCREATED",true,true];
[] spawn War_func_RemoveDead;			

