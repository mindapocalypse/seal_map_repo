_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "SAP" : { //
		_veh addMagazineCargo ["ACE_POMZ_M",40];
		_veh addMagazineCargo ["MineE",10];
		_veh addMagazineCargo ["PipeBomb",10];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",2];
	};
	case "MIN" : { //
		_veh addWeaponCargo ["ACE_2b14Proxy",1];
		_veh addWeaponCargo ["ACE_2b14TripodProxy",1];
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
		[_veh,"82MMHE"] call SerP_cargoCrateProcessor;
	};
	case "NONE" : { //
		_veh addMagazineCargo ["ACE_Morphine",2]; 
		_veh addMagazineCargo ["ACE_Bandage",2];
	};
	case "NONE2" : { //
		_veh addMagazineCargo ["ACE_Morphine",3]; 
		_veh addMagazineCargo ["ACE_Bandage",3];
	};
	case "BTR70" : { //
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["HandGrenade_East",20]; 
		_veh addMagazineCargo ["1Rnd_HE_GP25",16]; 
		_veh addWeaponCargo ["ACE_P168_RD90",1]; 
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_LargeBandage",10];
		_veh addMagazineCargo ["ACE_Morphine",10]; 
		_veh addMagazineCargo ["ACE_Bandage",4];
	};
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",40];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
