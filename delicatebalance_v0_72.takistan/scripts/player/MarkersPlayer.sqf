//by RIP
private ["_markers","_markername","_position","_marker","_markercolor","_veh","_markernametext","_rallypoint"];

_markers=[];
	
while {true} do {

	if (local player) then 
	{
		if (str(player) in ["rus7","rus8","rus9","rus10","rus11","rus12","rus13","rus14","rus15","rus16","rus17"]) then {_rallypoint = RIP_M1_CHECKPOINT;};
		if (str(player) in ["rus1","rus2","rus3","rus4","rus5","rus6","rus23","rus24","rus25","rus26","rus27","rus28"]) then {_rallypoint = RIP_S1_CHECKPOINT;};
		if (str(player) in ["rus18","rus19","rus20","rus21","rus22"]) then {_rallypoint = RIP_G1_CHECKPOINT;};

		if (RIPPLAYERMARKER == 1) then {
			{
				if ((side (group _x))==(side (group player))) then 
				{
					_markername = (name _x);
					_position = getPos _x;
			
					if (isPlayer _x) then 
					{
						if (alive _x) then 
						{
							if (vehicle _x == _x) then {
												_marker = createMarkerLocal [_markername, _position];
												_marker setMarkerShapeLocal "ICON";
												_markername setMarkerTypeLocal "mil_dot";
												_markername setMarkerSizeLocal [0.75,0.75];
												_markername setMarkerDirLocal 180;
								
												if (_x in (units(group player))) then 
												{
												_markercolor="colorGREEN";
												}
												else
												{
												_markercolor="colorBLUE";
												};
								
												_markername setMarkerColorLocal _markercolor;
												_markername setMarkerTextLocal (name _x);
												_markers = _markers +[_markername];
							} else {
									_veh = vehicle _x;
									if (_x == driver _veh) then {
														_marker = createMarkerLocal [_markername, _position];
														_marker setMarkerShapeLocal "ICON";
														_markername setMarkerTypeLocal "mil_triangle";
														_markername setMarkerSizeLocal [0.75,0.75];
														_markername setMarkerDirLocal 180;
								
														if (_x in (units(group player))) then 
														{
														_markercolor="colorGREEN";
														}
														else
														{
														_markercolor="colorBLUE";
														};
								
														_markername setMarkerColorLocal _markercolor;
														_markernametext = format ["%1(%2)",(getText (configFile >> "CfgVehicles" >> (typeOf _veh) >> "DisplayName")),(name _x)];
														_markername setMarkerTextLocal _markernametext;
														_markers = _markers +[_markername];			
													    };
							};
						};
					};
				};
			
			}ForEach AllUnits;
		};
//точка сбора
		_markername = (name _rallypoint);
		_position = getPos _rallypoint;
		if ((_position distance Flag_Base_RU)>1000) then {
				_marker = createMarkerLocal [_markername, _position];
				_marker setMarkerShapeLocal "ICON";
				_markername setMarkerTypeLocal "mil_objective";
				_markername setMarkerSizeLocal [0.45,0.45];
				_markername setMarkerDirLocal 180;
				_markercolor="colorGREEN";
				_markername setMarkerColorLocal _markercolor;
				_markername setMarkerTextLocal (localize "STR_RIP_RALLYPOINT");
				_markers = _markers +[_markername];
			};
		sleep 3;
			
		{
			deleteMarkerLocal _x;
		
		}ForEach _markers;
			
		_markers=[];

	};
};