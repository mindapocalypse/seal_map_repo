private ["_ammobackpack"];
if (isServer) then { 
_ammobackpack = _this select 0;
_ammobackpack addMagazineCargoGlobal ["ACE_Rope_M5", 5];
_ammobackpack addMagazineCargoGlobal ["ACE_Rope_M_50", 5];
_ammobackpack addMagazineCargoGlobal ["ACE_Rope_M_90", 5];
_ammobackpack addMagazineCargoGlobal ["ACE_Rope_TOW_M_5", 5];
_ammobackpack addWeaponCargoGlobal ["ACE_ParachutePack", 30];
};