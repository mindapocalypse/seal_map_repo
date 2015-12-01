//by RIP
private ["_crew","_vehicle","_name","_text","_ctrlText","_check"];


disableSerialization;
_check = 0;
while {true} do {
		if(vehicle player != player) then {
			_crew = crew (vehicle player);
			_vehicle = vehicle player;

			titleRsc ["RIP_RESPAWN", "PLAIN"];
			_text = "";
			_name= getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "DisplayName");
			_text= format ["<t size='1.55' shadow='true' color='#60A344'>%1</t><br/>", _name];

			{
				if(!(format["%1", name _x] == "") and !(format["%1", name _x] == "Error: No unit")) then {
					_role = assignedVehicleRole _x;
					switch(_x)do {
						case commander _vehicle: {
							_text=_text+format ["<t size='1.5'><img image='Pics\Icons\i_commander_ca.paa'></t> <t size='1.35' shadow='true' color='#AAAAFF'>%1</t><br/>", name _x];
						};
							
							
						case gunner _vehicle: {
							_text=_text+format ["<t size='1.5'><img image='Pics\Icons\i_gunner_ca.paa'></t> <t size='1.35' shadow='true' color='#FF8888'>%1</t><br/>", name _x];
						};
							
							
						case driver _vehicle: {		
							_text=_text+format ["<t size='1.5'><img image='Pics\Icons\i_driver_ca.paa'></t> <t size='1.35' shadow='true' color='#88FF88'>%1</t><br/>", name _x];
						};
							
					
						default	{
							if(format["%1", (_role select 0)] != "Turret") then {
								_text=_text+format ["<t size='1.5'><img image='Pics\Icons\i_cargo_ca.paa'></t> <t size='1.35' shadow='true' color='#EEEEEE'>%1</t><br/>", name _x];
							} else {
								_text=_text+format ["<t size='1.5'><img image='Pics\Icons\i_gunner_ca.paa'></t> <t size='1.35' shadow='true' color='#FF8888'>%1</t><br/>", name _x];
							};
						};
					};
				};
			}forEach _crew;

			_ctrlText = (uiNamespace getVariable 'RIP_RESPAWN_TEXT') displayCtrl 64435;
			_ctrlText ctrlSetStructuredText parseText _text;
			_check = 1;
		};

		if ((vehicle player == player) && (_check == 1)) then { 
											_text = "";
											_ctrlText ctrlSetStructuredText parseText _text;
											_check = 0;
		};

      sleep 1;
};
