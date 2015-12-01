private ["_obj","_defensetime","_pos","_trg_boom","_tm","_grpskill","_strength","_startPos","_i","_isdestroyed","_grp1","_grp2","_grp3","_grp4","_teamscore","_men"];

if !(isServer) exitWith {};

_obj = _this select 0;
_defensetime = _this select 1;
_pos = getPos _obj;
_isdestroyed = false;

_trg_boom = createTrigger["EmptyDetector",_pos];
_trg_boom setTriggerArea[10,10,0,false];
_trg_boom setTriggerActivation["WEST","PRESENT",false];
_trg_boom setTriggerStatements["(West countside thislist)>=3", "bomb = 'Bo_GBU12_LGB' createVehicle (getPos missionobject);", ""];
RIPMISSIONOBJ set [count RIPMISSIONOBJ, _trg_boom];

_tm = time + 300;
while {_tm > time} do {
sleep 5;
};

[nil,nil,rSPAWN, [], {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINT_MISSIONDEFENSE10"+"</t>"]]}] call RE;
_tm = time + 300;
while {_tm > time} do {
sleep 5;
};
[nil,nil,rSPAWN, [], {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINT_MISSIONDEFENSE5"+"</t>"]]}] call RE;
_tm = time + 300;
while {_tm > time} do {
sleep 5;
};

_grpskill = RIPAIDEFAULTSKILL + (random 0.2);
_strength = 5 + (random 5);

_grp1 = createGroup West;
_grp2 = createGroup West;
_grp3 = createGroup West;
_grp4 = createGroup West;

{
	RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _x];
	_startPos = [_pos, 400] call War_GetRandomPointCircleOuter;
	_i = 0;
	while {_i < _strength} do {
		_men = _x createunit [RIPPATROLMENS select floor(random count RIPPATROLMENS),_startPos,[],10,"None"];
		RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];
		_men addWeapon "ACE_GlassesGasMask_US";
		[_men, "ACE_GlassesGasMask_US"] execFSM "x\ace\addons\sys_goggles\use_glasses.fsm";
		_i = _i + 1;
		sleep 0.5;
	};
	sleep 1;
	_mode = ["YELLOW", "RED"] call BIS_fnc_selectRandom;
	_formation = ["WEDGE", "DIAMOND"] call BIS_fnc_selectRandom;

	_x setBehaviour "AWARE";
	_x setSpeedMode "LIMITED";
	_x setCombatMode _mode;
	_x setFormation _formation;
	(leader _x) setSkill _grpskill;
	sleep 1;
} forEach [_grp1,_grp2,_grp3,_grp4];


_tm = time + _defensetime;
while {(!_isdestroyed) && (_tm > time)} do {
   
	if (!alive _obj) then {_isdestroyed = true;};

      {_x move _pos} forEach [_grp1,_grp2,_grp3,_grp4];


	{
	if (count units _x < 3) then {

						_startPos = [_pos, 400] call War_GetRandomPointCircleOuter;
						_i = 0;
						while {_i < _strength} do {
								_men = _x createunit [RIPPATROLMENS select floor(random count RIPPATROLMENS),_startPos,[],10,"None"];
								RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];
								_men addWeapon "ACE_GlassesGasMask_US";
								[_men, "ACE_GlassesGasMask_US"] execFSM "x\ace\addons\sys_goggles\use_glasses.fsm";
								_i = _i + 1;
								sleep 0.5;
						};
						sleep 1;
						_mode = ["YELLOW", "RED"] call BIS_fnc_selectRandom;
						_formation = ["WEDGE", "DIAMOND"] call BIS_fnc_selectRandom;

						_x setBehaviour "AWARE";
						_x setSpeedMode "LIMITED";
						_x setCombatMode _mode;
						_x setFormation _formation;
						(leader _x) setSkill _grpskill;
					};
	sleep 3;
	} forEach [_grp1,_grp2,_grp3,_grp4];					
	sleep 5;
};

_teamscore = Server getVariable "RIPTEAMSCORE";
if (_isdestroyed) then {_teamscore = _teamscore - 3;Server setVariable ["RIPMISSIONSUCCEED",0,true];[nil, nil, rEXECVM, "scripts\server\func\War_func_MissionFailHint.sqf"] call RE;} else {_teamscore = _teamscore + 5;Server setVariable ["RIPMISSIONSUCCEED",1,true];[nil, nil, rEXECVM, "scripts\server\func\War_func_MissionWinHint.sqf"] call RE;};

Server setVariable ["RIPTEAMSCORE",_teamscore,true];
Server setVariable ["RIPMISSIONCOMPLETED",true,true];
[] execVM "scripts\server\func\War_func_EscapeZone.sqf";

if (true) exitWith {};