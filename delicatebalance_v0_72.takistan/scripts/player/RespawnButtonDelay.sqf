private["_ctrl","_stext","_i","_text2"];

if(isDedicated) exitWith {};

disableSerialization;

while {true} do
{
	waitUntil {!(isNull (findDisplay 49))};
	_ctrl = (findDisplay 49) displayCtrl 1010;
	_stext = ctrlText _ctrl;
	_ctrl ctrlEnable false;		
	_i = 30;

	while {!(isNull (findDisplay 49)) && _i > 0} do {

		_text2 = _stext + format ["(%1)",_i]; 
		_ctrl ctrlSetText _text2;
		_i = _i - 1;
		sleep 1;
	};
	_ctrl ctrlSetText _stext;

	if (!(isNull (findDisplay 49))) then
	{
		_ctrl ctrlEnable true;
		waitUntil {isNull (findDisplay 49)};
	};
};