if (isDedicated) exitWith {};

private ["_templateVEH"];

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
	["МИ-8МТВ(НАР)", "Mi17_rockets_RU_24"],
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
	["UH-1Y Venom Abrams TUSK", "UH1Y"],
	["AH-1W Cobra", "ACE_AH1W_TOW_W"],
	["A-10", "TU_A10C_6BMB"]
];

_VenTypeSel = (_templateVEH select (_this select 0)) select 1;
_unit = _VenTypeSel createVehicle (_this select 1);
