private ["_unit","_corp","_teamscore","_vehicle"];
_unit = _this select 0;
_corp = _this select 1;

waitUntil {alive player};
titleCut [localize "STR_RIP_RESPAWNTEXT", "BLACK FADED"];

_teamscore = Server getVariable "RIPTEAMSCORE";
_teamscore = _teamscore - 1;
Server setVariable ["RIPTEAMSCORE",_teamscore,true];

sleep 60;

_vehicle = vehicle _corp;

if ((vehicle _corp) == _corp) then
{
	sleep 3;
	While {(!(isNull _corp))} do 
	{
		deleteVehicle _corp;
		sleep 3;
	};
}
else
{
	sleep 3;
	While {(!(isNull _corp))} do 
	{
		
		if (_corp in crew _vehicle) then 
		{
			_corp setPos [0,0,-1000];
		};
		deleteVehicle _corp;
		sleep 3;
	};
};


	