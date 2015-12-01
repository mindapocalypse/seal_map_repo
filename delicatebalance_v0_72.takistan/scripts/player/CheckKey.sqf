//by RIP
private["_handled","_dikCode","_shift"];
#include "\ca\editor\Data\Scripts\dikCodes.h"
_handled = false;
_dikCode = (_this select 1);
_shift = (_this select 2);

RIP_MENU_inCommunication = 
[
	["",false],
	[localize "STR_RIP_MENUOPTIONS", [2], "", -5, [["expression", "[] execVM ""scripts\player\Options.sqf"" "]], "1", "1"],
	[localize "STR_RIP_MENUSELECTWEAPONS", [3], "", -5, [["expression", "[] execVM ""Dlg\SelectWeapon\War_createdialog.sqf"""]], "1", "1"],
	[localize "STR_RIP_MENUMODWEAPONS", [4], "", -5, [["expression", "[] execVM ""Dlg\Attachments\War_createdialog.sqf"""]], "1", "1"],
	[localize "STR_RIP_MENUGROUPSTATUS", [5], "", -5, [["expression", "[] execVM ""scripts\player\StatusGroup.sqf"""]], "1", "1"],
	[localize "STR_RIP_MENUTEAMSTATUS", [6], "", -5, [["expression", "[] execVM ""scripts\player\TeamScore.sqf"""]], "1", "1"]
];

if (str(player) in ["rus4","rus11"]) then {
RIP_MENU_inCommunication = RIP_MENU_inCommunication + [[localize "STR_RIP_MENUREPAIR", [7], "", -5, [["expression", "[] execVM ""scripts\player\RepairVehicle.sqf"""]], "1", "1"]];
RIP_MENU_inCommunication = RIP_MENU_inCommunication + [[localize "STR_RIP_LOCKUNLOCK", [8], "", -5, [["expression", "[] execVM ""scripts\player\UnlockVehicle.sqf"""]], "1", "1"]];
};

if (RIPRALLYPOINTS == 1) then {
						if (str(player) in ["rus1","rus7","rus18"]) then {
									RIP_MENU_inCommunication = RIP_MENU_inCommunication + [[localize "STR_RIP_SETRALLYPOINT", [7], "", -5, [["expression", "[] execVM ""scripts\player\RallyPoint.sqf"""]], "1", "1"]];
						};
};



if ((!_shift && (_dikCode in (ActionKeys "ForceCommandingMode")))||(!_shift && (_dikCode in (ActionKeys "TacticalView")))) then
	{
		_handled = true;
	};


switch _dikCode do { 
		//T	
		case DIK_T: {
			showCommandingMenu "#USER:RIP_MENU_inCommunication";
			_handled = true;
		};
};
_handled;

