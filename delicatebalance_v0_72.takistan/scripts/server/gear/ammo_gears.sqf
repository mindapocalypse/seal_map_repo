private ["_ammogears"];
if (isServer) then { 
_ammogears = _this select 0;
_ammogears addMagazineCargoGlobal ["ACE_Battery_Rangefinder", 5];
_ammogears addWeaponCargoGlobal ["ACE_GlassesTactical", 5];
_ammogears addWeaponCargoGlobal ["ACE_GlassesGasMask_US", 5];
_ammogears addWeaponCargoGlobal ["ACE_GlassesLHD_glasses", 5];
if (RIPWITHACRE == 1) then {_ammogears addWeaponCargoGlobal ["ACE_P159_RD99", 10];};
if (RIPWITHACRE > 1) then {_ammogears addWeaponCargoGlobal ["ACE_P159_RD54", 10];};
};