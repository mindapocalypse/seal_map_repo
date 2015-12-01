_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ": { //
		_veh addWeaponCargo ["ACE_P168_RD90",1];
		_veh addMagazineCargo ["HandGrenade_East",5];
		_veh addMagazineCargo ["ACE_RDGM",5];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",5];
		_veh addMagazineCargo ["ACE_Tourniquet",5];
		_veh addMagazineCargo ["ACE_Epinephrine",5];
		_veh addMagazineCargo ["ACE_LargeBandage",5];
	};
	case "UAZKS": { //
		_veh addMagazineCargo ["HandGrenade_East",2];
		_veh addMagazineCargo ["ACE_RDGM",2];
		_veh addMagazineCargo ["30Rnd_545x39_AK",4];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",2];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_LargeBandage",4];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};