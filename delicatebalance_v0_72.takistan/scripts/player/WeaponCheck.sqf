private ["_playerweaponname","_rip_sniperguns","_rip_mashineguns","_vehicle"];

_rip_sniperguns = ["M24","ACE_SVD_Bipod","SVD_NSPU_EP1","KSVK","ACE_Val"];
_rip_mashineguns = ["ACE_RPK74M","ACE_RPK74M_1P29","PK","Pecheneg"];
_rip_specopsguns = ["ACE_oc14","ACE_oc14gl","ACE_oc14sp","ACE_oc14glsp","ACE_oc14sd","ACE_oc14sdsp","ACE_Val","ACE_Val_Kobra","ACE_Val_PSO"];

while {true} do {

	if (local player) then 
	{
		if (!(str(player) in ["rus5","rus21"]) && (toUpper(primaryWeapon player) in _rip_sniperguns)) then {
				_playerweaponname = (getText (configFile >> "CfgWeapons" >> (primaryWeapon player) >> "DisplayName"));
				hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_CANTUSEWEAPON"+"</t>",_playerweaponname]];
				player removeWeapon (primaryWeapon player);
		};

		if (!(str(player) in ["rus3","rus10","rus20"]) && (toUpper(primaryWeapon player) in _rip_mashineguns)) then {
				_playerweaponname = (getText (configFile >> "CfgWeapons" >> (primaryWeapon player) >> "DisplayName"));
				hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_CANTUSEWEAPON"+"</t>",_playerweaponname]];
				player removeWeapon (primaryWeapon player);
		};

		if (!(str(player) in ["rus18","rus19","rus20","rus21","rus22"]) && (toUpper(primaryWeapon player) in _rip_specopsguns)) then {
				_playerweaponname = (getText (configFile >> "CfgWeapons" >> (primaryWeapon player) >> "DisplayName"));
				hint composeText [parseText format ["<t size='1.1' shadow='true' color='#FF0000' align='center'>"+localize "STR_RIP_HINT_CANTUSEWEAPON"+"</t>",_playerweaponname]];
				player removeWeapon (primaryWeapon player);
		};
	};
	sleep 1;
};