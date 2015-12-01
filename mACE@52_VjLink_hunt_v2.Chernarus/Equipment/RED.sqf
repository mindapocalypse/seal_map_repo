#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//Командование взвода
	case "OFF": { //Командир взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("TU_17Rnd_9x19_PYA",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AEK_971","ACE_P168_RD90","TU_PYA"];
		addItems ["NB","N","R","M","MT","G"];
	};
	case "AOFF": { //Зам. ком. взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AEK_971_1p78","ACE_P168_RD90"];
		addItems ["NB","N","R","M","G"];
	};
	case "R_SL": { //Командир отделения разведки
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AEK_971_1p78","ACE_P168_RD90","ACE_APSB"];
		addItems ["NB","N","R","M","MT","G"];
	};
	case "R_TL": { //Старший разведчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",2);
		addWeapons ["ACE_AEK_971_gp","ACE_Coyote_Pack_Flora","ACE_APSB"];
		addItems ["NB","N","R","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",8]]];
	};
	case "R_MG": { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",6);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK","ACE_APSB"];
		addItems ["NB","N","R","M","G"];
	};
	case "R_AT": { //Разведчик - гранатометчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AEK_971","ACE_RPOM","ACE_APSB"];
		addItems ["NB","N","R","M","G"];
	};
	case "R_SP": { //Разведчик - сёпер
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AEK_971","ACE_Coyote_Pack_Flora","ACE_APSB"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5]]];
		addItems ["NB","N","R","M","G"];
	};
	case "R_SN": { //Разведчик - снайпер
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",6);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["VSS_vintorez","ACE_APSB"];
		addItems ["NB","N","R","M","G"];
	};
	case "R_MHV": { //Мех. Вод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_U"];
		addItems ["NB","N","R","M","G"];
	};
	case "R_ST": { //Разведчик - стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AEK_971"];
		addItems ["NB","N","R","M","G"];
	};

	
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};