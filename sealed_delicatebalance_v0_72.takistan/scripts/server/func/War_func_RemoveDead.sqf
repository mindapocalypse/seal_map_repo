if !(isServer) exitWith {};
while {!(Server getVariable "RIPMISSIONCOMPLETED")} do                                            
{
    {
	if (!alive _x) then {
			       _deadTimer = _x getVariable "gc_deadTimer";         
			       if (isNil "_deadTimer") then                        
 			       {
 			           _x setVariable ["gc_deadTimer", 180];
			       }
 			       else                                                
			       {
			            if (_deadTimer > 0) then                        
			            {
			                _deadTimer = _deadTimer - 30;   
			                _x setVariable ["gc_deadTimer", _deadTimer];
 			            }
			            else                                            
			            {
					    RIPMISSIONGUARDUNITS = RIPMISSIONGUARDUNITS - [_x];
			                hideBody _x;deleteVehicle _x;                           
			            };
			       }; 
	}; 
	sleep 0.05;                             
    } forEach RIPMISSIONGUARDUNITS;                         
    sleep 30;
};