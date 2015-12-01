#define __SerP_loadscreen __EVAL("pics\logo1jpg")

class Extended_PreInit_EventHandlers {
	class SerP {
		Init = "call compile preProcessFileLineNumbers 'SerP\preInit.sqf'";
	};
};
class Extended_PostInit_EventHandlers {
	class SerP {
		Init = "call compile preProcessFileLineNumbers 'SerP\postInit.sqf'";
	};
};

SerP_version = 37.6;
respawn = 1;
respawndelay = 3;
class Header	{
	gameType = Unknown;
	minPlayers = 1;
	maxPlayers = 120;
};

onLoadMission = $STR_missionname;
loadScreen = "pics\logo1.jpg";
disableChannels[] = {0,2,3,5,6};