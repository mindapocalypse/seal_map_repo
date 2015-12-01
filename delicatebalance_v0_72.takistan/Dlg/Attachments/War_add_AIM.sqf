private ["_picture"];

RIPNEWWEAPON =
switch (RIPNEWWEAPON) do 
{ 
  case "ACE_AKS74P": {"ACE_AKS74P_Kobra"}; 
  case "ACE_AKS74P_PSO": {"ACE_AKS74P_Kobra"}; 
  case "ACE_AKS74P_GL": {"ACE_AKS74P_GL_Kobra"}; 
  case "ACE_AKS74P_GL_PSO": {"ACE_AKS74P_GL_Kobra"};

  case "ACE_AK74M": {"ACE_AK74M_Kobra"}; 
  case "ACE_AK74M_PSO": {"ACE_AK74M_Kobra"}; 
  case "ACE_AK74M_GL": {"ACE_AK74M_GL_Kobra"}; 
  case "ACE_AK74M_GL_PSO": {"ACE_AK74M_GL_Kobra"};
  case "ACE_AK74M_SD": {"ACE_AK74M_SD_Kobra"};
  case "ACE_AK74M_SD_PSO": {"ACE_AK74M_SD_Kobra"};

  case "ACE_AEK_971": {"ACE_AEK_971_1p63"};
  case "ACE_AEK_971_1p78": {"ACE_AEK_971_1p63"};
  case "ACE_AEK_971_gp": {"ACE_AEK_971_gp_1p63"};

  case "ACE_AEK_973s": {"ACE_AEK_973s_1p63"};
  case "ACE_AEK_973s_1p78": {"ACE_AEK_973s_1p63"};
  case "ACE_AEK_973s_gp": {"ACE_AEK_973s_gp_1p63"};

  case "ACE_Val": {"ACE_Val_Kobra"};
  case "ACE_Val_PSO": {"ACE_Val_Kobra"};

  case "ACE_AK103": {"ACE_AK103_Kobra"};
  case "ACE_AK103_1P29": {"ACE_AK103_Kobra"};
  case "ACE_AK103_GL": {"ACE_AK103_GL_Kobra"};
  case "ACE_AK103_GL_1P29": {"ACE_AK103_GL_Kobra"};

  default {RIPNEWWEAPON};
};
[] execVM "Dlg\Attachments\War_update.sqf";
//_picture = getText (configFile >> "CfgWeapons" >> RIPNEWWEAPON >> "picture");
//ctrlSetText [10009, _picture];