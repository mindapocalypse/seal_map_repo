// Created by SMC v2.1.3 (for Arma 2)
// 11/10/15 22:45:22

// --Units--
_group0 = createGroup east;
	_unit0 = _group0 createUnit ["BMP3",[9506.5479,11795.878,0],[],0,"NONE"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["BMP3",[9506.5479,11795.878,0],[],0,"NONE"];
 			[_unit0,_group0] call BIS_fnc_spawnCrew;
		};
		_unit0 setSkill 0.84685951;
		_unit0 setRank "CORPORAL";
	_unit1 = _group0 createUnit ["BTR90",[9498.9326,11804.95,0],[],0,"NONE"];
		if (isNull _unit1) then {
			_unit1 = createVehicle ["BTR90",[9498.9326,11804.95,0],[],0,"NONE"];
 			[_unit1,_group0] call BIS_fnc_spawnCrew;
		};
		_unit1 setSkill 0.84685951;
		_unit1 setRank "CORPORAL";
	k1 = _group0 createUnit ["BTR90",[9491.1592,11813.479,0],[],0,"NONE"];
		if (isNull k1) then {
			k1 = createVehicle ["BTR90",[9491.1592,11813.479,0],[],0,"NONE"];
 			[k1,_group0] call BIS_fnc_spawnCrew;
		};
		k1 setVehicleVarName "k1";
		k1 setSkill 0.84685951;
		k1 setRank "CORPORAL";
	_unit3 = _group0 createUnit ["GAZ_Vodnik_HMG",[9514.1973,11789.728,0],[],0,"NONE"];
		if (isNull _unit3) then {
			_unit3 = createVehicle ["GAZ_Vodnik_HMG",[9514.1973,11789.728,0],[],0,"NONE"];
 			[_unit3,_group0] call BIS_fnc_spawnCrew;
		};
		(group _unit3) selectLeader _unit3;
		_unit3 setFormDir 140;
		_unit3 setDir 140;
		_unit3 setSkill 0.84685951;
		_unit3 setRank "SERGEANT";
	_unit4 = _group0 createUnit ["ACE_T72BA_Base",[9483.6582,11823.882,0],[],0,"NONE"];
		if (isNull _unit4) then {
			_unit4 = createVehicle ["ACE_T72BA_Base",[9483.6582,11823.882,0],[],0,"NONE"];
 			[_unit4,_group0] call BIS_fnc_spawnCrew;
		};
		_unit4 setSkill 0.84685951;
		_unit4 setRank "CORPORAL";
	_unit5 = _group0 createUnit ["ACE_T72BA_Base",[9477.1162,11832.627,0],[],0,"NONE"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["ACE_T72BA_Base",[9477.1162,11832.627,0],[],0,"NONE"];
 			[_unit5,_group0] call BIS_fnc_spawnCrew;
		};
		_unit5 setSkill 0.84685951;
		_unit5 setRank "CORPORAL";
	_unit6 = _group0 createUnit ["ACE_T72BA_Base",[9472.4844,11841.544,0],[],0,"NONE"];
		if (isNull _unit6) then {
			_unit6 = createVehicle ["ACE_T72BA_Base",[9472.4844,11841.544,0],[],0,"NONE"];
 			[_unit6,_group0] call BIS_fnc_spawnCrew;
		};
		_unit6 setSkill 0.84685951;
		_unit6 setRank "CORPORAL";
	k = _group0 createUnit ["Kamaz",[9466.1084,11851.276,0],[],0,"NONE"];
		if (isNull k) then {
			k = createVehicle ["Kamaz",[9466.1084,11851.276,0],[],0,"NONE"];
 			[k,_group0] call BIS_fnc_spawnCrew;
		};
		k setVehicleVarName "k";
		k setSkill 0.84685951;
		k setRank "CORPORAL";
	_unit8 = _group0 createUnit ["KamazRefuel",[9462.2861,11861.027,0],[],0,"NONE"];
		if (isNull _unit8) then {
			_unit8 = createVehicle ["KamazRefuel",[9462.2861,11861.027,0],[],0,"NONE"];
 			[_unit8,_group0] call BIS_fnc_spawnCrew;
		};
		_unit8 setSkill 0.84685951;
		_unit8 setRank "CORPORAL";
	if (random 1 < 0.15) then {
	_unit9 = _group0 createUnit ["T90",[9455.6592,11871.911,0],[],0,"NONE"];
		if (isNull _unit9) then {
			_unit9 = createVehicle ["T90",[9455.6592,11871.911,0],[],0,"NONE"];
 			[_unit9,_group0] call BIS_fnc_spawnCrew;
		};
		_unit9 setSkill 0.84685951;
		_unit9 setRank "CORPORAL";
	};
