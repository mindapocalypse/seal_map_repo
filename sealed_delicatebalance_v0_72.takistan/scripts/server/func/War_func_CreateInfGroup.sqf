/*
 [position this,  200] execVM "War_func_CreateInfGroup.sqf";=======================================================================================================================
*/
if(!isServer) exitWith{};

private["_pos","_grp","_grpskill","_men","_strength","_i"];

_pos = _this select 0;

waitUntil {!isNil "bis_fnc_init"}; 

_grp = createGroup WEST;
RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _grp];
_grpskill = RIPAIDEFAULTSKILL + (random 0.2);
_strength = 2 + round(random 3);

_men = _grp createunit ["ACE_USMC_Soldier_SL_D",_pos,[],10,"None"];
[_men] join _grp;
_men setRank "LIEUTENANT";
RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];

_i = 0;
while {_i < _strength} do {
	_men = _grp createunit [RIPPATROLMENS select floor(random count RIPPATROLMENS),_pos,[],2,"None"];
	[_men] join _grp;
	RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];
	_i = _i + 1;
};

sleep 5;
(leader _grp) setSkill _grpskill;

if (true) exitWith {};