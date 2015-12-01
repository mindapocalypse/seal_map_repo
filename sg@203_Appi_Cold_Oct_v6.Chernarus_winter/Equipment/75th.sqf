#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
// HQ
	case "OFF": {
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("30Rnd_556x45_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M9", "M16A2", "ACE_PRC119"];
		addItems ["R","L","B","D","M","MT","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M9", "ACE_m16a2_scope"];
		addItems ["R","L","B","D","M","MT","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag", 1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M9", "M16A2", "ACE_PRC119"];
		addItems ["R","L","M"];
	};
// Rifle squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell", 2);
		addWeapons ["M16A2", "ACE_PRC119"];
		addItems ["R","L","B","M","MT","G"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_m16a2_scope"];
		addItems ["R","L","B","M"];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",3);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249"];
		addItems ["L","E"];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("SmokeShell",2);
		addMagazines("ace_1Rnd_HE_M203",4);
		addMagazines("1Rnd_Smoke_M203",2);
		addWeapons ["M16A2GL","ACE_ALICE_Backpack"];
		addItems ["L"];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["ace_1Rnd_HE_M203", 10], ["1Rnd_Smoke_M203", 6]]];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M16A2", "M136"];
		addItems ["L"];
	};
	case "RF": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M16A2"];
		addItems ["L"];
	};
	case "DM" : {// Marksman
		addMagazines("20rnd_762x51_dmr",8);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["dmr", "M9"];
		addItems ["R","L"];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_LargeBandage",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2", "M9", "ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["L"];
		//_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
// Weapon sqaud
	case "MG" : {// Machinegunner
		addMagazines("100Rnd_762x51_M240", 2);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West", 2);
		addMagazines("SmokeShellGreen", 2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M9", "Mk_48_DES_EP1"];
		addItems ["R","L","E","M"];
	};
	case "AG" : { // Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A4","ACE_ALICE_Backpack"];
		addItems ["R","L","E","B"];
		_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x51_M240", 2], ["ACE_Claymore_M", 2]]];
	};
//sniper team
	case "SN2": {// Sniper
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("SmokeShell",2);
		addMagazines("handgrenade_west",2);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["M14_EP1","Colt1911"];
		addItems ["R","L","B","M","G"];
	};
	case "SN": {// Sniper
		addMagazines("ACE_20Rnd_762x51_B_M14",5);
		addMagazines("SmokeShell",3);
		addMagazines("HandGrenade_West",3);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["M14_EP1","Colt1911"];
		addItems ["R","L","M","G"];
	};

	// Assist. Sniper SF
	case "ASN" : {
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("SmokeShell",1);
		addMagazines("15rnd_9x19_m9",3);
		addWeapons ["MP5A5","m9"];
		addItems ["R"];
	};

// ASSAULT SECTION Squad
	case "ASG" : {// ASSAULT SECTION GUNNER
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("MAAWS_HEAT",1);
		addMagazines("ACE_MAAWS_HE",1);
		addMagazines("ACE_ANM14",2);
		addWeapons ["m16a4","MAAWS","NVGoggles"];
		addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "ASAG" : {// ASSAULT SECTION assistant GUNNER
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_C4_M",1);
		addMagazines("ACE_MAAWS_HE",1);
		addMagazines("ACE_Battery_Rangefinder",1);
		addWeapons ["m16a4","ACE_ALICE_Backpack","ACE_YardAge450","NVGoggles"];
		addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["MAAWS_HEDP",1],["MAAWS_HEAT",1]]];
	};

//mortar
	case "MOG" : {//Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["M16A4","ACE_M224Proxy","Binocular","NVGoggles","ace_arty_rangeTable_m224_legacy"];
		addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "MOAG" : {//Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4","ACE_M224TripodProxy","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
	};
	case "MOAB" : {//Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4","ACE_ALICE_Backpack","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",5]]];
	};
//crew
	case "CRW": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addWeapons ["ACE_M4"];
		addItems ["R"];
	};
	case "LPL": { //Pilot
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M9"];
		addItems ["R","M","G"];
	};
	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["R","M","G"];
	};
};