_group1 = createGroup east;
	a1 = _group1 createUnit ["rf_des_scpec_TL",[9429.5879,11808.399,0],[],0,"NONE"];
		if (isNull a1) then {
			a1 = createVehicle ["rf_des_scpec_TL",[9429.5879,11808.399,0],[],0,"NONE"];
 			[a1,_group1] call BIS_fnc_spawnCrew;
		};
		a1 setVehicleVarName "a1";
		(group a1) selectLeader a1;
		a1 setFormDir 100;
		a1 setDir 100;
		a1 setSkill 0.84685951;
		a1 setRank "CORPORAL";
		a1 setVehicleInit "a1 moveInCargo k";
	a2 = _group1 createUnit ["rf_des_scpec3",[9429.2158,11811.881,0],[],0,"NONE"];
		if (isNull a2) then {
			a2 = createVehicle ["rf_des_scpec3",[9429.2158,11811.881,0],[],0,"NONE"];
 			[a2,_group1] call BIS_fnc_spawnCrew;
		};
		a2 setVehicleVarName "a2";
		a2 setSkill 0.84685951;
		a2 setRank "CORPORAL";
		a2 setVehicleInit "a2 moveInCargo k";
	a3 = _group1 createUnit ["rf_des_scpec3",[9429.2822,11814.141,0],[],0,"NONE"];
		if (isNull a3) then {
			a3 = createVehicle ["rf_des_scpec3",[9429.2822,11814.141,0],[],0,"NONE"];
 			[a3,_group1] call BIS_fnc_spawnCrew;
		};
		a3 setVehicleVarName "a3";
		a3 setSkill 0.84685951;
		a3 setRank "CORPORAL";
		a3 setVehicleInit "a3 moveInCargo k";
	a4 = _group1 createUnit ["rf_des_scpec_VSS",[9428.8838,11816.6,0],[],0,"NONE"];
		if (isNull a4) then {
			a4 = createVehicle ["rf_des_scpec_VSS",[9428.8838,11816.6,0],[],0,"NONE"];
 			[a4,_group1] call BIS_fnc_spawnCrew;
		};
		a4 setVehicleVarName "a4";
		a4 setSkill 0.84685951;
		a4 setRank "CORPORAL";
		a4 setVehicleInit "a4 moveInCargo k";
	a5 = _group1 createUnit ["rf_des_scpec_MG",[9428.751,11818.793,0],[],0,"NONE"];
		if (isNull a5) then {
			a5 = createVehicle ["rf_des_scpec_MG",[9428.751,11818.793,0],[],0,"NONE"];
 			[a5,_group1] call BIS_fnc_spawnCrew;
		};
		a5 setVehicleVarName "a5";
		a5 setSkill 0.84685951;
		a5 setRank "CORPORAL";
		a5 setVehicleInit "a5 moveInCargo k";
	a6 = _group1 createUnit ["rf_des_scpec_SVD",[9428.6846,11820.455,0],[],0,"NONE"];
		if (isNull a6) then {
			a6 = createVehicle ["rf_des_scpec_SVD",[9428.6846,11820.455,0],[],0,"NONE"];
 			[a6,_group1] call BIS_fnc_spawnCrew;
		};
		a6 setVehicleVarName "a6";
		a6 setSkill 0.84685951;
		a6 setRank "CORPORAL";
		a6 setVehicleInit "a6 moveInCargo k";
	a7 = _group1 createUnit ["rf_des_scpec_GL",[9428.6182,11822.051,0],[],0,"NONE"];
		if (isNull a7) then {
			a7 = createVehicle ["rf_des_scpec_GL",[9428.6182,11822.051,0],[],0,"NONE"];
 			[a7,_group1] call BIS_fnc_spawnCrew;
		};
		a7 setVehicleVarName "a7";
		a7 setSkill 0.84685951;
		a7 setRank "CORPORAL";
		a7 setVehicleInit "a7 moveInCargo k";
	a8 = _group1 createUnit ["rf_des_scpec_GL",[9428.2861,11823.78,0],[],0,"NONE"];
		if (isNull a8) then {
			a8 = createVehicle ["rf_des_scpec_GL",[9428.2861,11823.78,0],[],0,"NONE"];
 			[a8,_group1] call BIS_fnc_spawnCrew;
		};
		a8 setVehicleVarName "a8";
		a8 setSkill 0.84685951;
		a8 setRank "CORPORAL";
		a8 setVehicleInit "a8 moveInCargo k";
	a9 = _group1 createUnit ["rf_des_scpec_VSS",[9428.0986,11825.793,0],[],0,"NONE"];
		if (isNull a9) then {
			a9 = createVehicle ["rf_des_scpec_VSS",[9428.0986,11825.793,0],[],0,"NONE"];
 			[a9,_group1] call BIS_fnc_spawnCrew;
		};
		a9 setVehicleVarName "a9";
		a9 setSkill 0.84685951;
		a9 setRank "CORPORAL";
		a9 setVehicleInit "a9 moveInCargo k";
	a0 = _group1 createUnit ["rf_des_scpec_MG",[9427.9414,11827.466,0],[],0,"NONE"];
		if (isNull a0) then {
			a0 = createVehicle ["rf_des_scpec_MG",[9427.9414,11827.466,0],[],0,"NONE"];
 			[a0,_group1] call BIS_fnc_spawnCrew;
		};
		a0 setVehicleVarName "a0";
		a0 setSkill 0.84685951;
		a0 setRank "CORPORAL";
		a0 setVehicleInit "a0 moveInCargo k";
