private ["_teamscore","_count1","_count2","_count3","_count4"];
if !(isServer) exitWith {};
if ((Server getVariable "RIPMISSIONSUCCEED") == 0) exitWith {};

_teamscore = Server getVariable "RIPTEAMSCORE";

if (_teamscore >= -5) then {_count1 = 50;_count2 = 20;_count3 = 10;_count4 = 5;};
if (_teamscore < -5) then {_count1 = 40;_count2 = 15;_count3 = 8;_count4 = 3;};
if (_teamscore < -15) then {_count1 = 30;_count2 = 10;_count3 = 5;_count4 = 2;};
if (_teamscore < -30) then {_count1 = 20;_count2 = 5;_count3 = 3;_count4 = 1;};

ammobox2 addMagazineCargoGlobal ["1Rnd_HE_GP25", _count1];
ammobox2 addMagazineCargoGlobal ["1Rnd_SMOKE_GP25", _count2];
ammobox2 addMagazineCargoGlobal ["30Rnd_545x39_AK", _count1];
ammobox2 addMagazineCargoGlobal ["ACE_30Rnd_545x39_T_AK", _count2];
ammobox2 addMagazineCargoGlobal ["30Rnd_545x39_AKSD", _count2];
ammobox2 addMagazineCargoGlobal ["30Rnd_762x39_AK47", _count2];
ammobox2 addMagazineCargoGlobal ["ACE_30Rnd_762x39_T_AK47", _count2];
ammobox2 addMagazineCargoGlobal ["20Rnd_9x39_SP5_VSS", _count2];
ammobox2 addMagazineCargoGlobal ["ACE_20Rnd_9x39_B_SP6_OC14", _count1];
//sniper rifles
ammobox2 addMagazineCargoGlobal ["5Rnd_127x108_KSVK", _count3];
ammobox2 addMagazineCargoGlobal ["ACE_5Rnd_127x108_T_KSVK", _count3];
ammobox2 addMagazineCargoGlobal ["10Rnd_762x54_SVD", _count2];
ammobox2 addMagazineCargoGlobal ["ACE_10Rnd_762x54_T_SVD", _count2];
ammobox2 addMagazineCargoGlobal ["5Rnd_762x51_M24", _count2];
//machineguns
ammobox2 addMagazineCargoGlobal ["100Rnd_762x54_PK", _count4];
ammobox2 addMagazineCargoGlobal ["75Rnd_545x39_RPK", _count3];
ammobox2 addMagazineCargoGlobal ["ACE_75Rnd_545x39_T_RPK", _count3];
//pm
ammobox2 addMagazineCargoGlobal ["ACE_20Rnd_9x18_APS", _count2];
//explosive
ammobox4 addMagazineCargoGlobal ["ACE_RDGM", _count2];
ammobox4 addMagazineCargoGlobal ["HandGrenade_East", _count2];
ammobox4 addMagazineCargoGlobal ["PipeBomb", _count3];
ammobox4 addMagazineCargoGlobal ["Mine", _count4];
ammobox4 addMagazineCargoGlobal ["ACE_PMN2_M", _count3];
ammobox4 addMagazineCargoGlobal ["ACE_MON50_M", _count4];

if (_teamscore > 0) then {_count1 = 10;_count2 = 5;};
if (_teamscore < -5) then {_count1 = 8;_count2 = 3;};
if (_teamscore < -15) then {_count1 = 5;_count2 = 2;};
if (_teamscore < -30) then {_count1 = 3;_count2 = 1;};

ammobox3 addMagazineCargoGlobal ["ACE_PG7VL_PGO7", _count1];
ammobox3 addMagazineCargoGlobal ["ACE_PG7VR_PGO7", _count1];
ammobox3 addMagazineCargoGlobal ["AT13", _count1];
ammobox3 addMagazineCargoGlobal ["ACE_RPG29_PG29", _count1];
ammobox3 addMagazineCargoGlobal ["ACE_RPG29_TBG29", _count1];
ammobox3 addMagazineCargoGlobal ["Igla", _count1];
ammobox3 addWeaponCargoGlobal ["ACE_RPG27", _count1];
ammobox3 addWeaponCargoGlobal ["RPG18", _count1];
ammobox3 addWeaponCargoGlobal ["ACE_RPOM", _count2];