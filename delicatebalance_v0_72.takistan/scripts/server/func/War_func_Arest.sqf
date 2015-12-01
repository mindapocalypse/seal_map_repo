private ["_officer","_player"];

_officer = _this select 0;
_player = _this select 1;
[_officer] joinSilent _player;
_officer enableAI "MOVE";

if (true) exitWith {};