
while {true} do {

	waitUntil{(velocity player select 2 < -7) and ((getPosATL player select 2) > 250) and (vehicle player == player)};
	
	player setVelocity [0, 120*0.8, 0];
	[player, getPosATL player select 2] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";
	_j = 0;
	
	while {_j < count playable - 1} do
	{
	if (player == playable select _j) then {
							call compile format["jumping_%1 = true; publicVariable 'jumping_%1';", _j];
							_j = count playable
						};
						
	_j = _j + 1;
	};

	while {(getPosATL player select 2 > 250) and (vehicle player == player)} do {hintSilent format["Ваша высота - %1 м.", round(getPosATL player select 2)];};
	_strTxt = parseText "<t color='#FF0000'>Критичная высота !</t>";
	if (vehicle player == player) then {hint _strTxt} else {hintSilent ""};
	
};