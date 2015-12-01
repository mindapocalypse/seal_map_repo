private ["_object", "_list", "_name"];

_list = nearestObjects [position player, ["LandVehicle", "Air", "Tank", "Car"], 10];

if(count _list == 0) exitwith {
	hintSilent composeText [parseText format ["<t size='2.8' align='center' valign='top'><img image='Pics\Icons\i_novehicle.paa'></t><br/><t size='1.1' shadow='true' color='#FF0000' align='center' valign='top'>"+localize "STR_RIP_HINTNOVEHICLENEAR"+"</t>"]];
};

_object = _list select 0;

if (getdammage _object > 0.80) then {
	hintSilent composeText [parseText format ["<t size='2.8' align='center'><img  image='Pics\Icons\i_cantrepair.paa'></t><br /><t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINTCANTREPAIR"+"</t>"]];

} else {
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	_name= getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "DisplayName");
	hintSilent composeText [parseText format ["<t><img size='2.8' align='center' image='Pics\Icons\i_repair.paa'></t><br /><t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINTREPAIR"+"</t>",_name]];
	sleep 8;
	if!(alive player) exitwith {};
	_object setdamage (getdammage _object - 0.1);
	_text = parseText format["<t size='2.8' align='center'><img  image='Pics\Icons\i_novehicle.paa'></t><br /><t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINTREMAINDAMAGE"+"</t>", format["%1", ceil ((getdammage _object)*100)]+"%"];
	hintSilent _text;
};

if (true) exitWith {};
