//Params array
if (isNil "paramsArray") then {
    if (isClass (missionConfigFile/"Params")) then {
        for "_i" from 0 to (count (missionConfigFile/"Params") - 1) do {
            _paramName = configName ((missionConfigFile >> "Params") select _i);
            missionNamespace setVariable [_paramName, getNumber (missionConfigFile >> "Params" >> _paramName >> "default")];
        };
    };
} else {
    for "_i" from 0 to (count paramsArray - 1) do {
        missionNamespace setVariable [configName ((missionConfigFile >> "Params") select _i), paramsArray select _i];
    };
};

RIPCENTERMAP = getPos Map_Center;
RIPPATROLMENS = ["ACE_USMC_SoldierS_Sniper_D","ACE_USMC_Soldier_AT_D","ACE_USMC_Soldier_AR_D","ACE_USMC_Soldier_Medic_D","ACE_USMC_SoldierM_Marksman_D","ACE_USMC_SoldierS_Engineer_D","ACE_USMC_Soldier_GL_D","ACE_USMC_Soldier_MG_D","ACE_USMC_Soldier_TAR_D","ACE_USMC_Soldier_LAT_D","ACE_USMC_SoldierS_D","ACE_USMC_Soldier_SL_D","ACE_USMC_Soldier2_D","ACE_USMC_SoldierS_Spotter_D","ACE_USMC_SoldierS_SniperH_D"];
War_GetRandomPoint = compile preprocessFileLineNumbers "scripts\server\func\War_func_GetRandomPoint.sqf";
War_func_NearestPlayers = compile preprocessFileLineNumbers "scripts\server\func\War_func_NearestPlayers.sqf";
War_func_CityAI = compile preprocessFileLineNumbers "scripts\server\func\War_func_CityAI.sqf";

