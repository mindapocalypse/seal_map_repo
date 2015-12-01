private ["_template"];
	
	//пехотные отделения
	_usmc_inf_squad = 
		[
			["RU_Soldier_SL", 1, false],
			["RU_Commander", 3, false],
			["RU_Soldier_AT", 3, false],
			["RU_Soldier_Marksman", 3, false],
			["RU_Soldier_MG", 3, false]
		];
	
	_usmc_fire_section = 
		[
			["RU_Soldier_SL", 1, false],
			["RU_Soldier_AT", 1, false],
			["RU_Soldier_Marksman", 1, false],
			["RU_Soldier_MG", 1, false]
		];

	_usmc_mg_section = 
		[
			["RU_Soldier_SL", 1, false],
			["RU_Soldier_MG", 3, false]
		];

	_usmc_at_section = 
		[
			["RU_Soldier_SL", 1, false],
			["RU_Soldier_AT", 2, false],
			["RU_Soldier", 1, false]
		];

	_usmc_ptrk_section = 
		[
			["RU_Soldier_SL", 1, false],
			["RU_Soldier_HAT", 1, false],
			["RU_Soldier", 1, false]
		];
	
	_usmc_pzrk_section = 
		[
			["RU_Soldier_AA", 3, false]
		];	
		
	_usmc_spn_section =  
		[
			["MVD_Soldier_TL", 1, false],
			["MVD_Soldier_AT", 1, false],
			["MVD_Soldier_Marksman", 1, false],
			["MVD_Soldier_MG", 1, false],
			["ACE_MVD_Soldier_RPOM", 1, false],
			["MVD_Soldier", 2, false]
		];
		
	//бронетехника
	_usmc_m1a1	= 
		[
			["ACE_T90A", 1, true, [true, true, true, "RU_Soldier_Crew"]]
		];
	
	_usmc_m1a1tusk	= 
		[
			["ACE_BMP2_RU", 1, true, [true, true, true, "RU_Soldier_Crew"]]
		]; 
		
	_usmc_m1a2tusk	= 
		[
			["ACE_BTR70_RU", 1, true, [true, true, true, "RU_Soldier_Crew"]]
		];
	
	_usmc_cobra	= 
		[
			["TU_Mi24_V_VDV", 1, true, [true, true, false, "RU_Soldier_Pilot"]]
		];
  
    _templates = [
					["Пехотное отделение(13 чел.)", _usmc_inf_squad],
					["Стрелковая секция(4 чел.)", _usmc_fire_section],
					["Пулеметная секция(4 чел.)", _usmc_mg_section],
					["АТ секция(4 чел.)", _usmc_at_section],
					["ПТРК секция(3 чел.)", _usmc_ptrk_section],
					["ПЗРК секция(3 чел.)", _usmc_pzrk_section],
					["Спецназ МВД (7 чел.)", _usmc_spn_section],
					["Т-90А", _usmc_m1a1],
					["БМП-2", _usmc_m1a1tusk],
					["БТР-70", _usmc_m1a2tusk],
					["МИ-24", _usmc_cobra]
				];

			
_template = (_templates select (_this select 0)) select 1;
_position = _this select 1;
_template_name = (_templates select (_this select 0)) select 0;

_group = createGroup east;
{
	_unit_type = _x select 0;
	_unit_count = _x select 1;
	_unit_is_vechicle = _x select 2;
	
	if(!_unit_is_vechicle) then {
		for [{_x = 1}, {_x <= _unit_count}, {_x = _x + 1}] do {
			_unit = _group createUnit [_unit_type, _position, [], 20, "FORM"];
		} 
	} else {
		_veh_info = _x select 3;
		
		_veh_crew_type = _veh_info select 3;
		
		_has_driver = _veh_info select 0;
		_has_gunner = _veh_info select 1;
		_has_commander = _veh_info select 2;
		
		for [{_x = 1}, {_x <= _unit_count}, {_x = _x + 1}] do {
			_vehicle = _unit_type createVehicle _position;
			
			if(_has_driver) then {
				_unit = _group createUnit [_veh_crew_type, _position, [], 20, "FORM"];
				_unit moveInDriver _vehicle;
			};
			
			if(_has_gunner) then {
				_unit = _group createUnit [_veh_crew_type, _position, [], 20, "FORM"];
				_unit moveInGunner _vehicle;
			};
			
			if(_has_commander) then {
				_unit = _group createUnit [_veh_crew_type, _position, [], 20, "FORM"];
				_unit moveInCommander _vehicle;
			};
		} 	
	}
} forEach _template;

blueCommander hcSetGroup [_group];
hint format["Группа: %1\n\n Создана", _template_name];