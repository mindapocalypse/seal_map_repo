#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","ACE_ANPRC77"];
		addItems ["R","B","M","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M136","M9"];
		addItems ["R","B","M","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1","M9","ACE_ANPRC77"];
		addItems ["R","B","M","G"];
	};
	case "FO": { // Forward observer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1","M9"];
		addItems ["R","B","M","G"];
	};
//Rifle squad
	case "SL": { // Squad Lider
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","ACE_ANPRC77"];
		addItems ["R","B","M","G"];
	};

	case "TL": { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9"];
		addItems ["R","B","M"];
	};

	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2GL","M9","ACE_ALICE_Backpack"];
		addItems ["R"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8]]];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M249","M9"];
		addItems ["R","E"];
	};
	
	case "AR1" : { // Automatic Rifleman
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M240","M9"];
		addItems ["R","E"];
	};
	case "AAR1" : { // Automatic Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","ACE_ALICE_Backpack"];
		addItems ["R","E","M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2],["30Rnd_556x45_Stanag",2]]];
	};
	case "AAR2" : { // Automatic Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","ACE_ALICE_Backpack"];
		addItems ["R","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",4]]];
	};

	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","M136"];
		addItems ["R"];
	};

	case "AT": { //AT Operator
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("Dragon_EP1",1); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","M47Launcher_EP1"];
		addItems ["R","M"];
	};

	case "HAT" : { //Javelin Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1","M9","Javelin","ACE_Javelin_CLU"];
		addItems ["R","M"];
	};
	case "AHAT" : { //Assistant Javelin Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1","M9","ACE_Javelin_Direct"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_weapononback","ACE_Javelin_Direct"];
	};
	case "DM" : { //Designated marksman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_m16a2_scope","M9"];
		addItems ["R","M"];
	};
//weapon squad
	case "MG": { // Machinegunner
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["m240_scoped_EP1","M9"];
		addItems ["R","M","E"];
	};

	case "AG": { //Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M16A4_Iron","M9","ACE_ALICE_Backpack"];
		addItems ["R","B","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
	};
	case "AB": { //Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M16A4_Iron","M9","ACE_ALICE_Backpack"];
		addItems ["R","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
	};

//sniper team
	case "SN": { // Sniper
		addMagazines("5Rnd_762x51_M24",4);
		addMagazines("SmokeShell",2); 
		addMagazines("7Rnd_45ACP_1911",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M24","ACE_ALICE_Backpack","Colt1911"];
		addItems ["R","M","B"]; 
		_unit setVariable ["ACE_RuckMagContents", [["5Rnd_762x51_M24", 10]]];
	};
	case "SN2": { // Sniper
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M110","M9"];
		addItems ["R","M","G"];
	};

	// Assist. Sniper SF
	case "ASN" : {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["TU_XM177_M203","ACE_SpottingScope","ACE_ANPRC77","Colt1911"];
		addItems ["R","M","K","B","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_CLAYMORE_M",2],["5Rnd_762x51_M24",4],["1Rnd_HE_M203",4]]];
	};

//mortar
	case "MOG" : { //Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4_AIM","ACE_ANPRC77","M9","ace_arty_rangeTable_tampella"];
		addItems ["R","B","M","G"];
	};
	case "MOAG" : { //Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4_AIM","M9","ace_arty_rangeTable_tampella"];
		addItems ["R","B","M"];

	};
	case "MOAB" : { //Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4_AIM","M9","ACE_ALICE_Backpack"];
		addItems ["R","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",10]]];
	};

//Medevac team
	case "MED_SL": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1","M9","ACE_ALICE_Backpack"];
		addItems ["R","B","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",20],["ACE_Morphine",20],["ACE_Epinephrine",20],["ACE_Medkit",20]]]
	};

	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4); 
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2","M9","ACE_ALICE_Backpack"];
		addItems ["R","M"];
	};

//crew
	case "CRW": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["TU_XM177","M9"];
		addItems ["R","M","G"];
	};
	case "LPL": { //Pilot
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M9"];
		addItems ["R","N","M","G"];
	};
	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["R","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
