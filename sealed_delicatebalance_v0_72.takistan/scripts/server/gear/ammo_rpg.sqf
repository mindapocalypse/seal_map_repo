private ["_ammorpg"];
if (isServer) then { 
_ammorpg = _this select 0;

_ammorpg addMagazineCargoGlobal ["ACE_PG7VL_PGO7", 30];
_ammorpg addMagazineCargoGlobal ["ACE_PG7VR_PGO7", 30];
_ammorpg addMagazineCargoGlobal ["AT13", 30];
_ammorpg addMagazineCargoGlobal ["ACE_RPG29_PG29", 30];
_ammorpg addMagazineCargoGlobal ["ACE_RPG29_TBG29", 30];
_ammorpg addWeaponCargoGlobal ["Igla", 10];
_ammorpg addMagazineCargoGlobal ["Igla", 30];
_ammorpg addWeaponCargoGlobal ["ACE_RPG27", 50];
_ammorpg addWeaponCargoGlobal ["RPG18", 50];
_ammorpg addWeaponCargoGlobal ["ACE_RPOM", 20];
};