//by Levrex, 27.03.2014, otstrel.ru

private ["_man", "_veh", "_pos", "_num", "_tempAr"];

_man = _this select 0;
_veh = _this select 1;
_pos = _this select 2;
_num = _this select 3;

if (local _man) then {
	_man attachTo [_veh, _pos];
	sleep 0.1;
	detach _man;
	_man setDir ( direction _veh);
	_tempAr = (_veh getVariable "EX_SEATS_TAKEN");
	_tempAr set [_num, objNull];
	_veh setVariable ["EX_SEATS_TAKEN", _tempAr, true];
};

if (alive _man) then {_man switchMove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutHigh"} else {_man switchMove "";};
