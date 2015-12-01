private ["_ammoexp"];
if (isServer) then { 
_ammoexp = _this select 0;
_ammoexp addMagazineCargoGlobal ["ACE_RDGM", 200];
_ammoexp addMagazineCargoGlobal ["HandGrenade_East", 100];
_ammoexp addMagazineCargoGlobal ["PipeBomb", 30];
_ammoexp addMagazineCargoGlobal ["Mine", 50];
_ammoexp addMagazineCargoGlobal ["ACE_MON50_M", 20];
_ammoexp addMagazineCargoGlobal ["ACE_DM31_M", 50];
_ammoexp addMagazineCargoGlobal ["ACE_PMN2_M", 50];
};