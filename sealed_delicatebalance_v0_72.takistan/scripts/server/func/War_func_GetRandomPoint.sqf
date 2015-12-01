	private ["_center", "_radius", "_co", "_angle", "_x1", "_y1", "_no", "_center_x", "_center_y"];
	_center = _this select 0;
	_radius = _this select 1;

	_center_x = _center select 0;_center_y = _center select 1;
	_ret_val = [];
	for "_co" from 0 to 99 do {
		_no = [];
		_angle = floor (random 360);
		_x1 = _center_x - ((random _radius) * sin _angle);
		_y1 = _center_y - ((random _radius) * cos _angle);
		if !(surfaceiswater [_x1, _y1]) then {
			_no = [_x1, _y1,0] nearEntities [["Car","Tank","StaticWeapon"],15];
			if ((count _no) < 1) then {_ret_val = [_x1, _y1,0];};
		};
		if (count _ret_val != 0) exitWith {};
	};
	_ret_val

