//by RIP
private ["_ViewDistance","_SelectedGrid"];

_ViewDistance = ViewDistance;
_dialog = createDialog "STR_SUB_9";

ctrlSetText [51016,str(_ViewDistance)];

sliderSetRange [51018, 500, RIPMAXVIEWDISTANCE];
sliderSetPosition [51018, _ViewDistance];

if (RIPDISABLEGRASSPLAYER == 1) then {
							lbClear 51019;
							lbAdd [51019,localize "STR_RIP_DLGDISABLE"];
							lbAdd [51019,localize "STR_RIP_DLGVERYLOW"];
							lbAdd [51019,localize "STR_RIP_DLGLOW"];
							lbAdd [51019,localize "STR_RIP_DLGHIGHT"];
							lbAdd [51019,localize "STR_RIP_DLGVERYHIGHT"];
} else {ctrlEnable [51019, false];};

While {dialog} do 
{
	_ViewDistance = sliderPosition 51018;
	_SelectedGrid =lbCurSel 51019;
	SetViewDistance _ViewDistance;
	ctrlSetText [51016,str(floor(_ViewDistance))];
	if (RIPDISABLEGRASSPLAYER == 1) then {
							switch (_SelectedGrid) do 
							{
								case 0: {setTerrainGrid 50;};
								case 1: {setTerrainGrid 25};
								case 2: {setTerrainGrid 12.5};
								case 3: {setTerrainGrid 6.25};
								case 4: {setTerrainGrid 3.125};
							};
	};
	sleep 1;
};
	SetViewDistance _ViewDistance;
