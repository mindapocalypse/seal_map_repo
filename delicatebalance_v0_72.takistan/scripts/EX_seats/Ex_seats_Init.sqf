//by Levrex, 27.03.2014, otstrel.ru

private ["_cTarget", "_ex_seat_act"];

if (isDedicated) exitWith {};

Ex_seats_MainLoop = compile preprocessFileLineNumbers "scripts\EX_seats\Ex_seats_MainLoop.sqf";
Ex_seats_GetDown = compile preprocessFileLineNumbers "scripts\EX_seats\Ex_seats_GetDown.sqf";
Ex_seats_Seat = compile preprocessFileLineNumbers "scripts\EX_seats\Ex_seats_Seat.sqf";

"Ex_s_down" addPublicVariableEventHandler {(_this select 1) spawn Ex_seats_GetDown};
"Ex_s_taken" addPublicVariableEventHandler {(_this select 1) call Ex_seats_Seat};

while {true} do {

		sleep 0.003;

		_ex_seat_act = nil;
		_cTarget = objNull;

		_cTarget = cursorTarget;
		if (!isNull _cTarget && alive _cTarget && player distance _cTarget < 7) then {
			if (_cTarget isKindOf "BMP2_Base" || _cTarget isKindOf "BMP3" || _cTarget isKindOf "T72_Base" || _cTarget isKindOf "T34" || _cTarget isKindOf "T90" || _cTarget isKindOf "T55_Base" || _cTarget isKindOf "BTR90_Base" || _cTarget isKindOf "BTR60_TK_EP1") then {
				if !(_cTarget isKindOf "ACE_BMD_1_Base" || _cTarget isKindOf "ACE_BMD_2_Base") then {
						_ex_seat_act = player addAction [localize "STR_RIP_HINT_SITONTOP", "scripts\EX_seats\Ex_seats_Processor.sqf", cursorTarget, 94, true, true, "", "[_target, _this] call BIS_fnc_relativeDirTo > 60 && [_target, _this] call BIS_fnc_relativeDirTo < 300"];
						waitUntil {sleep 0.003; cursorTarget != _cTarget};
						if (!isNil "_ex_seat_act") then {player removeAction _ex_seat_act};
				};
			};
		};

};