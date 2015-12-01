dialog = createDialog "Functional";

// Выпадающее меню списка бойцов в отряде

Team = units group player;

for [{_x = 0},{_x < count Team},{_x=_x+1}] do
{
	_SelTeamMem = name (Team select _x);
	_string = format ["%1",_SelTeamMem];
	lbAdd [1001, _string];
};

// Выпадающее меню списка создаваемой пустой техники
_templateVEH = [
	["УАЗ", "UAZ_RU"],
	["УАЗ ДШКМ", "tu_dshk_uaz"],
	["УАЗ СПГ9", "tu_spg9_uaz"],
	["Урал", "ACE_Ural_RU_D"],
	["БРДМ-2", "tu_brdm2"],
	["БТР-70", "ACE_BTR70_RU"],
	["БМП-2", "ACE_BMP2_RU"],
	["Т-72Б", "ACE_T72B_RU"],
	["Т-80У", "tsg_t80u_2"],
	["МИ-8МТ", "tu_mi8mt"],
	["МИ-8МТВ(НАР)", "TU_M8_AMTSh_RU"],
	["МИ-24В", "tu_mi24V"],
	["СУ-25СМ", "TU_Su25SM_250_S8"],
	["===========", ""],
	["HMMWV", "pzn_gc_us_HMMWV"],
	["HMMWV M240", "pzn_gc_us_HMMWV_Armored"],
	["HMMWV M2", "pzn_gc_us_HMMWV_M2"],
	["M113", "ACE_M113A3"],
	["M2A2 Bradley", "ACE_M2A2_W"],
	["M1A1 Abrams", "ACE_M1A1_NATO"],
	["M1A1 Abrams TUSK", "ACE_M1A1HC_TUSK"],
	["UH60 BlackHawk", "UH60M_EP1"],
	["UH-1Y Venom", "UH1Y"],
	["AH-1W Cobra", "ACE_AH1W_TOW_W"],
	["A-10", "TU_A10C_6BMB"]
];

{
	lbAdd [1002, _x select 0];
} ForEach _templateVEH;

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

{
	lbAdd [1003, _x select 0];
} ForEach _templates;


for [{_x=0},{_x < 96},{_x=_x+1}] do {
	
	lbAdd [1004, format["%1:%2", floor (_x*0.25), (_x%4)*15]];
};

_convoy_templates = [
				["Заварак - Чак Чак", "red"],
                ["Чаман - Аэропорт", "fiol"]
//                ["Гармсар - Бастам", "blue"],
//                ["Нагара - Крушаб", "green"]
			];
            
_convoy_hard_templates = [
				["легкий", "light"],
                ["средний", "norm"],
                ["тяжелый", "hard"]
			];
            
{
	lbAdd [1010, _x select 0];
} ForEach _convoy_templates;

{
	lbAdd [1011, _x select 0];
} ForEach _convoy_hard_templates;
			
lbAdd [1005, "Нет"];
lbAdd [1005, "Слабая дымка"];
lbAdd [1005, "Слабый"];
lbAdd [1005, "Средне"];
lbAdd [1005, "Сильно"];
lbAdd [1005, "Ежики в тумане"];

lbAdd [1006, "Нет"];
lbAdd [1006, "Возможны осадки"];
lbAdd [1006, "Слабый"];
lbAdd [1006, "Средне"];
lbAdd [1006, "Сильно"];
lbAdd [1006, "Шторм"];

lbAdd [1007, "500 м."];
lbAdd [1007, "1000 м."];
lbAdd [1007, "1500 м."];
lbAdd [1007, "2000 м."];
lbAdd [1007, "2500 м."];
lbAdd [1007, "3000 м."];
lbAdd [1007, "3500 м."];
lbAdd [1007, "4000 м."];
lbAdd [1007, "4500 м."];
lbAdd [1007, "5000 м."];
lbAdd [1007, "5500 м."];
lbAdd [1007, "6000 м."];

lbSetCurSel [1001, 0];
lbSetCurSel [1002, 0];
lbSetCurSel [1003, 0];
lbSetCurSel [1004, 0];
lbSetCurSel [1005, 0];
lbSetCurSel [1006, 0];
lbSetCurSel [1007, (HaloHeight/500)-1];
lbSetCurSel [1010, 0];
lbSetCurSel [1011, 0];