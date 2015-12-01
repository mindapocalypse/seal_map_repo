private ["_result","_pos","_range","_plr"];
_pos   = _this select 0;
_range = _this select 1;

_result = 0; 
{
		if (!isNil _x) then {
			_plr = call compile _x;
			if (!isNull _plr) then {
				if ((((getPos _plr) distance _pos) <= _range) && (alive _plr)) then {_result = _result + 1;};
			};
		};
} forEach ["rus1","rus2","rus3","rus4","rus5","rus6","rus7","rus8","rus9","rus10","rus11","rus12","rus13","rus14","rus15","rus16","rus17","rus18","rus19","rus20","rus21","rus22","rus23","rus24","rus25","rus26","rus27","rus28","rus29","rus30","rus31"];

_result