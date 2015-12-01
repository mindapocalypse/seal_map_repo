private ["_template"];
	
	//пехотные отделения
	_usmc_inf_squad = 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_TL", 3, false],
			["USMC_Soldier_GL", 3, false],
			["USMC_Soldier_MG", 3, false],
			["USMC_Soldier_LAT", 3, false]
		];
	
	_usmc_fire_section = 
		[
			["USMC_Soldier_TL", 1, false],
			["USMC_Soldier_GL", 1, false],
			["USMC_Soldier_MG", 1, false],
			["USMC_Soldier_LAT", 1, false]
		];

	_usmc_mg_section = 
		[
			["USMC_Soldier_TL", 1, false],
			["USMC_Soldier_MG", 2, false],
			["USMC_Soldier_LAT", 1, false]
		];

	_usmc_at_section = 
		[
			["USMC_Soldier_TL", 1, false],
			["USMC_Soldier_AT", 1, false],
			["USMC_Soldier_MG", 1, false],
			["USMC_Soldier_LAT", 1, false]
		];

	_usmc_ptrk_section = 
		[
			["USMC_Soldier_HAT", 1, false],
			["USMC_Soldier_AT", 1, false],
			["USMC_Soldier_LAT", 1, false]
		];
	
	_usmc_pzrk_section = 
		[
			["USMC_Soldier_AA", 3, false]
		];	
		
	_usmc_spn_section =  
		[
			["FR_Commander", 1, false],
			["FR_Marksman", 1, false],
			["FR_Assault_GL", 1, false],
			["FR_TL", 1, false],
			["FR_Corpsman", 1, false],
			["FR_AC", 1, false],
			["FR_Sapper", 1, false]
		];
		
	//отделения на машинах 
	_usmc_moto_section = 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_LAT", 1, false],
			["USMC_Soldier_MG", 1, false],
			["USMC_Soldier_MG", 1, false],
			["USMC_Soldier_GL", 1, false],
			["USMC_Soldier_AT", 1, false], 
			["HMMWV_MK19", 1, true, [true, true, false, "USMC_Soldier"]],  
			["HMMWV_M2", 1, true, [true, true, false, "USMC_Soldier"]]
		];
	
	_usmc_inf_moto_squad = 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_TL", 3, false],
			["USMC_Soldier_GL", 3, false],
			["USMC_Soldier_MG", 3, false],
			["USMC_Soldier_LAT", 3, false],
			["MTVR", 1, true, [true, false, false, "USMC_Soldier"]]
		];
	
	//механизированные отделения
	_usmc_inf_stryker_m2_squad	= 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_TL", 2, false],
			["USMC_Soldier_GL", 3, false],
			["USMC_Soldier_MG", 2, false],
			["ACE_Stryker_ICV_M2", 1, true, [true, true, false, "USMC_Soldier_Crew"]]
		];
	
	_usmc_inf_stryker_mk19_squad	= 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_TL", 2, false],
			["USMC_Soldier_GL", 2, false],
			["USMC_Soldier_MG", 2, false],
			["USMC_Soldier_LAT", 2, false],
			["ACE_Stryker_ICV_MK19", 1, true, [true, true, false, "USMC_Soldier_Crew"]]
		];


	_usmc_inf_m2a3_squad	= 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_TL", 1, false],
			["USMC_Soldier_GL", 2, false],
			["USMC_Soldier_MG", 1, false],
			["USMC_Soldier_LAT", 1, false],
			["ACE_M2A3_W", 1, true, [true, true, true, "USMC_Soldier_Crew"]]
		];
	
	_usmc_inf_lav_squad	= 
		[
			["USMC_Soldier_SL", 1, false],
			["USMC_Soldier_TL", 1, false],
			["USMC_Soldier_GL", 2, false],
			["USMC_Soldier_MG", 1, false],
			["USMC_Soldier_LAT", 1, false],
			["LAV25", 1, true, [true, true, true, "USMC_Soldier_Crew"]]
		];

	//бронетехника
	_usmc_m1a1	= 
		[
			["ACE_M1A1_NATO", 1, true, [true, true, true, "USMC_Soldier_Crew"]]
		];
	
	_usmc_m1a1tusk	= 
		[
			["ACE_M1A1HC_TUSK", 1, true, [true, true, true, "USMC_Soldier_Crew"]]
		]; 
		
	_usmc_m1a2tusk	= 
		[
			["ACE_M1A1HC_TUSK_CSAMM", 1, true, [true, true, true, "USMC_Soldier_Crew"]]
		];
	
	_usmc_cobra	= 
		[
			["ACE_AH1W", 1, true, [true, true, false, "USMC_Soldier_Pilot"]]
		];
  
    _templates = [
					["Пехотное отделение(13 чел.)", _usmc_inf_squad],
					["Стрелковая секция(4 чел.)", _usmc_fire_section],
					["Пулеметная секция(4 чел.)", _usmc_mg_section],
					["АТ секция(4 чел.)", _usmc_at_section],
					["ПТРК секция(3 чел.)", _usmc_ptrk_section],
					["ПЗРК секция(3 чел.)", _usmc_pzrk_section],
					["Секция разведки(7 чел.)", _usmc_spn_section],
					["Моторизированная секция(2 хаммера + 6 чел)", _usmc_moto_section],
					["Моторизированное отделение(MTVR + 13 чел)", _usmc_inf_moto_squad],
					["Отделение на Страйкере M2(9 чел.)", _usmc_inf_stryker_m2_squad],
					["Отделение на Страйкере MК19(9 чел.)", _usmc_inf_stryker_mk19_squad],
					["Отделение на Бредли M2A3(6 чел.)", _usmc_inf_m2a3_squad],
					["Отделение на LAV25A2(6 чел.)", _usmc_inf_lav_squad],
					["M1A1", _usmc_m1a1],
					["M1A1 TUSK", _usmc_m1a1tusk],
					["M1A2 TUSK", _usmc_m1a2tusk],
					["AH1W Super Cobra", _usmc_cobra]
				];

			
_template = (_templates select (_this select 0)) select 1;
_position = _this select 1;
_template_name = (_templates select (_this select 0)) select 0;

_group = createGroup west;
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