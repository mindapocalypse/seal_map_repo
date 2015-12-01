//by Levrex, 27.03.2014, otstrel.ru

private ["_man", "_veh", "_anim", "_dir", "_pos", "_num"];

_veh = (_this select 0);
_man = (_this select 1);
_anim = (_this select 2) select 0;
_dir = (_this select 2) select 1;
_pos = (_this select 2) select 2;
_posz = (_this select 2) select 3;
_num = (_this select 3);

if (local _man) then {
	_man attachTo [_veh, _pos];
	if ((_pos select 0) < 0) then {EX_CARGO_ARR = [_man, _veh, [((_pos select 0)-1.3), (_pos select 1), _posz], _num];};
	if ((_pos select 0) >= 0) then {EX_CARGO_ARR = [_man, _veh, [((_pos select 0)+1.3), (_pos select 1), _posz], _num];};
	null = [_man,_veh] spawn Ex_seats_MainLoop;
};

_man switchMove _anim;
_man setDir _dir;