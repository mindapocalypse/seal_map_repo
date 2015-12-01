//by Levrex, 27.03.2014, otstrel.ru

private ["_veh", "_ex_array", "_type", "_cap", "_i", "_tempAr"];

_veh = _this select 3;
_type = -1;

_ex_array = [[
	["aav_cargo01", 330, [-0.8,-0.5,-0.1],-2.2],
	["aav_cargo01", 150, [0.8,-0.5,-0.1],-2.2],
	["aav_cargo01", 340, [-0.85,-1.8,-0.05],-2.2],
	["stryker_cargo01", 90, [0.95,-1.8,0.05],-2.2],
	["aav_cargo01", 270, [-0.95,-3.3,-0.05],-2.2],
	["aav_cargo01", 180, [0.85,-3.4,-0.1],-2.2]
],[
	["aav_cargo01", 330, [-0.5,-0.5,-0.5],-2.2],
	["aav_cargo01", 150, [0.5,-0.5,-0.5],-2.2],
	["aav_cargo01", 340, [-0.85,-1.8,-0.8],-2.2],
	["stryker_cargo01", 90, [0.95,-1.8,-0.7],-2.2],
	["aav_cargo01", 270, [-0.95,-3.1,-0.8],-2.2],
	["aav_cargo01", 180, [0.95,-3.1,-0.8],-2.2]
],[
	["MH6_Cargo02", 90, [0.7,-0.3,0],-2.2],
	["MH6_Cargo02", 270, [-0.7,0,0],-2.2],
	["MH6_Cargo02", 90, [0.7,-1.0,0],-2.2],
	["MH6_Cargo02", 270, [-0.7,-0.8,0.05],-2.2],
	["c5efe_MichalLoop", 270, [0.6,-1.9,-0.4],-2.2],
	["MH6_Cargo02", 280, [-0.7,-1.6,0.05],-2.2]
],[
	["MH6_Cargo02", 90, [0.9,-0.2,0.8],-2.2],
	["BTR_Cargo02", 270, [-0.8,-1.4,0.9],-2.2],
	["MH6_Cargo02", 90, [0.9,-0.9,0.8],-2.2],
	["MH6_Cargo02", 270, [-0.9,-2.2,0.9],-2.2]
],[
	["aav_cargo03", 245, [-0.85,0.375,-0.35],-5],
	["aav_cargo01", 150, [0.95,0.35,-0.35],-5],
	["stryker_cargo01", 270, [-0.9,-1.385,-0.35],-5],
	["stryker_cargo01", 90, [0.9,-1.385,-0.3],-5],
	["aav_cargo03", 200, [-0.7,-2.35,-0.35],-5],
	["aav_cargo01", 185, [0.7,-2.45,-0.35],-5]
],[
	["aav_cargo01", 330, [-1.35,0,-0.5],-2.2],
	["aav_cargo01", 150, [1,0,-0.5],-2.2],
	["stryker_cargo01", 270, [-1.4,-1.75,-0.5],-2.2],
	["stryker_cargo01", 90, [1.13,-2.1,-0.5],-2.2],
	["aav_cargo01", 270, [-1.3,-2.85,-0.5],-2.2],
	["aav_cargo01", 180, [0.9,-3,-0.5],-2.2]
],[
	["c5efe_MichalLoop", 95, [-0.7,-2,-1.4],-2.2],
	["BTR_Cargo02", 220, [-0.7,-3.1,-1],-2.2],
	["BTR_Cargo02", 200, [0.7,-3,-1],-2.2]
],[
	["MH6_Cargo02", 90, [1.4,-3.7,-0.7],-2.2],
	["MH6_Cargo02", 270, [-1.4,-3.7,-0.7],-2.2],
	["MH6_Cargo02", 90, [1.4,-3.0,-0.7],-2.2],
	["MH6_Cargo02", 270, [-1.4,-3.0,-0.7],-2.2]
],[
	["MH6_Cargo02", 90, [1.45,-3,-0.45],-2.2],
	["AAV_Cargo03", 150, [-1.1,-4.2,-0.55],-2.2],
	["AAV_Cargo03", 90, [1.1,-4.2,-0.55],-2.2],
	["MH6_Cargo02", 270, [-1.45,-3,-0.45],-2.2]
],[
	["AAV_Cargo03", 100, [1.35,-3.9,-0.82],-2.2],
	["AAV_Cargo03", 150, [-1.45,-4.2,-0.82],-2.2],
	["MH6_Cargo02", 270, [-1.55,-3.5,-0.72],-2.2],
	["MH6_Cargo02", 90, [1.55,-2.7,-0.72],-2.2]
],[
	["aav_cargo03", 245, [-0.85,-0.25,-3.9],-5],
	["aav_cargo01", 150, [1,0.3,-3.9],-5],
	["stryker_cargo01", 270, [-1,-1.8,-3.9],-5],
	["stryker_cargo01", 90, [1,-1.8,-3.9],-5],
	["aav_cargo01", 270, [-0.7,-3.1,-3.65],-5],
	["aav_cargo01", 185, [0.7,-3.15,-3.65],-5]
],[
	["aav_cargo03", 245, [-1.05,0.375,-0.5],-5],
	["aav_cargo01", 150, [1.05,0.35,-0.5],-5],
	["stryker_cargo01", 270, [-1.15,-1.385,-0.5],-5],
	["stryker_cargo01", 90, [1.0,-1.385,-0.5],-5],
	["aav_cargo01", 150, [1.05,0.35,-0.5],-5],
	["aav_cargo01", 185, [0.7,-2.45,-0.5],-5]
],[
	["aav_cargo03", 245, [-0.85,0.375,0.4],-5],
	["aav_cargo01", 150, [0.95,0.35,0.45],-5],
	["stryker_cargo01", 270, [-0.9,-1.385,0.45],-5],
	["stryker_cargo01", 90, [0.93,-1.385,0.45],-5],
	["aav_cargo03", 200, [-0.7,-2.45,0.4],-5],
	["aav_cargo01", 185, [0.7,-2.45,0.45],-5]
]];

