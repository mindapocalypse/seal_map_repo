//by RIP
private ["_PPGasEff","_object","_distance","_pos"];
if (isDedicated) exitWith {};

_object = Server getVariable "RIPMISSIONOBJECT";
Player setVariable ["ACE_Identity", "ACE_Original_Identity"];
_pos = getPos _object;
_distance = Server getVariable "RIPCONTAMINATION";

while {(Server getVariable "RIPMISSIONCREATED")} do
{
	if ((vehicle Player == Player) && ((Player getVariable "ACE_Identity") != "ACE_GlassesGasMask_US") && ((Player distance _pos) < _distance)) then {
					playSound "Cough";
					_PPGasEff = ppEffectCreate ["colorCorrections", 1503];
					_PPGasEff ppEffectEnable true;
					_PPGasEff ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]];
					_PPGasEff ppEffectCommit 8;
					sleep 8;
					_PPGasEff ppEffectAdjust [0.1, 0, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
					_PPGasEff ppEffectCommit 15;
					sleep 17;
					_PPGasEff ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]];
					_PPGasEff ppEffectCommit 15;
					titleText [" ", "Black Out"];
					sleep 5;
					titleText [" ", "Black In"];
					titleFadeOut 5;
					ppEffectDestroy _PPGasEff;
					Player setDamage (getDammage Player) + 0.1;
	};
	sleep 5;
};

