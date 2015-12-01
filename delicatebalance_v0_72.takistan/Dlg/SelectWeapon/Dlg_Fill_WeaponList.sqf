//by RIP
private ["_preset","_weaponname","_picture","_idx"];

if (str(player) in ["rus1","rus2","rus4","rus6","rus7","rus8","rus9","rus11","rus12","rus13","rus14","rus15","rus16","rus17"]) then {
	_preset = ["AKS_74_U","ACE_AK74M","ACE_AKS74P","ACE_AEK_971","ACE_AEK_973s","ACE_AK103"];
};
if (str(player) == "rus5") then {
	_preset = ["ACE_SVD_Bipod","SVD_NSPU_EP1"];
};
if (str(player) in ["rus3","rus10","rus20"]) then {
	_preset = ["ACE_RPK74M","PK","Pecheneg"];
};
if (str(player) in ["rus18","rus19","rus21","rus22"]) then {
	_preset = ["AKS_74_U","ACE_AK74M","ACE_AKS74P","ACE_AEK_971","ACE_AEK_973s","ACE_AK103","ACE_oc14","ACE_Val"];
};
if (str(player) == "rus21") then {
	_preset = _preset +["M24","ACE_SVD_Bipod","SVD_NSPU_EP1","KSVK"];
};
if (str(player) in ["rus23","rus24","rus25","rus26","rus27","rus28","rus29","rus30","rus31"]) then {
	_preset = ["AKS_74_U","ACE_AK74M"];
};
if (str(player) in ["rus12"]) then {
	_preset = _preset +["RPG7V","ACE_RPG7V_PGO7","ACE_RPG29"];
};

lbClear 11002;
{
_weaponname = getText (configFile >> "CfgWeapons" >> _x >> "displayname");
_picture = getText (configFile >> "CfgWeapons" >> _x >> "picture");
_idx = lbAdd[11002,_weaponname];
lbSetPicture [11002, _idx, _picture];
lbSetData [11002, _idx, _x]
} forEach _preset;
