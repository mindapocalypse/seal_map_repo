#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//������������ ������
	case "OFF" : { //�������� ������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_P159_RD54","Makarov"];
		addItems ["R","B","M","G"];
	};
//���
	case "SL" : { //�����
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["AK_74_GL","ACE_P159_RD54"];
		addItems ["R","B","M","G"];
	};
	case "SL_GP" : { //����� � ��
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",6);
		addWeapons ["ACE_AK74M_GL","ACE_P159_RD54","ACE_SSVZ"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "TL" : { //������� �������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_pso"];
		addItems ["R","B","M","G"];
	};
	case "MG" : { //����������
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["R","E"];
	};
	
	case "RF" : { //�������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["AK_74_GL"];
		addItems ["R"];
	};
	
	case "RF1" : { //�������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["AK_74_GL","ACE_RPG22"];
		addItems ["R"];
	};
	
	case "SAP" : { // �����
		addMagazines("30Rnd_545x39_AK",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_ALICE_Backpack"];
		addItems ["R"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_POMZ_M",4],["PipeBomb",2]]]
	};
	case "SAP1" : { // ������� �����
		addMagazines("30Rnd_545x39_AK",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74"];
		addItems ["R","M"];
	};
	
	case "SAP_CO" : { // ��� �����
		addMagazines("30Rnd_545x39_AK",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_P159_RD54"];
		addItems ["R","M","G"];
	};
	
	case "AMG" : { //�������� �����������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_ALICE_Backpack"];
		addItems ["R","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "AR" : { //���������� ���
		addMagazines("ACE_75Rnd_545x39_T_RPK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_RPK74M_1P29"];
		addItems ["R","N","E"];
	};
	case "AT" : { //1� ����� ������� ���
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_TBG7V",2);
		addWeapons ["AK_74","RPG7V"];
		addItems ["R","E"];
	};
	case "AAT" : { //2� ����� ������� ���
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","tu_6sh11_new"];
		addItems ["R","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PG7VL",1],["PG7VR",1] ]];
	};
	case "GL" : { //������� � ��
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["AK_74_GL"];
		addItems ["R"];
	};
	case "GLAT" : { //������� � �� ���27
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AK74M_GL","ACE_RPG22"];
		addItems ["R","N"];
	};
	case "LAT" : { // ������� ���-27
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_RPG22"];
		addItems ["R","N"];
	};
	case "OBR" : { // �������� ���
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_MX2A"];
		addItems ["R","N"];
	};
	case "RADIO" : { // ���������������
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_P159_RD54"];
		addItems ["R","N"];
	};
	case "R_SN" : { //��������� - �������
		addMagazines("10Rnd_762x54_SVD",4);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["SVD"];
		addItems ["R","M","B"];
	};
//������ ��������
	case "MOG" : { //������� ��������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AK_74","ACE_P159_RD54","ace_arty_rangeTable_2b14_legacy"];
		addItems ["R","B","M","MT","G"];
	};
	case "MOAG" : { //��������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AK_74"];
		addItems ["R","B","E"];
	};
	case "MOAB" : { //����� �������
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_2B14HE_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AK_74","ACE_ALICE_Backpack"];
		addItems ["R","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]]];
	};
//���������� ���������
	case "MR" : { //������� ���
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Pomz_M",2);
		addWeapons ["SVD","ACE_SSVZ"];
		addItems ["R","N","B"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M"];
	};
	case "SN" : { //�������
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_SVD_Bipod","ACE_SSVZ","ACE_ALICE_Backpack"];
		addItems ["R","N","B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M"];
	};
	case "HSN" : { //������� ����
		addMagazines("5Rnd_127x108_KSVK",5);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",1);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_SSVZ","Binocular_Vector","ACE_ALICE_Backpack"];
		addItems ["R","N","B","M","G","K"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10]]];
	};
	case "ASN" : { //�������-�����������
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["SVD_des_EP1","ACE_SSVZ","Binocular_Vector","ACE_P159_RD54"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]]];
	};
//��������� ����� � ��������� �������
	case "MED_SL" : { //�������� ��������� - ���������� ����������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["AK_74","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Tourniquet",6],["ACE_Medkit",6]]]
	};
	case "MED" : { //�������
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5]]]
	};
	case "MED_CRW" : { //�������
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Splint",3],["ACE_IV",3],["ACE_Plasma",3]]]
	};
//������
	case "CCRW" : { //�������� �������
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK105","Makarov"];
		addItems ["R","M","G"];
	};
	case "CRW" : { //������
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M","G"];
	};
	case "PL" : { //�����
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AK_107_kobra","Makarov"];
		addItems ["R","M","G"];
	};
// �����������
	case "AA": { //�������� ����
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("HandGrenade_East",2);
		addMagazines("Igla",1);
		addWeapons ["AKS_74_U","Igla"];
		addItems ["R","N","M","E"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
