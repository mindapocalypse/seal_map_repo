private ["_ripovercast","_riprain","_ripfog"];

if (isNil "RIPWEATHER") then {RIPWEATHER = [overcast,fog,rain];} else {0 setOvercast (RIPWEATHER select 0);0 setFog (RIPWEATHER select 1);0 setRain (RIPWEATHER select 2);};

"RIPWEATHER" addPublicVariableEventHandler{private ["_ripweather"];_ripweather = _this select 1; 60 setOvercast (_ripweather select 0); 60 setFog (_ripweather select 1); 60 setRain (_ripweather select 2);};

if !(isServer) exitwith {};
while{true} do {
		_ripovercast = random 1;
		if (_ripovercast > 0.7) then {_ripfog = random 0.5;_riprain = random 1;} else {_ripfog = 0;_riprain = 0;};	
		60 setOvercast _ripovercast;
		60 setFog _ripfog;
		60 setRain _riprain;
		RIPWEATHER = [_ripovercast,_ripfog,_riprain];
		publicVariable "RIPWEATHER";
		sleep RIPWEATHERCHANGETIME;
};