if (isServer) then {
	War_GetRandomPointCircleOuter = compile preprocessFileLineNumbers "scripts\server\func\War_func_GetRandomPointCircleOuter.sqf";
	War_func_CreateAeropatrol = compile preprocessFileLineNumbers "scripts\server\func\War_func_CreateAeropatrol.sqf";
	War_func_CreateGroundpatrol = compile preprocessFileLineNumbers "scripts\server\func\War_func_CreateGroundpatrol.sqf";
	War_func_CreateInfGroup = compile preprocessFileLineNumbers "scripts\server\func\War_func_CreateInfGroup.sqf";
	War_func_CreateLightVehGroup = compile preprocessFileLineNumbers "scripts\server\func\War_func_CreateLightVehGroup.sqf";
	War_func_CreateHardVehGroup = compile preprocessFileLineNumbers "scripts\server\func\War_func_CreateHardVehGroup.sqf";
	War_func_BotsHouse = compile preprocessFileLineNumbers "scripts\server\func\War_func_BotsHouse.sqf";
	War_func_CreateStatic = compile preprocessFileLineNumbers "scripts\server\func\War_func_CreateStatic.sqf";
	War_func_RemoveDead = compile preprocessFileLineNumbers "scripts\server\func\War_func_RemoveDead.sqf";
	War_HeliDriverCheck = compile preprocessFile "scripts\server\func\War_func_HeliDriverCheck.sqf";
	War_func_RespawnVeh = compile preprocessFileLineNumbers "scripts\server\func\War_func_RespawnVeh.sqf";
	War_func_CleanUp = compile preprocessFileLineNumbers "scripts\server\func\War_func_CleanUp.sqf";

	RIPPATROLLIGHTVEHICLES = ["M1126_ICV_M2_EP1","ACE_Stryker_ICV_MK19_SLAT_D","ACE_Stryker_ICV_M2_SLAT_D","HMMWV_M998A2_SOV_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_Avenger_DES_EP1","HMMWV_TOW_DES_EP1","HMMWV_MK19_DES_EP1"];
	RIPPATROLGROUNDVEHICLES = ["HMMWV_M998A2_SOV_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_Avenger_DES_EP1","HMMWV_TOW_DES_EP1","HMMWV_MK19_DES_EP1","M2A2_EP1","M2A3_EP1","ACE_M6A1_D"];
	RIPPATROLHARDVEHICLES = ["M2A2_EP1","M2A3_EP1","M1A2_US_TUSK_MG_EP1","ACE_M6A1_D","ACE_M1A1HA_TUSK_DESERT"];
	RIP_TASK_NUMBERS = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26];

	ace_sys_aitalk_enabled = true;publicVariable "ace_sys_aitalk_enabled";
	ace_sys_tracking_markers_enabled = false;publicVariable "ace_sys_tracking_markers_enabled";
	ace_sys_eject_fnc_weaponCheckEnabled = false;publicVariable "ace_sys_eject_fnc_weaponCheckEnabled";
	ace_sys_wounds_enabled = true;publicVariable "ace_sys_wounds_enabled";
	ace_sys_wounds_all_medics = false;publicVariable "ace_sys_wounds_all_medics";
	ace_sys_wounds_noai = false;publicVariable "ace_sys_wounds_noai";
	ace_sys_wounds_no_rpunish = true;publicVariable "ace_sys_wounds_no_rpunish";
	ace_sys_wounds_player_movement_bloodloss = true;publicVariable "ace_sys_wounds_player_movement_bloodloss";
	ace_sys_wounds_leftdam = 0.05;publicVariable "ace_sys_wounds_leftdam";

	tf_no_auto_long_range_radio = true;publicVariable "tf_no_auto_long_range_radio";

	if (RIPWITHACRE == 2) then {
					tf_radio_channel_name = getText (configFile >> "task_force_radio_settings" >> "tf_radio_channel_coop_name");
					tf_radio_channel_password = getText (configFile >> "task_force_radio_settings" >> "tf_radio_channel_coop_password");
					Server setvariable ["RIPTFRADIOPASS","qWeYnZ30Mnr618",true];
					Server setvariable ["RIPTFRADIOCHAN",tf_radio_channel_name,true];
	};
	if (RIPWITHACRE == 3) then {
					tf_radio_channel_name = getText (configFile >> "task_force_radio_settings" >> "tf_radio_channel_coop_name");
					tf_radio_channel_password = getText (configFile >> "task_force_radio_settings" >> "tf_radio_channel_coop_password");
					Server setvariable ["RIPTFRADIOPASS",tf_radio_channel_password,true];
					Server setvariable ["RIPTFRADIOCHAN",tf_radio_channel_name,true];
	};

	switch (RIPWOUNDSTIMER) do {
		case 0: {ace_wounds_prevtime = 0;};
		case 1: {ace_wounds_prevtime = 10;};
		case 2: {ace_wounds_prevtime = 90;};
		case 3: {ace_wounds_prevtime = 150;};
		case 4: {ace_wounds_prevtime = 300;};
		case 5: {ace_wounds_prevtime = 600;};
		default {ace_wounds_prevtime = 300;};
	};
	publicVariable "ace_wounds_prevtime";

	Server setvariable ["RIPMISSIONENDWINNER",false,true];
	Server setvariable ["RIPMISSIONENDLOOSER",false,true];
	Server setVariable ["RIPMISSIONCOMPLETED",true,true];
	Server setVariable ["RIPMISSIONCREATED",false,true];
	Server setVariable ["RIPMISSIONSUCCEED",-1,true];
	Server setVariable ["RIPTEAMSCORE",0,true];
	RIPMISSIONCOUNT = 0;
	RIPLASTMISSIONPOS = [0,0,0];
	RIPMISSIONOBJ = [];
	RIPMISSIONGUARDUNITS = [];
	RIPMISSIONGUARDVEHICLES = [];
	RIPMISSIONGUARDGROUPS = [];

	setDate [2015,8,10,RIPDAY,0];

	if (RIPPILOTCHECK == 1) then {[RU18] spawn War_HeliDriverCheck;};
	objNull spawn War_func_RespawnVeh;
	objNull spawn War_func_CleanUp;

	if (RIPAIRAIPATROLS == 1) then {[8500] spawn War_func_CreateAeropatrol;};
	if (RIPGROUNDAIPATROLS == 1) then {{[_x,"area1"] spawn War_func_CreateGroundpatrol} forEach ["Patrol1_1","Patrol1_2","Patrol1_3","Patrol1_4","Patrol2_1","Patrol2_2","Patrol2_3","Patrol2_4"];};

	"RIPLOCKEDVEHICLE" addPublicVariableEventHandler {
		if(locked RIPLOCKEDVEHICLE) then {
			RIPLOCKEDVEHICLE lock false;
		} else {
			RIPLOCKEDVEHICLE lock true;
		};
	};
	onplayerconnected "Server setVariable ['RIPTASKTIME',date,true]";
};
"area0" setmarkeralpha 0;
"area1" setmarkeralpha 0;		
waituntil {!isnil "bis_fnc_init"};

