if ((player distance Flag_Base_RU) > 200) exitWith {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_CANTSELECTWEAPON"+"</t>"]];};

createDialog "RIPSELECTWEAPON";