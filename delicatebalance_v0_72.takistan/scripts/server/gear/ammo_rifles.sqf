private ["_ammorifles"];
if (isServer) then { 
_ammorifles = _this select 0;

//combat rifles
_ammorifles addMagazineCargoGlobal ["1Rnd_HE_GP25", 250];
_ammorifles addMagazineCargoGlobal ["1Rnd_SMOKE_GP25", 50];
_ammorifles addMagazineCargoGlobal ["30Rnd_545x39_AK", 300];
_ammorifles addMagazineCargoGlobal ["ACE_30Rnd_545x39_T_AK", 100];
_ammorifles addMagazineCargoGlobal ["30Rnd_545x39_AKSD", 100];
_ammorifles addMagazineCargoGlobal ["30Rnd_762x39_AK47", 300];
_ammorifles addMagazineCargoGlobal ["ACE_30Rnd_762x39_T_AK47", 100];
_ammorifles addMagazineCargoGlobal ["20Rnd_9x39_SP5_VSS", 100];
_ammorifles addMagazineCargoGlobal ["ACE_20Rnd_9x39_B_SP6_OC14", 200];
//sniper rifles
_ammorifles addMagazineCargoGlobal ["5Rnd_127x108_KSVK", 50];
_ammorifles addMagazineCargoGlobal ["ACE_5Rnd_127x108_T_KSVK", 50];
_ammorifles addMagazineCargoGlobal ["10Rnd_762x54_SVD", 50];
_ammorifles addMagazineCargoGlobal ["ACE_10Rnd_762x54_T_SVD", 50];
_ammorifles addMagazineCargoGlobal ["5Rnd_762x51_M24", 100];
//machineguns
_ammorifles addMagazineCargoGlobal ["100Rnd_762x54_PK", 50];
_ammorifles addMagazineCargoGlobal ["75Rnd_545x39_RPK", 50];
_ammorifles addMagazineCargoGlobal ["ACE_75Rnd_545x39_T_RPK", 50];
//PM
_ammorifles addMagazineCargoGlobal ["ACE_20Rnd_9x18_APS", 25];
};