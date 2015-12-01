private ["_pos"];

if (RIPRALLYPOINTS==0) exitWith {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_DISABLERALLY"+"</t>"]];};

		if ((str(player)) in ["rus1","rus2","rus3","rus4","rus5","rus6","rus23","rus24","rus25","rus26","rus27","rus28"]) then 
			{
				_pos = getPosATL RIP_S1_CHECKPOINT;
			};
		if ((str(player)) in ["rus7","rus8","rus9","rus10","rus11","rus12","rus13","rus14","rus15","rus16","rus17"]) then 
			{
				_pos = getPosATL RIP_M1_CHECKPOINT;
			};
		if ((str(player)) in ["rus18","rus19","rus20","rus21","rus22"]) then 
			{
				_pos = getPosATL RIP_G1_CHECKPOINT;
			};

if ((_pos distance Flag_Base_RU)<1000) then {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_NODEPLOYRALLY"+"</t>"]];}
else {
	player setPosATL _pos;
};