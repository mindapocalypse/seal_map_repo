private ["_picture"];

RIPNEWWEAPON =
switch (RIPNEWWEAPON) do 
{ 
  case "ACE_AKS74P_Kobra": {"ACE_AKS74P"}; 
  case "ACE_AKS74P_PSO": {"ACE_AKS74P"}; 
  case "ACE_AKS74P_GL": {"ACE_AKS74P"}; 
  case "ACE_AKS74P_GL_PSO": {"ACE_AKS74P"}; 
  case "ACE_AKS74P_GL_Kobra": {"ACE_AKS74P"}; 

  case "ACE_AK74M_Kobra": {"ACE_AK74M"}; 
  case "ACE_AK74M_GL": {"ACE_AK74M"}; 
  case "ACE_AK74M_PSO": {"ACE_AK74M"}; 
  case "ACE_AK74M_GL_Kobra": {"ACE_AK74M"};
  case "ACE_AK74M_GL_PSO": {"ACE_AK74M"};
  case "ACE_AK74M_SD": {"ACE_AK74M"};
  case "ACE_AK74M_SD_Kobra": {"ACE_AK74M"};
  case "ACE_AK74M_SD_PSO": {"ACE_AK74M"};

  case "ACE_AEK_971_1p63": {"ACE_AEK_971"};
  case "ACE_AEK_971_gp": {"ACE_AEK_971"};
  case "ACE_AEK_971_1p78": {"ACE_AEK_971"};
  case "ACE_AEK_971_gp_1p63": {"ACE_AEK_971"};

  case "ACE_AEK_973s_1p63": {"ACE_AEK_973s"};
  case "ACE_AEK_973s_gp": {"ACE_AEK_973s"};
  case "ACE_AEK_973s_1p78": {"ACE_AEK_973s"};
  case "ACE_AEK_973s_gp_1p63": {"ACE_AEK_973s"};

  case "ACE_oc14gl": {"ACE_oc14"};
  case "ACE_oc14sp": {"ACE_oc14"};
  case "ACE_oc14glsp": {"ACE_oc14"};
  case "ACE_oc14sd": {"ACE_oc14"};
  case "ACE_oc14sdsp": {"ACE_oc14"};

  case "ACE_Val_Kobra": {"ACE_Val"};
  case "ACE_Val_PSO": {"ACE_Val"};

  case "ACE_RPK74M_1P29": {"ACE_RPK74M"};

  case "ACE_AK103_Kobra": {"ACE_AK103"};
  case "ACE_AK103_1P29": {"ACE_AK103"};
  case "ACE_AK103_GL": {"ACE_AK103"};
  case "ACE_AK103_GL_Kobra": {"ACE_AK103"};
  case "ACE_AK103_GL_1P29": {"ACE_AK103"};

  case "ACE_AKS74_UN": {"AKS_74_U"};
  default {RIPNEWWEAPON};
};
[] execVM "Dlg\Attachments\War_update.sqf";