switch (typeOf _veh) do {
	case "BTR90": {_type = 0; _cap = 6;};
	case "BTR90_HQ": {_type = 1; _cap = 6;};
	case "BTR60_TK_EP1": {_type = 2; _cap = 6;};
	case "ACE_BTR70_TK": {_type = 3; _cap = 4;};
	case "ACE_BTR70_UN": {_type = 3; _cap = 4;};
	case "ACE_BTR70_RU": {_type = 3; _cap = 4;};
	case "ACE_BTR70_RU_D": {_type = 3; _cap = 4;};
	case "ACE_BTR70_CDF": {_type = 3; _cap = 4;};
	case "ACE_BTR70_INS": {_type = 3; _cap = 4;};
	case "ACE_BTR70_GUE": {_type = 3; _cap = 4;};
	case "BMP2_INS": {_type = 4; _cap = 6;};
	case "BMP2_CDF": {_type = 4; _cap = 6;};
	case "BMP2_Gue": {_type = 4; _cap = 6;};
	case "BMP2_UN_EP1": {_type = 4; _cap = 6;};
	case "BMP2_TK_EP1": {_type = 4; _cap = 6;};
	case "ACE_BMP2_RU": {_type = 4; _cap = 6;};
	case "ACE_BMP2_TK": {_type = 4; _cap = 6;};
	case "BMP3": {_type = 5; _cap = 6;};
	case "T34": {_type = 6; _cap = 3;};
	case "T34_TK_EP1": {_type = 6; _cap = 3;};
	case "T34_TK_GUE_EP1": {_type = 6; _cap = 3;};
	case "T90": {_type = 7; _cap = 4;};
	case "ACE_T90A": {_type = 7; _cap = 4;};
	case "ACE_T72B_RU": {_type = 8; _cap = 4;};
	case "ACE_T72B_Gue": {_type = 8; _cap = 4;};
	case "ACE_T72B_INS": {_type = 8; _cap = 4;};
	case "ACE_T72B_Base": {_type = 8; _cap = 4;};
	case "ACE_T72B_CDF": {_type = 8; _cap = 4;};
	case "ACE_T72BA_Base": {_type = 8; _cap = 4;};
	case "T72_RU": {_type = 8; _cap = 4;};
	case "T72_INS": {_type = 8; _cap = 4;};
	case "T72_CDF": {_type = 8; _cap = 4;};
	case "T72_Gue": {_type = 8; _cap = 4;};
	case "T72_TK_EP1": {_type = 8; _cap = 4;};
	case "T55_TK_EP1": {_type = 9; _cap = 4;};
	case "T55_TK_GUE_EP1": {_type = 9; _cap = 4;};
	case "BMP2_HQ_INS": {_type = 10; _cap = 6;};
	case "BMP2_HQ_CDF": {_type = 10; _cap = 6;};
	case "BMP2_HQ_TK_EP1": {_type = 10; _cap = 6;};
	case "ACE_BMP2D_RU": {_type = 11; _cap = 6;};
	case "ACE_BMP2D_TK": {_type = 11; _cap = 6;};
	case "BMP2_Ambul_INS": {_type = 12; _cap = 6;};
	case "BMP2_Ambul_CDF": {_type = 12; _cap = 6;};
};

if (_type > -1) then {
	if (count (_veh getVariable ["EX_SEATS_TAKEN", []]) < 1) then {
						_tempAr = [];
						for "_i" from 0 to (_cap - 1) do {
							_tempAr set [count _tempAr, objNull];							
						};
						_veh setVariable ["EX_SEATS_TAKEN", _tempAr, true];
	};
};

_tempAr = (_veh getVariable "EX_SEATS_TAKEN");
_i = _tempAr find objNull;

if (_i < 0) exitWith {hint composeText [parseText format ["<t><t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_ALLSEATSOCCUPIED"+"</t>"]];};

_tempAr set [_i, player];
_veh setVariable ["EX_SEATS_TAKEN", _tempAr, true];

_tempAr = (_veh getVariable "EX_SEATS_TAKEN");
if ((_tempAr select _i) != player) exitWith {};

Ex_s_taken = [_veh, player, ((_ex_array select _type) select _i), _i];
Ex_s_taken call Ex_seats_Seat;
publicVariable "Ex_s_taken";