if (isMultiplayer) then 
{
	setViewDistance 1000;
	switch (RIPDEFAULTGRASSLAYER) do 
	{ 
 	  case 0: {setTerrainGrid 50;}; 
	  case 1: {setTerrainGrid 25;}; 
	  case 2: {setTerrainGrid 12.5;}; 
	  case 3: {setTerrainGrid 6.25;}; 
	  case 4: {setTerrainGrid 3.125;}; 
	};
	RIPAIDEFAULTSKILL = RIPAISKILL/10;
	{_x allowdamage false} forEach (nearestObjects [getMarkerPos "RU_Base", ["static"], 90]);
};

if (!(isDedicated)) then {
			if (RIPWITHACRE > 1) then {
								tf_radio_channel_name = (Server getvariable "RIPTFRADIOCHAN");
								tf_radio_channel_password = (Server getvariable "RIPTFRADIOPASS");
			};
			waitUntil {!isNull player};
			waitUntil {player == player};
			[] execVM "scripts\player\Briefing.sqf";
			[] execVM "scripts\player\initclient.sqf";
			[] execVM "scripts\player\GearPlayer.sqf";
			[] execVM "scripts\player\RespawnButtonDelay.sqf";
			if (RIPTOWNAIPATROLS == 1) then {objNull spawn War_func_CityAI;};
			titleCut [localize "STR_RIP_INTROTEXT", "BLACK FADED"];
			player addEventHandler ["Respawn", {[(_this select 0),(_this select 1)] execVM "scripts\player\OnRespawned.sqf";}];
			if (RIPVEHICLEMARKER == 1) then {[] execVM "scripts\player\MarkersVehicles.sqf";};
			[] execVM "scripts\player\MarkersPlayer.sqf";
			[] execVM "scripts\player\WeaponCheck.sqf";
			sleep 0.5;
			[] execVM "scripts\player\VehicleCrew.sqf";
			[] execVM "scripts\EX_seats\Ex_seats_Init.sqf";
			[] execVM "scripts\LowGear\LowGear_Init.sqf";
			RIP_KEYCHECK = compile preprocessFile "scripts\player\CheckKey.sqf";
			(findDisplay 46) displayAddEventHandler ["keyDown","_this call RIP_KEYCHECK"];
			RIPMAXVIEWDISTANCE = RIPMAXDISTANCE;
};
if (RIPDYNAMICWEATHER == 1) then {[] execVM "scripts\server\DynamicWeather.sqf";};
if (RIP_DISABLECHAT == 1) then {[] execVM "scripts\player\DisableChat.sqf";};
call compile preprocessFileLineNumbers "scripts\server\Init_UPSMON.sqf";	
processInitCommands;
finishMissionInit;
