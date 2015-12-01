private ["_hospital","_backpack"];
_hospital = "RU_WarfareBFieldhHospital" createVehicleLocal [0,0,0];
_hospital setDir 228.663;
_hospital setPos (getMarkerPos "hospital");
clearMagazineCargo _hospital;
clearWeaponCargo _hospital;
_hospital addEventHandler ["handleDamage", {0}];
[_hospital] execVM "scripts\server\gear\ammo_med.sqf";

_backpack = "ACE_RuckBox_East" createVehicleLocal [0,0,0];
_backpack setDir 320;
_backpack setPos (getMarkerPos "backpack");
clearMagazineCargo _backpack;
clearWeaponCargo _backpack;
_backpack addEventHandler ["handleDamage", {0}];
[_backpack] execVM "scripts\server\gear\ammo_backpack.sqf";

"Veh_serv_1" setMarkerTextLocal localize "STR_RIP_MARKER_HELISERVICE";
"Veh_serv" setMarkerTextLocal localize "STR_RIP_MARKER_LANDSERVICE";
"UAV" setMarkerTextLocal localize "STR_RIP_MARKER_UAV";
"hospital" setMarkerTextLocal localize "STR_RIP_MARKER_HOSPITAL";
"ammoboxes" setMarkerTextLocal localize "STR_RIP_MARKER_AMMOBOX";
