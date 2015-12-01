if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

ace_sys_spectator_can_exit_spectator = true;
ace_sys_spectator_RemoveDeadFilter = true;
ace_sys_spectator_no_butterfly_mode = true;
ace_sys_spectator_ShownSides = [west, east, resistance, civilian];
ace_sys_spectator_playable_only=false;

HaloHeight = 5000;

if (player == blueCommander) then {[] execVM "scriptsMenu\menu.sqf"};
if (player == redCommander) then {[] execVM "scriptsMenu\menu.sqf"};

playable = playableUnits;

_i = 0;

while {_i < count playable - 1} do
{
	call compile format["jumping_%1 = false", _i];
	call compile format["'jumping_%1' addPublicVariableEventHandler {(playable select %1) switchMove 'HaloFreeFall_non'};", _i];
	_i = _i + 1;
    
};

if (!isDedicated) then {
	[] execVM "scripts\halo.sqf";
};