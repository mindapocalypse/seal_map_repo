c_balca_balca_enabled = false;

	[] execVM "local.sqf";

if (isServer) then {
  [] spawn {
   waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
   _missionTime = 3600; // время в секундах
   _DelMarker = 150; // время в секундах
   _endMessage = "Время вышло. Победа VjLink`a.";
   _srv_gameStart = diag_tickTime;
   while {isNil "srv_missionFinished"} do {
    if (((diag_tickTime - _srv_gameStart) > _missionTime)) then {
     srv_missionFinished = true;
     [_endMessage] call SerP_endMission;
    };
    if (((diag_tickTime - _srv_gameStart) > _DelMarker)) then {
     "P1" setMarkerColor "ColorOrange";
    };
    sleep 3.123;
   };
  };
};