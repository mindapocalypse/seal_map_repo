_unit = Player;
_type = _this select 0;

if (isDedicated) exitWith {};
if (_unit!=player) exitWith {};

switch (_type) do {

	case 0:	// Телепорт
	{
		openMap [true, false];
		hint "ТЕЛЕПОРТ\n\nУкажите точку на карте";
		
		_Team = units group player;
		teleport_unit = (_Team select NumSelTeamMem);
		
		onmapSingleClick {
			teleport_unit setPosATL [_pos select 0, _pos select 1, 0];
			hint 'Юнит телепортирован';
			onMapSingleClick {};
			openMap [false, false];
			true;
		};
		
		
		waituntil {not visiblemap};
		if (!visiblemap) then {onMapSingleClick "";};
	};

	case 1:// Телепорт группы
	{
		openMap [true, false];
		hint "ТЕЛЕПОРТ ГРУППЫ\n\nУкажите точку на карте";
		onmapSingleClick
		{
			{_x setPos _pos} forEach units group player;
			onMapSingleClick {};
			openMap [false, false];
			true;
		};
		
	};
	case 3:	// Арта
	{
		openMap [true, false];

		hint 'ВНИМАНИЕ!\nРежим артиллерии\n\nОтключается по выходу из карты';
		onmapSingleClick
		{
			hint 'ВНИМАНИЕ!\nРежим артиллерии\n\nОтключается по выходу из карты';
			_boom = "Sh_122_HE" createVehicle [(_pos select 0),(_pos select 1),((_pos select 2)+500)];
			true;
		};

		waitUntil {!visibleMap};
		onMapSingleClick {};
	};

	case 4:// Удаление групп
	{
		_nil = [] execVM 'scriptsMenu\removeUnits.sqf';
	};
	case 5:// Удаление групп
	{
		openMap [true, false];
		hint "СОЗДАНИЕ ГРУППЫ\n\nУкажите точку на карте";
		onmapSingleClick
		{	
			_nil = [enemyType, _pos] execVM 'scriptsMenu\createUnitsGroup.sqf';
			onMapSingleClick {};
			openMap [false, false];
			true;
		};
	};
	case 6:// Удаление групп
	{
		openMap [true, false];
		hint "Создание техники\nУкажите точку на карте";
		
		onmapSingleClick
		{	
			_nil = [VehType, _pos] execVM 'scriptsMenu\EmptyVehGen.sqf';
			onMapSingleClick {};
			openMap [false, false];
			true;
		};
	};
    
    case 7:// Десант
	{
		openMap [true, false];
		hint "Точка десанта\nУкажите точку на карте";
		
		onmapSingleClick
		{	
			"desant" setMarkerPos _pos;
			onMapSingleClick {};
			openMap [false, false];
			true;
		};
	};
};