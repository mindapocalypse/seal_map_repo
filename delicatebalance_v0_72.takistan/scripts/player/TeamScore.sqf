private ["_teamscore","_message"];

_teamscore = Server getVariable "RIPTEAMSCORE";

if (_teamscore >= -4) then {_message = localize "STR_RIP_HINT_NOOBTEAM"};
if (_teamscore > 14) then {_message = localize "STR_RIP_HINT_GOODFIGHTERS"};
if (_teamscore > 24) then {_message = localize "STR_RIP_HINT_EXPFIGHTERS"};
if (_teamscore > 34) then {_message = localize "STR_RIP_HINT_ELITETEAM"};
if (_teamscore > 44) then {_message = localize "STR_RIP_HINT_HEROTEAM"};
if (_teamscore < -4) then {_message = localize "STR_RIP_HINT_LOOSERTEAM"};
if (_teamscore < -14) then {_message = localize "STR_RIP_HINT_BASTARDTEAM"};
if (_teamscore < -29) then {_message = localize "STR_RIP_HINT_ASSHOLEDTEAM"};

hint composeText [parseText format ["<t size='1.1' shadow='true' color='#60A344' align='center'>"+_message+"</t>",_teamscore]];

