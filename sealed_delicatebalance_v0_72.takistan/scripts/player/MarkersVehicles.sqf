private ["_arrayofvehicle","_marker", "_x", "_markername", "_position","_markers","_markercolor"];

_markers=[];


_arrayofvehicle = [RU1,RU2,RU3,RU4,RU5,RU6,RU7,RU8,RU9,RU10,RU11,RU12,RU13,RU14,RU15,RU16,RU17,RU18,RU19,RU20];

while {true} do {

	if (local player) then 
	{
			{
				if ((alive _x) && !(isPlayer (driver _x)) && (RIPPLAYERMARKER == 1)) then 
				{
					_markername = str(_x);
					_position = getPos _x;
					_marker = createMarkerLocal [_markername, _position];
					_marker setMarkerShapeLocal "ICON";
					_markername setMarkerTypeLocal "mil_triangle";
					_markername setMarkerSizeLocal [0.75,0.75];
					_markername setMarkerDirLocal 180;
					if ((damage _x) < 0.8) then {_markercolor="ColorOrange";} else {_markercolor="colorBLACK";};
					_markername setMarkerColorLocal _markercolor;
					_markername setMarkerTextLocal (getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "DisplayName"));
					_markers = _markers +[_markername];
				};
				if ((alive _x) && (RIPPLAYERMARKER == 2)) then 
				{
					_markername = str(_x);
					_position = getPos _x;
					_marker = createMarkerLocal [_markername, _position];
					_marker setMarkerShapeLocal "ICON";
					_markername setMarkerTypeLocal "mil_triangle";
					_markername setMarkerSizeLocal [0.75,0.75];
					_markername setMarkerDirLocal 180;
					if ((damage _x) < 0.8) then {_markercolor="ColorOrange";} else {_markercolor="colorBLACK";};
					_markername setMarkerColorLocal _markercolor;
					_markername setMarkerTextLocal (getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "DisplayName"));
					_markers = _markers +[_markername];
				};
			} forEach _arrayofvehicle;
			sleep 3;
			
			{
				deleteMarkerLocal _x;
		
			}ForEach _markers;
			
			_markers=[];
			_arrayofvehicle = [RU1,RU2,RU3,RU4,RU5,RU6,RU7,RU8,RU9,RU10,RU11,RU12,RU13,RU14,RU15,RU16,RU17,RU18,RU19,RU20];
	};
};			