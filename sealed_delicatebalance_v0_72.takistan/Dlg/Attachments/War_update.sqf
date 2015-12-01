_picture = getText (configFile >> "CfgWeapons" >> RIPNEWWEAPON >> "picture");
ctrlSetText [10009, _picture];
disableSerialization;
_display = finddisplay 10001;
//AIM
if (RIPNEWWEAPON in ["ACE_AKS74P","ACE_AKS74P_PSO","ACE_AKS74P_GL","ACE_AKS74P_GL_PSO","ACE_AK74M","ACE_AK74M_PSO","ACE_AK74M_GL","ACE_AK74M_GL_PSO","ACE_AEK_971","ACE_AEK_971_1p78","ACE_AEK_971_gp","ACE_AEK_973s","ACE_AEK_973s_1p78","ACE_AEK_973s_gp","ACE_Val","ACE_Val_PSO","ACE_AK74M_SD","ACE_AK74M_SD_PSO","ACE_AK103","ACE_AK103_1P29","ACE_AK103_GL","ACE_AK103_GL_1P29"]) then {(_display displayctrl 10005) ctrlSetTextColor [0, 1, 0, 1];} else {(_display displayctrl 10005) ctrlSetTextColor [1, 0, 0, 1];};

//GL
if (RIPNEWWEAPON in ["ACE_AKS74P","ACE_AKS74P_Kobra","ACE_AKS74P_PSO","ACE_AK74M","ACE_AK74M_Kobra","ACE_AK74M_PSO","ACE_AEK_971","ACE_AEK_971_1p63","ACE_AEK_973s","ACE_AEK_973s_1p63","ACE_oc14","ACE_oc14sp","ACE_AK103","ACE_AK103_Kobra","ACE_AK103_1P29"]) then {(_display displayctrl 10006) ctrlSetTextColor [0, 1, 0, 1];} else {(_display displayctrl 10006) ctrlSetTextColor [1, 0, 0, 1];};

//PSO
if (RIPNEWWEAPON in ["ACE_AKS74P","ACE_AKS74P_Kobra","ACE_AKS74P_GL","ACE_AKS74P_GL_Kobra","ACE_AK74M","ACE_AK74M_Kobra","ACE_AK74M_GL","ACE_AK74M_GL_Kobra","ACE_AEK_971","ACE_AEK_971_1p63","ACE_AEK_973s","ACE_AEK_973s_1p63","ACE_oc14","ACE_oc14gl","ACE_Val","ACE_Val_Kobra","ACE_AK74M_SD","ACE_AK74M_SD_Kobra","ACE_oc14sd","ACE_RPK74M","ACE_AK103","ACE_AK103_Kobra","ACE_AK103_GL","ACE_AK103_GL_Kobra"]) then {(_display displayctrl 10007) ctrlSetTextColor [0, 1, 0, 1];} else {(_display displayctrl 10007) ctrlSetTextColor [1, 0, 0, 1];};

//SILENCER
if (RIPNEWWEAPON in ["ACE_AK74M","ACE_AK74M_Kobra","ACE_AK74M_PSO","ACE_oc14","ACE_oc14sp","AKS_74_U"]) then {(_display displayctrl 10011) ctrlSetTextColor [0, 1, 0, 1];} else {(_display displayctrl 10011) ctrlSetTextColor [1, 0, 0, 1];};