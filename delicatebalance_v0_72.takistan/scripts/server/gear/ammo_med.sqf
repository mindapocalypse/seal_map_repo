private ["_ammomed"];
if !(isDedicated) then {
	while {true} do { 
				_ammomed = _this select 0;
				clearWeaponCargo _ammomed;
				clearMagazineCargo _ammomed;
				_ammomed addMagazineCargo ["ACE_Bandage", 30];
				_ammomed addMagazineCargo ["ACE_Epinephrine", 30];
				_ammomed addMagazineCargo ["ACE_Medkit", 20];
				_ammomed addMagazineCargo ["ACE_Morphine", 30];
				_ammomed addMagazineCargo ["ACE_LargeBandage", 30];
				_ammomed addMagazineCargo ["ACE_Tourniquet", 20];
				if (str(player) in ["m4","s4","a4","g4"]) then {
									_ammomed addWeaponCargo ["ACE_Rucksack_MOLLE_Green_Medic",1];

				};
				sleep 1800;
	};
};