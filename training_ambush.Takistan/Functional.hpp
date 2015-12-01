class Functional
{
	name=Functional;
	idd=-1;
	movingEnable=1;
	controlsBackground[]={BG,FR};
	objects[]={};
	controls[]={selfTeleport, groupTeleport, emptyVehicle, createEnemy, deleteEnemy, setTime, setFog, setRain, createArty, spawnCustomConvoy, setCustomConvoy, setHardConvoy, spawnRandomConvoy, closeMenu, unitTeleportCombo, vehicleNameCombo, enemyCreateCombo, setTimeCombo, setFogCombo, setRainCombo, setHaloMarker, setHaloCombo, setHalo};

	class selfTeleport:RscButton
	{
		idc=-1;
		y=0.2;
		text="Телепорт";
		action="NumSelTeamMem = lbCurSel 1001; closeDialog 0; [0] execVM 'scriptsMenu\actionsDial.sqf'";
	};

	class unitTeleportCombo:RscCombo
	{
		idc=1001;
		y=0.2;
	};

	class groupTeleport:RscButton
	{
		idc=-1;
		y=0.245;
		text="Телепорт группы";
		action="closeDialog 0; [1] execVM 'scriptsMenu\actionsDial.sqf'";
	};

	class emptyVehicle:RscButton
	{
		idc=-1;
		y=0.290;
		text="Создать технику";
		action="closeDialog 0; VehType = lbCurSel 1002; [6] execVM 'scriptsMenu\actionsDial.sqf'";
	};

	class vehicleNameCombo:RscCombo
	{
		idc=1002;
		y=0.290;
	};

	class createEnemy:RscButton
	{
		idc=-1;
		y=0.335;
		text="Создать врага";
		action = "enemyType = lbCurSel 1003; closeDialog 0; [5] execVM 'scriptsMenu\actionsDial.sqf'";
	};

	class enemyCreateCombo:RscCombo
	{
		idc=1003;
		y=0.335;
	};

	class setTime:RscButton
	{
		idc=-1;
		y=0.380;
		text="Уст. время";
		action = "selTime = lbCurSel 1004; [] execVM 'scriptsMenu\controlTime.sqf'";
	};

	class setTimeCombo:RscCombo
	{
		idc=1004;
		y=0.380;
	};
	
	
	class setFog:RscButton
	{
		idc=-1;
		y=0.425;
		text="Уст. туман";
		action = "selFog = lbCurSel 1005; [] execVM 'scriptsMenu\controlFog.sqf'";
	};

	class setFogCombo:RscCombo
	{
		idc=1005;
		y=0.425;
	};
	
	class setRain:RscButton
	{
		idc=-1;
		y=0.470;
		text="Уст. дождь";
		action = "selRain = lbCurSel 1006; [] execVM 'scriptsMenu\controlRain.sqf'";
	};

	class setRainCombo:RscCombo
	{
		idc=1006;
		y=0.470;
	};
	
	class deleteEnemy:RscButton
	{
		idc=-1;
		y=0.515;
		text="Очистить карту";
		action="closeDialog 0; [] execVM 'scriptsMenu\removeUnits.sqf'";
	};

	class createArty:RscButton
	{
		idc=-1;
		y=0.560;
		text="Арт удар";
		action="closeDialog 0; [3] execVM 'scriptsMenu\actionsDial.sqf'";
	};
    
    class setHalo:RscButton
	{
		idc=-1;
		y=0.615;
		text="Уст. высоту десанта";
		action = "HaloHeight = ((lbCurSel 1007) + 1)*500; hint format['Высота установлена на %1', HaloHeight];";
	};

	class setHaloCombo:RscCombo
	{
		idc=1007;
		y=0.615;
	};
	
	
	class setHaloMarker:RscButton
	{
		idc=-1;
		y=0.670;
		text="Уст. точку десантирования";
		action="closeDialog 0; [7] execVM 'scriptsMenu\actionsDial.sqf'";
	};
	
    class spawnCustomConvoy:RscButton
	{
		idc=-1;
		y=0.760;
		text="Спавн конвоя";
		action = "[lbCurSel 1010, lbCurSel 1011] execVM 'scriptsMenu\create_ambush.sqf'";
	};
    
    class setCustomConvoy:RscCombo
	{
		idc=1010;
		y=0.760;
	};
    
    class spawnRandomConvoy:RscButton
	{
		idc=-1;
		y=0.815;
		text="Спавн случайного конвоя";
		action = "[random 1, random 2] execVM 'scriptsMenu\create_ambush.sqf'";
	};
    
    class setHardConvoy:RscCombo
	{
		idc=1011;
		y=0.815;
	};

	class closeMenu:RscButton
	{
		idc=-1;
		y=0.860;
		text="Закрыть/Отмена";
		action="closeDialog 0; onMapSingleClick {}; hint 'Меню закрыто\n\nДействие отменено'";
	};

	class BG:RscBackground
	{
		idc = -1;
		x = 0.185; y = 0.12;
		w = 0.500; h = 0.905;
	};

	class FR:RscBgFrame
	{
		idc = -1;
		x = 0.185; y = 0.12;
		w = 0.500; h = 0.905;
	};
};