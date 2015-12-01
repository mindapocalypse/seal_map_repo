//by RIP
/*
 [position this] execVM "War_func_CreateStatic.sqf";=======================================================================================================================
*/
if(!isServer) exitWith{};

private["_pos","_grp","_grpskill","_men","_statics","_count","_i","_random_point","_mg","_typemg"];


_pos = _this select 0;

waitUntil {!isNil "bis_fnc_init"}; 

_grp = createGroup WEST;
RIPMISSIONGUARDGROUPS set [count RIPMISSIONGUARDGROUPS, _grp];
_grpskill = RIPAIDEFAULTSKILL;

_statics = _pos nearEntities ["StaticWeapon",30];
sleep 1;
if ((count _statics) > 0) then {
		{
			_men = _grp createUnit ["US_Delta_Force_EP1", _pos, [], 10, "NONE"];
			_men moveInGunner _x;
			_men setBehaviour "COMBAT";
			RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];
		} forEach _statics;
};
sleep 1;

_random_point= [];
_count = 3 + (random 3);
_i = 0;
while {_i < _count} do {
	_random_point = [_pos, 300] call War_GetRandomPoint;
	_typemg = ["M2StaticMG_US_EP1", "MK19_TriPod_US_EP1","M2HD_mini_TriPod_US_EP1"] call BIS_fnc_selectRandom;
 	_mg = objNull;
	_mg = _typemg createVehicle _random_point;
	RIPMISSIONOBJ set [count RIPMISSIONOBJ, _mg];
	_men = _grp createUnit ["ACE_USMC_Soldier2_D", _random_point, [], 10, "NONE"];
	_men moveInGunner _mg;
	_men setBehaviour "AWARE";
	RIPMISSIONGUARDUNITS set [count RIPMISSIONGUARDUNITS, _men];
	_i = _i + 1;
};
(leader _grp) setSkill _grpskill;

if (true) exitWith {};