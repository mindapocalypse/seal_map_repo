#define __SerP_loadscreen __EVAL("images\lsjpg")

SerP_version = "addon";
respawn = 3;
respawndelay = 60;

class Header	{
	gameType = Unknown;
	minPlayers = 1;
	maxPlayers = 50;
};

onLoadMission = $STR_missionname;
loadScreen = "images\ls.jpg";
disableChannels[] = {0,2,3,5,6};