private ["_pos","_list"];

_pos = getPosATL player;

if ((_pos distance Flag_Base_RU)<1000) exitWith {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINTCANTSETRALLYBASE"+"</t>"]];};

_list = _pos nearEntities [["Man","Car","Tank"],RIPNORALLYPOINTSENEMYNEAR];
if ((west countSide _list)>0) exitWith {hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINTCANTSETRALLYENEMY"+"</t>"]];};

player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 8;
if!(alive player) exitwith {};

switch (str(player)) do 
{	
	case "rus1":{RIP_S1_CHECKPOINT setPosATL _pos;};
	case "rus7":{RIP_M1_CHECKPOINT setPosATL _pos;};
	case "rus18":{RIP_G1_CHECKPOINT setPosATL _pos;};
};

if (true) exitWith {};