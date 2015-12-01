#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "WL": {// Warlord gol
		addMagazines("ACE_20Rnd_762x51_S_HK417",6);
		addMagazines("ACE_20Rnd_762x51_T_HK417",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_HK417_micro","ACE_P159_RD54"];
		addItems ["R","B","N","M","G"];
	};
	case "SL": {// Squad Lider
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_M27_IAR_ACOG"];
		addItems ["R","N","M","G"];
	};
	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",5);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_m60"];
		addItems ["R","N","M","E"];
	};
	case "SN": {//sniper
		addMagazines("ACE_20Rnd_762x51_S_HK417",6);
		addMagazines("ACE_20Rnd_762x51_T_HK417",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_HK417_leupold"];
		addItems ["R","N","M"];
	};
	case "GR": {// grenader*
		addMagazines("ACE_30Rnd_556x45_S_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("HandGrenade_East",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_HK416_D14_COMPM3_M320_UP","ACE_ALICE_Backpack"];
		addItems ["R","M","N"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["1Rnd_SMOKE_M203",6]]]
	};
	case "SAP": {//saper*
		addMagazines("ACE_8Rnd_12Ga_Slug",5);
		addMagazines("ACE_8Rnd_12Ga_Buck00",4);
		addMagazines("SmokeShell",3);
		addWeapons ["ACE_M1014_Eotech","ACE_ALICE_Backpack"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",6]]]
	};
	case "PLT": {//Pilot
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["AKS_74_U","ACE_P159_RD54"];
		addItems ["R","M","G"];
	};
	case "CIV_MED": {//vra4
		addMagazines("ACE_40Rnd_762x39_S_AK47",6);
		addMagazines("ACE_40Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["AK_47_S","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","M","G"];
	};
	case "P_SN": {//komandir peh
		addMagazines("ACE_40Rnd_762x39_S_AK47",4);
		addMagazines("ACE_40Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["AKS_GOLD","ACE_P159_RD54"];
		addItems ["R","B","M","G"];
	};
	case "P_SL": {//star peh
		addMagazines("ACE_75Rnd_545x39_S_RPK",6);
		addMagazines("ACE_75Rnd_545x39_T_RPK",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["pzn_RPK74pn_1p29"];
		addItems ["R","M","G"];
	};
	case "P_PUL": {//pulemet4ik
		addMagazines("100Rnd_762x54_pk",6);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["pzn_pkmn"];
		addItems ["R","E","M"];
	};

	case "P_GR": {//grenader
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("1Rnd_HE_GP25",6);
		addMagazines("HandGrenade_East",2);
		addMagazines("SmokeShell",2);
		addWeapons ["pzn_akmsn_gp","ACE_ALICE_Backpack"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",8],["1Rnd_SMOKE_GP25",6]]]
	};
	case "P_SNIP": {//sniper
		addMagazines("5x_22_LR_17_HMR",8);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["huntingrifle"];
		addItems ["R","M"];
	};
	case "P_AT": {//granatomet4ik
		addMagazines("ACE_30Rnd_762x39_S_AK47",6);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addWeapons ["pzn_akmsn","ACE_RMG"];
		addItems ["R","E","M"];
	};
	case "SPN1": {// Sniper
		addMagazines("10Rnd_762x54_SVD",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_SVD_Bipod","ACE_RPG22"];
		addItems ["R","N","M","B"];
	};
	case "SPNL": {// SPN Leader
		addMagazines("ACE_30Rnd_762x39_SD_AK47",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKMS_SD","ACE_P159_RD54"];
		addItems ["R","N","M","B","G"];
	};
	case "P_SN1": {//komandir peh
		addMagazines("ACE_40Rnd_762x39_S_AK47",4);
		addMagazines("ACE_40Rnd_762x39_T_AK47",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_AKM","ACE_P159_RD54"];
		addItems ["R","B","M"];
	};
	case "P_MENT": {//kpp
		addMagazines("30Rnd_545x39_AK",4);
		addWeapons ["AKS_74_U"];
		addItems ["R","B","M"];
	};
};
