private ["_heli"];

_heli = _this select 0;

while {alive _heli} do {
		if !(str(driver _heli) in ["rus29","rus30","rus31"]) then {(driver _heli) action ["engineOff", _heli];(driver _heli) action ["GetOut", _heli];};
		sleep 0.5;
};
