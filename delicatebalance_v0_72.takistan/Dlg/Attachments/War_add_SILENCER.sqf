private ["_picture"];

RIPNEWWEAPON =
switch (RIPNEWWEAPON) do 
{ 
  case "ACE_AK74M": {"ACE_AK74M_SD"}; 
  case "ACE_AK74M_Kobra": {"ACE_AK74M_SD_Kobra"}; 
  case "ACE_AK74M_PSO": {"ACE_AK74M_SD_PSO"}; 

  case "ACE_oc14": {"ACE_oc14sd"};
  case "ACE_oc14sp": {"ACE_oc14sdsp"};

  case "AKS_74_U": {"ACE_AKS74_UN"};

  default {RIPNEWWEAPON};
};
[] execVM "Dlg\Attachments\War_update.sqf";
