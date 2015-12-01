if (str(currentWeapon player) != str(RIPNEWWEAPON)) then {
		player playMove "AinvPknlMstpSlayWrflDnon_medic";
		player removeWeapon (currentWeapon player); player addWeapon RIPNEWWEAPON; player SelectWeapon RIPNEWWEAPON;
};