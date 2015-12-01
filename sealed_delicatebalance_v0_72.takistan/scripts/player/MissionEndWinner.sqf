private ["_teamscore","_message"];

_teamscore = Server getVariable "RIPTEAMSCORE";

if (_teamscore >= 0) then {_message = localize "STR_RIP_HINT_NOOBWIN"};
if (_teamscore > 14) then {_message = localize "STR_RIP_HINT_GOODWIN"};
if (_teamscore > 24) then {_message = localize "STR_RIP_HINT_EXPWIN"};
if (_teamscore > 34) then {_message = localize "STR_RIP_HINT_ELITEWIN"};
if (_teamscore > 44) then {_message = localize "STR_RIP_HINT_ELITEWIN"};
if (_teamscore < -4) then {_message = localize "STR_RIP_HINT_LOOSERWIN"};
if (_teamscore < -14) then {_message = localize "STR_RIP_HINT_BASTARDWIN"};
if (_teamscore < -29) then {_message = localize "STR_RIP_HINT_ASSHOLEDWIN"};

titleCut ["", "BLACK FADED",16];
playSound "Victory";
["<t size='1.0' color='#ff0000'>"+_message+"</t>",0,(safezoneH)/2,6,2] call BIS_fnc_dynamicText;
endMission "END1";
