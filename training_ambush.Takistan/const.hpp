//������ ���� �� ������� ������ �������� �� ����� �������� ������
defZoneSize = 150;
//������� ���� � ������� ����� ����������� ���� � ��������� ���� ��������
hintzonesize = 140;
//��������� ���� REDFOR ����� ����� defZoneSize*zoneMultREDFOR
zoneMultREDFOR = 1;
//��������� ���� BLUEFOR ����� ����� defZoneSize*zoneMultBLUEFOR
zoneMultBLUEFOR = 1;
//������� �������:
//"west" - USMC, US Army, CDF, Rangers and etc.
//"east" - MSV, TA, CDKZ and etc.
//"resistance" - NAPA, People of Takistan, PMC, UN and etc
//"civilian"
sideREDFOR = "east";
sideBLUEFOR = "west";
//����� ����� ������� ������� ��� ������� ������� � ��������� ���� �� ����� �������������. �������� 2 ���������� - _side - ����� ������� �������� � ����, � _object - ������, ������� �����/�� ����� �����������. ������: "_side == west" - �� ������ ����� ����� �������� ��������, "_object isKindOf 'tank'" - ����� �������� �� ������
vehHolderExludeCondition = "false";
//����� ������� ����� ����������� � ��������� � ������/���������
//���������� ��������: STR_ru_call, STR_ruspn_call, STR_usmc_call, STR_usarmy_call, STR_75th_call, STR_napa_call, STR_ta_call, STR_cdkz_call, STR_pot_call, STR_CDF_call
//����� �������� ���� � stringtable.xml
titleREDFOR = $STR_ru_call;
titleBLUEFOR = $STR_usarmy_call;

//���� � ����� �� ������ �������� ��������� ������������ � _domiMult � ��������������� ������� ��������� ������������ ��������� ������ ������ ����������
domiMult = 1000;
//����������� ���������� ������ �������. ���� ������� ������ n*(��������� ����) ������� ��������
RFRetreat = 0;
//����������� ���������� ������ �����. ���� ������� ������ n*(��������� ����) ����� ��������
BFRetreat = 0;

//��������� ������
viewDistance = 3500;

//0 - ��� ��������� ����� ��������� ������� �� ������� ���� �� �����
//1 - ��� ��������� ����� ��������� ������� ������� ���� �� �����
synchronizedRespawn = 0;