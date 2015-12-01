//by RIP
waitUntil {!isNull player}; 

if !(RIP_SELECTED_WEAPON in ["RPG7V","ACE_RPG7V_PGO7","ACE_RPG29"]) then {
									if (RIP_SELECTED_WEAPON != (primaryWeapon player)) then {player removeWeapon (primaryWeapon player);};
};
if (RIP_SELECTED_WEAPON in ["RPG7V","ACE_RPG7V_PGO7","ACE_RPG29"]) then {
									if (RIP_SELECTED_WEAPON != (secondaryWeapon player)) then {player removeWeapon (secondaryWeapon player);};
};
player addWeapon RIP_SELECTED_WEAPON;
player selectWeapon (primaryWeapon player);

if (true) exitWith {};