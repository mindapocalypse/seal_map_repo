private ["_object", "_list", "_name"];

_list = nearestObjects [position player, ["LandVehicle", "Air", "Tank", "Car"], 10];

if(count _list == 0) exitwith {
	hintSilent composeText [parseText format ["<t size='2.8' align='center' valign='top'><img  image='Pics\Icons\i_novehicle.paa'></t><br/><t size='1.1' shadow='true' color='#FF0000' align='center' valign='top'>"+localize "STR_RIP_HINTNOVEHICLENEAR"+"</t>"]];
};

_object = _list select 0;

player playMove "AinvPknlMstpSlayWrflDnon_medic";
_name= getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "DisplayName");
if(locked _object) then {
			hintSilent composeText [parseText format ["<t><img size='2.8' align='center' image='Pics\Icons\i_unlock.paa'></t><br /><t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINTUNLOCKVEHICLE"+"</t>",_name]];
			sleep 8;
			if!(alive player) exitwith {};
} else {
			hintSilent composeText [parseText format ["<t><img size='2.8' align='center' image='Pics\Icons\i_lock.paa'></t><br /><t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_HINTLOCKVEHICLE"+"</t>",_name]];
			sleep 8;
			if!(alive player) exitwith {};
};

RIPLOCKEDVEHICLE = _object;
publicvariable "RIPLOCKEDVEHICLE";

if((local player) && isServer) then {
		if(locked _object) then {
			_object lock false;
		} else {
			_object lock true;
		};
	};
if (true) exitWith {};