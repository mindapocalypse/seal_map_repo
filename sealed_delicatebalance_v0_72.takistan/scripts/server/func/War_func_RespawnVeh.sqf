private ["_RIPALLVEHICLES","_RIPALLVEHICLESPARAMS","_deadTimer","_vehicle","_i","_varname","_dir","_pos","_type","_delay"];
if !(isServer) exitWith {};

_RIPALLVEHICLES = [RU1,RU2,RU3,RU4,RU5,RU6,RU7,RU8,RU9,RU10,RU11,RU12,RU13,RU14,RU15,RU16,RU17,RU18,RU19,RU20];
_RIPALLVEHICLESPARAMS = [];
_delay = RIPVEHICLERESPAWNDELAY;

_i = 0;
{
_RIPALLVEHICLESPARAMS set [_i, [(vehicleVarName _x),(typeof _x),(getDir _x),(getPosATL _x)]];
_i = _i + 1;
} forEach _RIPALLVEHICLES;


while {true} do                                            
{
	_i = 0;
    {
	if (!alive _x) then {
			       _deadTimer = _x getVariable "war_deadTimer";         
			       if (isNil "_deadTimer") then                        
 			       {
 			           _x setVariable ["war_deadTimer", _delay];
			       }
 			       else                                                
			       {
			            if (_deadTimer > 0) then                        
			            {
			                _deadTimer = _deadTimer - 30;   
			                _x setVariable ["war_deadTimer", _deadTimer];
 			            }
			            else                                            
			            {
			                	deleteVehicle _x; 
					    	_RIPALLVEHICLES = _RIPALLVEHICLES - [_x];

						_varname = (_RIPALLVEHICLESPARAMS select _i) select 0;
						_type = (_RIPALLVEHICLESPARAMS select _i) select 1;
						_dir = (_RIPALLVEHICLESPARAMS select _i) select 2;
						_pos = (_RIPALLVEHICLESPARAMS select _i) select 3;
						sleep 2;
						_vehicle = _type createvehicle _pos;
						_vehicle setDir _dir;
						_vehicle setPosATL _pos;

						_varinit = switch (_type) do
						{
							case "ACE_Mi17_RU":	{"ClearWeaponCargo this;ClearMagazineCargo this;this addMagazineCargo [""ACE_Rope_M_120"",5];this addMagazineCargo [""ACE_Rope_M5"", 2];this addMagazineCargo [""ACE_Epinephrine"", 10];this addMagazineCargo [""ACE_Medkit"", 10];this addMagazineCargo [""ACE_Morphine"", 10];this addMagazineCargo [""ACE_Bandage"", 10];this addMagazineCargo [""ACE_LargeBandage"", 10];this addMagazineCargo [""PipeBomb"", 2];"};
							case "GAZ_Vodnik_MedEvac":	{"ClearWeaponCargo this;ClearMagazineCargo this;this addMagazineCargo [""ACE_Epinephrine"", 20];this addMagazineCargo [""ACE_Medkit"", 20];this addMagazineCargo [""ACE_Morphine"", 20];this addMagazineCargo [""ACE_Bandage"", 20];this addMagazineCargo [""ACE_LargeBandage"", 20];"};
							case "BTR90":	{"ClearWeaponCargo this;ClearMagazineCargo this;this addMagazineCargo [""ACE_KonkursM_CSWDM"", 4];this addMagazineCargo [""ACE_Rope_TOW_M_5"",1];"};
							case "ACE_BMP2_RU":	{"ClearWeaponCargo this;ClearMagazineCargo this;this addMagazineCargo [""ACE_KonkursM_CSWDM"", 5];this addMagazineCargo [""ACE_Rope_TOW_M_5"",1];"};
							default	{"ClearWeaponCargo this;ClearMagazineCargo this;this addMagazineCargo [""ACE_Rope_TOW_M_5"",1];"};
						};

						_vehicle setVehicleInit format ["%1 = this; this setVehicleVarName ""%1"";%2",_varname,_varinit];
						processInitCommands;

						if ((RIPPILOTCHECK == 1) && (_varname in ["RU18"])) then {[_vehicle] spawn War_HeliDriverCheck;};
	
						_RIPALLVEHICLES = [RU1,RU2,RU3,RU4,RU5,RU6,RU7,RU8,RU9,RU10,RU11,RU12,RU13,RU14,RU15,RU16,RU17,RU18,RU19,RU20]; 		                      
			            };
			       }; 
	}; 
	sleep 0.5; 
	_i = _i + 1;                            
    } forEach _RIPALLVEHICLES;                         
    sleep 30;
};