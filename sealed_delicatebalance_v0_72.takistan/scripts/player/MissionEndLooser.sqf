titleCut ["", "BLACK FADED",16];
playSound "Looser";
["<t size='1.0' color='#0000ff'>"+localize "STR_RIP_HINT_LOSTMISSION"+"</t>",0,(safezoneH)/2,6,2] call BIS_fnc_dynamicText;
endMission "END2";
