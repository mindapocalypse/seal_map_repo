//by RIP
private ["_picture"];
RIPNEWWEAPON = currentWeapon player;

[] execVM "Dlg\Attachments\War_update.sqf";
//_picture = getText (configFile >> "CfgWeapons" >> RIPNEWWEAPON >> "picture");
//ctrlSetText [10009, _picture];