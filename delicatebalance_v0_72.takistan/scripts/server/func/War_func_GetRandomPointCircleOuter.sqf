	private ["_center", "_radius", "_co", "_angle", "_x1", "_y1", "_no", "_valid", "_slope", "_center_x", "_center_y"];
	_center = _this select 0;
	_radius = _this select 1;

	_center_x = _center select 0;_center_y = _center select 1;
	_ret_val = [];
	for "_co" from 0 to 99 do {
		_angle = floor (random 360);
		_x1 = _center_x - (_radius * sin _angle);
		_y1 = _center_y - (_radius * cos _angle);
		_ret_val = [_x1, _y1,0];
	};
	_ret_val

