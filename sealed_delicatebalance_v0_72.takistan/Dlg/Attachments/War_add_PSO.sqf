private ["_picture"];

RIPNEWWEAPON =
switch (RIPNEWWEAPON) do 
{ 
  case "ACE_AKS74P": {"ACE_AKS74P_PSO"}; 
  case "ACE_AKS74P_Kobra": {"ACE_AKS74P_PSO"}; 
  case "ACE_AKS74P_GL": {"ACE_AKS74P_GL_PSO"}; 
  case "ACE_AKS74P_GL_Kobra": {"ACE_AKS74P_GL_PSO"}; 

  case "ACE_AK74M": {"ACE_AK74M_PSO"}; 
  case "ACE_AK74M_Kobra": {"ACE_AK74M_PSO"}; 
  case "ACE_AK74M_GL": {"ACE_AK74M_GL_PSO"}; 
  case "ACE_AK74M_GL_Kobra": {"ACE_AK74M_GL_PSO"};
  case "ACE_AK74M_SD": {"ACE_AK74M_SD_PSO"};
  case "ACE_AK74M_SD_Kobra": {"ACE_AK74M_SD_PSO"};


  case "ACE_AEK_971": {"ACE_AEK_971_1p78"};
  case "ACE_AEK_971_1p63": {"ACE_AEK_971_1p78"};

  case "ACE_AEK_973s": {"ACE_AEK_973s_1p78"};
  case "ACE_AEK_973s_1p63": {"ACE_AEK_973s_1p78"};

  case "ACE_oc14": {"ACE_oc14sp"};
  case "ACE_oc14gl": {"ACE_oc14glsp"};
  case "ACE_oc14sd": {"ACE_oc14sdsp"};

  case "ACE_Val": {"ACE_Val_PSO"};
  case "ACE_Val_Kobra": {"ACE_Val_PSO"};

  case "ACE_RPK74M": {"ACE_RPK74M_1P29"};

  case "ACE_AK103": {"ACE_AK103_1P29"};
  case "ACE_AK103_Kobra": {"ACE_AK103_1P29"};
  case "ACE_AK103_GL": {"ACE_AK103_GL_1P29"};
  case "ACE_AK103_GL_Kobra": {"ACE_AK103_GL_1P29"};

  default {RIPNEWWEAPON};
};
[] execVM "Dlg\Attachments\War_update.sqf";
//_picture = getText (configFile >> "CfgWeapons" >> RIPNEWWEAPON >> "picture");
//ctrlSetText [10009, _picture];