private ["_randomobjposition","_position","_script_handler","_random_point","_taskquad","_distance"];

if !(isServer) exitWith {};
_randomobjposition = [
			SU1,
			SU2,
			SU3,
			SU4,
			SU5,			
			SU6
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
					
script_handler = ["smallbase2", (getDir _position), objposition] execVM "scripts\server\objectMapper.sqf";
waitUntil {scriptDone script_handler};
			
missionobject = createVehicle ["US_WarfareBUAVterminal_Base_EP1", objposition , [], 0, "NONE"];
sleep 0.1;
missionobject setDir ((getDir _position) -120);
RIPMISSIONOBJ set [count RIPMISSIONOBJ, missionobject];
[missionobject,1200] execVM "scripts\server\DefenseObjectContamination.sqf";				
sleep 1;

Server setVariable ["RIPMISSIONOBJECT",missionobject,true];
_distance = 1000 + round(random 1000);
Server setVariable ["RIPCONTAMINATION",_distance,true];

Server setVariable ["RIPMISSIONCOMPLETED",false,true];			
Server setVariable ["RIPMISSIONCREATED",true,true];
[] spawn War_func_RemoveDead;			

