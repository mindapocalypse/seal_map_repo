c_balca_balca_enabled = false;

[] execVM "Obj.sqf";

if (!isDedicated) then {
	relCrew = ["cwr2_SoldierW_Crew_W","cwr2_SoldierE_Crew_W"];
	relCommander = ["cwr2_SoldierW_Crew_W","cwr2_SoldierE_Crew_W"];
};

if (isServer) then {
	[] spawn {
		waitUntil { sleep 0.3; !isNil "warbegins" && {warbegins == 1} };
		_missionTime = 7200; // время в секундах
		_endMessage = "Время вышло! Победа обороны";
		_CobraTime = 600;
		_srv_gameStart = diag_tickTime;
		while {isNil "srv_missionFinished"} do {
			if (((diag_tickTime - _srv_gameStart) > _missionTime)) then {
				srv_missionFinished = true;
				[_endMessage] call SerP_endMission;
			};
			if (((diag_tickTime - _srv_gameStart) > _CobraTime) && (fuel c1 == 0) && (fuel c2 == 0)) then {
				c1 setFuel 1;
				c2 setFuel 1;
				_CobraTime = 10000;
			};
			sleep 3.123;
		};
	};
};
