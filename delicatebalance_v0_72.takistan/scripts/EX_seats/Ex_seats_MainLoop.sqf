private ["_man","_veh"];

_man = (_this select 0);
_veh = (_this select 1);
if (local _man) then {
	EX_PLAYER_ON_ARMOR = true;

	while {EX_PLAYER_ON_ARMOR && (alive _man) && !(_man call ace_sys_wounds_fnc_isUncon)} do {
		if ((inputAction "MoveForward") == 1) then {
			if (speed _veh < 20) then {EX_PLAYER_ON_ARMOR = false;} else {hint composeText [parseText format ["<t><t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_TOOMUCHSPEED"+"</t>"]];};
		};
		_man setVariable ["ace_sys_stamina_fatigue", 0];	
		sleep 0.5;
	};

	Ex_s_down = EX_CARGO_ARR; 
	_nul = Ex_s_down spawn Ex_seats_GetDown; 
	publicVariable "Ex_s_down";
};