_group2 = createGroup east;
	a1_1 = _group2 createUnit ["rf_des_scpec_TL",[9473.5156,11801.251,0],[],0,"NONE"];
		if (isNull a1_1) then {
			a1_1 = createVehicle ["rf_des_scpec_TL",[9473.5156,11801.251,0],[],0,"NONE"];
 			[a1_1,_group2] call BIS_fnc_spawnCrew;
		};
		a1_1 setVehicleVarName "a1_1";
		(group a1_1) selectLeader a1_1;
		a1_1 setFormDir 100;
		a1_1 setDir 100;
		a1_1 setSkill 0.84685951;
		a1_1 setRank "CORPORAL";
		a1_1 setVehicleInit "a1_1 moveInCargo k1";
	a4_1 = _group2 createUnit ["rf_des_scpec_VSS",[9472.8125,11809.452,0],[],0,"NONE"];
		if (isNull a4_1) then {
			a4_1 = createVehicle ["rf_des_scpec_VSS",[9472.8125,11809.452,0],[],0,"NONE"];
 			[a4_1,_group2] call BIS_fnc_spawnCrew;
		};
		a4_1 setVehicleVarName "a4_1";
		a4_1 setSkill 0.84685951;
		a4_1 setRank "CORPORAL";
		a4_1 setVehicleInit "a4_1 moveInCargo k1";
	a5_1 = _group2 createUnit ["rf_des_scpec_MG",[9472.6797,11811.646,0],[],0,"NONE"];
		if (isNull a5_1) then {
			a5_1 = createVehicle ["rf_des_scpec_MG",[9472.6797,11811.646,0],[],0,"NONE"];
 			[a5_1,_group2] call BIS_fnc_spawnCrew;
		};
		a5_1 setVehicleVarName "a5_1";
		a5_1 setSkill 0.84685951;
		a5_1 setRank "CORPORAL";
		a5_1 setVehicleInit "a5_1 moveInCargo k1";
	a6_1 = _group2 createUnit ["rf_des_scpec_SVD",[9472.6133,11813.307,0],[],0,"NONE"];
		if (isNull a6_1) then {
			a6_1 = createVehicle ["rf_des_scpec_SVD",[9472.6133,11813.307,0],[],0,"NONE"];
 			[a6_1,_group2] call BIS_fnc_spawnCrew;
		};
		a6_1 setVehicleVarName "a6_1";
		a6_1 setSkill 0.84685951;
		a6_1 setRank "CORPORAL";
		a6_1 setVehicleInit "a6_1 moveInCargo k1";
	a7_1 = _group2 createUnit ["rf_des_scpec_GL",[9472.5469,11814.902,0],[],0,"NONE"];
		if (isNull a7_1) then {
			a7_1 = createVehicle ["rf_des_scpec_GL",[9472.5469,11814.902,0],[],0,"NONE"];
 			[a7_1,_group2] call BIS_fnc_spawnCrew;
		};
		a7_1 setVehicleVarName "a7_1";
		a7_1 setSkill 0.84685951;
		a7_1 setRank "CORPORAL";
		a7_1 setVehicleInit "a7_1 moveInCargo k1";
	a8_1 = _group2 createUnit ["rf_des_scpec_GL",[9472.2139,11816.632,0],[],0,"NONE"];
		if (isNull a8_1) then {
			a8_1 = createVehicle ["rf_des_scpec_GL",[9472.2139,11816.632,0],[],0,"NONE"];
 			[a8_1,_group2] call BIS_fnc_spawnCrew;
		};
		a8_1 setVehicleVarName "a8_1";
		a8_1 setSkill 0.84685951;
		a8_1 setRank "CORPORAL";
		a8_1 setVehicleInit "a8_1 moveInCargo k1";
	a9_1 = _group2 createUnit ["rf_des_scpec_VSS",[9472.0264,11818.645,0],[],0,"NONE"];
		if (isNull a9_1) then {
			a9_1 = createVehicle ["rf_des_scpec_VSS",[9472.0264,11818.645,0],[],0,"NONE"];
 			[a9_1,_group2] call BIS_fnc_spawnCrew;
		};
		a9_1 setVehicleVarName "a9_1";
		a9_1 setSkill 0.84685951;
		a9_1 setRank "CORPORAL";
		a9_1 setVehicleInit "a9_1 moveInCargo k1";
// --Waypoints--
_wp00 = _group0 addWaypoint [[8257.0811,7794.6348,0],0];
	_wp00 setWaypointCombatMode "GREEN";
	_wp00 setWaypointBehaviour "SAFE";
	_wp00 setWaypointSpeed "NORMAL";
	_wp00 setWaypointFormation "FILE";
_wp01 = _group0 addWaypoint [[5538.1777,8922.5293,0],0];
_wp02 = _group0 addWaypoint [[5865.3286,6699.0371,0],0];
_wp03 = _group0 addWaypoint [[3665.0276,5623.2573,0],0];
_wp04 = _group0 addWaypoint [[4410.6748,812.41681,0],0];
processInitCommands;