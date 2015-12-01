private ["_ammobackpack"];
if !(isDedicated) then { 
				_ammobackpack = _this select 0;
				_ammobackpack addWeaponCargo ["ACE_Rucksack_RD54", 5];
				_ammobackpack addWeaponCargo ["ACE_ALICE_Backpack", 5];
				_ammobackpack addWeaponCargo ["ACE_ParachutePack", 10];
				if (RIPWITHACRE == 1) then {
						if (str(Player) in ["rus1","rus6","rus7","rus18","rus23","rus26","rus29","rus30","rus31"]) then {_ammobackpack addWeaponCargo ["ACE_P159_RD99", 1];};
				};
				if (RIPWITHACRE > 1) then {
						if (str(Player) in ["rus1","rus6","rus7","rus18","rus23","rus26","rus29","rus30","rus31"]) then {_ammobackpack addWeaponCargo ["ACE_P159_RD54", 1];};
				};
};