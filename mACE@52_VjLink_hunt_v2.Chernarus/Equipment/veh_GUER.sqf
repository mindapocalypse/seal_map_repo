_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "YAMAHA": { //
		_veh addMagazineCargo ["HandGrenade_East",3];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_SD_AK47",2];
		_veh addMagazineCargo ["SmokeShell",2];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",3];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_LargeBandage",4];
	};

	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};