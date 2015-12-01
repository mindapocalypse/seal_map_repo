//by RIP
if (isDedicated) exitWith {};
removeAllWeapons Player;
removeBackpack Player;
removeAllItems Player;
{Player addMagazine _x} forEach ["ACE_LargeBandage","ACE_Morphine","ACE_Epinephrine"];
{Player addWeapon _x} forEach ["ItemGPS","ItemMap","ItemWatch","ItemCompass","NVGoggles","ACE_Earplugs","ACE_GlassesGasMask_US","ItemRadio"];

if ((RIPWITHACRE == 1) && (str(Player) in ["rus1","rus6","rus7","rus18","rus23","rus26","rus29","rus30","rus31"])) then {Player addWeapon "ACRE_PRC148_UHF";};

if (str(Player) in ["rus1","rus18","rus23","rus26","rus29","rus30","rus31"]) then {Player addWeapon "ACE_APS";};
if (str(Player) in ["rus14"]) then {Player addWeapon "MetisLauncher";};
if (str(Player) in ["rus1","rus7","rus23","rus26"]) then {Player addWeapon "Binocular"};
if (str(Player) in ["rus21"]) then {Player addMagazine "ACE_Battery_Rangefinder";{Player addWeapon _x} forEach ["Binocular_Vector","ACE_Kestrel4500"];};
if (str(Player) in ["rus18"]) then {Player addMagazine "ACE_Battery_Rangefinder";Player addWeapon "Binocular_Vector";};
