private ["_picture"];

RIPNEWWEAPON =
switch (RIPNEWWEAPON) do 
{ 
  case "ACE_AKS74P": {"ACE_AKS74P_GL"}; 
  case "ACE_AKS74P_Kobra": {"ACE_AKS74P_GL_Kobra"}; 
  case "ACE_AKS74P_PSO": {"ACE_AKS74P_GL_PSO"}; 

  case "ACE_AK74M": {"ACE_AK74M_GL"}; 
  case "ACE_AK74M_Kobra": {"ACE_AK74M_GL_Kobra"}; 
  case "ACE_AK74M_PSO": {"ACE_AK74M_GL_PSO"};

  case "ACE_AEK_971": {"ACE_AEK_971_gp"};
  case "ACE_AEK_971_1p63": {"ACE_AEK_971_gp_1p63"};

  case "ACE_AEK_973s": {"ACE_AEK_973s_gp"};
  case "ACE_AEK_973s_1p63": {"ACE_AEK_973s_gp_1p63"};

  case "ACE_oc14": {"ACE_oc14gl"};
  case "ACE_oc14sp": {"ACE_oc14glsp"};

  case "ACE_AK103": {"ACE_AK103_GL"};
  case "ACE_AK103_Kobra": {"ACE_AK103_GL_Kobra"};
  case "ACE_AK103_1P29": {"ACE_AK103_GL_1P29"};

  default {RIPNEWWEAPON};
};
[] execVM "Dlg\Attachments\War_update.sqf";
//_picture = getText (configFile >> "CfgWeapons" >> RIPNEWWEAPON >> "picture");
//ctrlSetText [10009, _picture];