// Created by SMC v2.1.3 (for Arma 2)
// 11/10/15 22:46:31

// --Units--
_group0 = createGroup east;
	_unit10 = _group0 createUnit ["T55_TK_EP1",[9437.9678,11911.41,0],[],0,"NONE"];
		if (isNull _unit10) then {
			_unit10 = createVehicle ["T55_TK_EP1",[9437.9678,11911.41,0],[],0,"NONE"];
 			[_unit10,_group0] call BIS_fnc_spawnCrew;
		};
		(group _unit10) selectLeader _unit10;
		_unit10 setFormDir 175;
		_unit10 setDir 175;
		_unit10 setSkill 0.68399239;
		_unit10 setRank "SERGEANT";
	_unit0 = _group0 createUnit ["BMP2_TK_EP1",[9433.8398,11946.191,0],[],0,"NONE"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["BMP2_TK_EP1",[9433.8398,11946.191,0],[],0,"NONE"];
 			[_unit0,_group0] call BIS_fnc_spawnCrew;
		};
		_unit0 setSkill 0.70725936;
		_unit0 setRank "CORPORAL";
	_unit1 = _group0 createUnit ["ACE_BTR70_TK",[9432.5664,11970.607,0],[],0,"NONE"];
		if (isNull _unit1) then {
			_unit1 = createVehicle ["ACE_BTR70_TK",[9432.5664,11970.607,0],[],0,"NONE"];
 			[_unit1,_group0] call BIS_fnc_spawnCrew;
		};
		_unit1 setSkill 0.73052609;
		_unit1 setRank "CORPORAL";
	_unit2 = _group0 createUnit ["ACE_BTR70_TK",[9431.792,11980.767,0],[],0,"NONE"];
		if (isNull _unit2) then {
			_unit2 = createVehicle ["ACE_BTR70_TK",[9431.792,11980.767,0],[],0,"NONE"];
 			[_unit2,_group0] call BIS_fnc_spawnCrew;
		};
		_unit2 setSkill 0.68399239;
		_unit2 setRank "CORPORAL";
	sh1 = _group0 createUnit ["BTR60_TK_EP1",[9430.3594,11990.162,0],[],0,"NONE"];
		if (isNull sh1) then {
			sh1 = createVehicle ["BTR60_TK_EP1",[9430.3594,11990.162,0],[],0,"NONE"];
 			[sh1,_group0] call BIS_fnc_spawnCrew;
		};
		sh1 setVehicleVarName "sh1";
		sh1 setSkill 0.67235923;
		sh1 setRank "SERGEANT";
	_unit4 = _group0 createUnit ["LandRover_MG_TK_EP1",[9429.4336,12000.031,0],[],0,"NONE"];
		if (isNull _unit4) then {
			_unit4 = createVehicle ["LandRover_MG_TK_EP1",[9429.4336,12000.031,0],[],0,"NONE"];
 			[_unit4,_group0] call BIS_fnc_spawnCrew;
		};
		_unit4 setSkill 0.64909256;
		_unit4 setRank "SERGEANT";
	_unit5 = _group0 createUnit ["UAZ_AGS30_TK_EP1",[9428.002,12008.273,0],[],0,"NONE"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["UAZ_AGS30_TK_EP1",[9428.002,12008.273,0],[],0,"NONE"];
 			[_unit5,_group0] call BIS_fnc_spawnCrew;
		};
		_unit5 setSkill 0.68399239;
		_unit5 setRank "SERGEANT";
	sh = _group0 createUnit ["rhs_gaz66_taki",[9426.4463,12025.652,0],[],0,"NONE"];
		if (isNull sh) then {
			sh = createVehicle ["rhs_gaz66_taki",[9426.4463,12025.652,0],[],0,"NONE"];
 			[sh,_group0] call BIS_fnc_spawnCrew;
		};
		sh setVehicleVarName "sh";
		sh setSkill 0.67235923;
		sh setRank "SERGEANT";
		sh setVehicleInit "r1 moveInCargo sh";
	_unit7 = _group0 createUnit ["M113_TK_EP1",[9427.2979,12016.371,0],[],0,"NONE"];
		if (isNull _unit7) then {
			_unit7 = createVehicle ["M113_TK_EP1",[9427.2979,12016.371,0],[],0,"NONE"];
 			[_unit7,_group0] call BIS_fnc_spawnCrew;
		};
		_unit7 setSkill 0.73634267;
		_unit7 setRank "SERGEANT";
	_unit8 = _group0 createUnit ["T34_TK_EP1",[9436.5352,11924.346,0],[],0,"NONE"];
		if (isNull _unit8) then {
			_unit8 = createVehicle ["T34_TK_EP1",[9436.5352,11924.346,0],[],0,"NONE"];
 			[_unit8,_group0] call BIS_fnc_spawnCrew;
		};
		_unit8 setRank "SERGEANT";
	_unit9 = _group0 createUnit ["T34_TK_EP1",[9434.4004,11934.99,0],[],0,"NONE"];
		if (isNull _unit9) then {
			_unit9 = createVehicle ["T34_TK_EP1",[9434.4004,11934.99,0],[],0,"NONE"];
 			[_unit9,_group0] call BIS_fnc_spawnCrew;
		};
		_unit9 setSkill 0.78869295;
		_unit9 setRank "SERGEANT";
	if (random 1 < 0.3) then {
	_unit11 = _group0 createUnit ["pzn_t62_des",[9434.082,11957.101,0],[],0,"NONE"];
		if (isNull _unit11) then {
			_unit11 = createVehicle ["pzn_t62_des",[9434.082,11957.101,0],[],0,"NONE"];
 			[_unit11,_group0] call BIS_fnc_spawnCrew;
		};
		_unit11 setSkill 0.74215925;
		_unit11 setRank "SERGEANT";
	};
_group1 = createGroup east;
	r4 = _group1 createUnit ["TK_Special_Forces_TL_EP1",[9464.0166,12018.463,0],[],0,"FLY"];
		if (isNull r4) then {
			r4 = createVehicle ["TK_Special_Forces_TL_EP1",[9464.0166,12018.463,0],[],0,"FLY"];
 			[r4,_group1] call BIS_fnc_spawnCrew;
		};
		r4 setVehicleVarName "r4";
		(group r4) selectLeader r4;
		r4 setFormDir 180;
		r4 setDir 180;
		r4 setSkill 0.74215925;
		r4 setRank "SERGEANT";
		r4 setVehicleInit "r4 moveInCargo sh";
	r3 = _group1 createUnit ["TK_Special_Forces_EP1",[9466.0459,12018.647,0],[],0,"FLY"];
		if (isNull r3) then {
			r3 = createVehicle ["TK_Special_Forces_EP1",[9466.0459,12018.647,0],[],0,"FLY"];
 			[r3,_group1] call BIS_fnc_spawnCrew;
		};
		r3 setVehicleVarName "r3";
		r3 setSkill 0.74215925;
		r3 setRank "SERGEANT";
		r3 setVehicleInit "r3 moveInCargo sh";
	r2 = _group1 createUnit ["pzn_gc_tk_spn_soldier_rad",[9467.6807,12018.853,0],[],0,"FLY"];
		if (isNull r2) then {
			r2 = createVehicle ["pzn_gc_tk_spn_soldier_rad",[9467.6807,12018.853,0],[],0,"FLY"];
 			[r2,_group1] call BIS_fnc_spawnCrew;
		};
		r2 setVehicleVarName "r2";
		r2 setSkill 0.74215925;
		r2 setRank "SERGEANT";
		r2 setVehicleInit "r2 moveInCargo sh";
	r5 = _group1 createUnit ["pzn_gc_tk_spn_soldier_rpo",[9462.2148,12018.494,0],[],0,"FLY"];
		if (isNull r5) then {
			r5 = createVehicle ["pzn_gc_tk_spn_soldier_rpo",[9462.2148,12018.494,0],[],0,"FLY"];
 			[r5,_group1] call BIS_fnc_spawnCrew;
		};
		r5 setVehicleVarName "r5";
		r5 setSkill 0.74215925;
		r5 setRank "SERGEANT";
		r5 setVehicleInit "r5 moveInCargo sh";
	r6 = _group1 createUnit ["TK_Special_Forces_MG_EP1",[9460.8867,12018.955,0],[],0,"FLY"];
		if (isNull r6) then {
			r6 = createVehicle ["TK_Special_Forces_MG_EP1",[9460.8867,12018.955,0],[],0,"FLY"];
 			[r6,_group1] call BIS_fnc_spawnCrew;
		};
		r6 setVehicleVarName "r6";
		r6 setSkill 0.74215925;
		r6 setRank "SERGEANT";
		r6 setVehicleInit "r6 moveInCargo sh";
	r7 = _group1 createUnit ["pzn_gc_tk_spn_soldier_lat",[9459.2012,12019.107,0],[],0,"FLY"];
		if (isNull r7) then {
			r7 = createVehicle ["pzn_gc_tk_spn_soldier_lat",[9459.2012,12019.107,0],[],0,"FLY"];
 			[r7,_group1] call BIS_fnc_spawnCrew;
		};
		r7 setVehicleVarName "r7";
		r7 setSkill 0.74215925;
		r7 setRank "SERGEANT";
		r7 setVehicleInit "r7 moveInCargo sh";
	r1 = _group1 createUnit ["TK_Special_Forces_EP1",[9469.6221,12019.62,0],[],0,"FLY"];
		if (isNull r1) then {
			r1 = createVehicle ["TK_Special_Forces_EP1",[9469.6221,12019.62,0],[],0,"FLY"];
 			[r1,_group1] call BIS_fnc_spawnCrew;
		};
		r1 setVehicleVarName "r1";
		r1 setSkill 0.74215925;
		r1 setRank "SERGEANT";
		r1 setVehicleInit "r1 moveInCargo sh";
	r8 = _group1 createUnit ["TK_Special_Forces_MG_EP1",[9458.0088,12019.804,0],[],0,"FLY"];
		if (isNull r8) then {
			r8 = createVehicle ["TK_Special_Forces_MG_EP1",[9458.0088,12019.804,0],[],0,"FLY"];
 			[r8,_group1] call BIS_fnc_spawnCrew;
		};
		r8 setVehicleVarName "r8";
		r8 setSkill 0.74215925;
		r8 setRank "SERGEANT";
		r8 setVehicleInit "r8 moveInCargo sh";
_group2 = createGroup east;
	r4_1 = _group2 createUnit ["TK_Special_Forces_TL_EP1",[9463.5586,12028.258,0],[],0,"FLY"];
		if (isNull r4_1) then {
			r4_1 = createVehicle ["TK_Special_Forces_TL_EP1",[9463.5586,12028.258,0],[],0,"FLY"];
 			[r4_1,_group2] call BIS_fnc_spawnCrew;
		};
		r4_1 setVehicleVarName "r4_1";
		(group r4_1) selectLeader r4_1;
		r4_1 setFormDir 180;
		r4_1 setDir 180;
		r4_1 setSkill 0.74215925;
		r4_1 setRank "SERGEANT";
		r4_1 setVehicleInit "r4_1 moveInCargo sh1";
	r3_1 = _group2 createUnit ["TK_Special_Forces_EP1",[9465.5879,12028.443,0],[],0,"FLY"];
		if (isNull r3_1) then {
			r3_1 = createVehicle ["TK_Special_Forces_EP1",[9465.5879,12028.443,0],[],0,"FLY"];
 			[r3_1,_group2] call BIS_fnc_spawnCrew;
		};
		r3_1 setVehicleVarName "r3_1";
		r3_1 setSkill 0.74215925;
		r3_1 setRank "SERGEANT";
		r3_1 setVehicleInit "r3_1 moveInCargo sh1";
	r2_1 = _group2 createUnit ["pzn_gc_tk_spn_soldier_rad",[9467.2217,12028.647,0],[],0,"FLY"];
		if (isNull r2_1) then {
			r2_1 = createVehicle ["pzn_gc_tk_spn_soldier_rad",[9467.2217,12028.647,0],[],0,"FLY"];
 			[r2_1,_group2] call BIS_fnc_spawnCrew;
		};
		r2_1 setVehicleVarName "r2_1";
		r2_1 setSkill 0.74215925;
		r2_1 setRank "SERGEANT";
		r2_1 setVehicleInit "r2_1 moveInCargo sh1";
	r5_1 = _group2 createUnit ["pzn_gc_tk_spn_soldier_rpo",[9461.7568,12028.29,0],[],0,"FLY"];
		if (isNull r5_1) then {
			r5_1 = createVehicle ["pzn_gc_tk_spn_soldier_rpo",[9461.7568,12028.29,0],[],0,"FLY"];
 			[r5_1,_group2] call BIS_fnc_spawnCrew;
		};
		r5_1 setVehicleVarName "r5_1";
		r5_1 setSkill 0.74215925;
		r5_1 setRank "SERGEANT";
		r5_1 setVehicleInit "r5_1 moveInCargo sh1";
	r6_1 = _group2 createUnit ["TK_Special_Forces_MG_EP1",[9460.4287,12028.75,0],[],0,"FLY"];
		if (isNull r6_1) then {
			r6_1 = createVehicle ["TK_Special_Forces_MG_EP1",[9460.4287,12028.75,0],[],0,"FLY"];
 			[r6_1,_group2] call BIS_fnc_spawnCrew;
		};
		r6_1 setVehicleVarName "r6_1";
		r6_1 setSkill 0.74215925;
		r6_1 setRank "SERGEANT";
		r6_1 setVehicleInit "r6_1 moveInCargo sh1";
	r7_1 = _group2 createUnit ["pzn_gc_tk_spn_soldier_lat",[9458.7422,12028.903,0],[],0,"FLY"];
		if (isNull r7_1) then {
			r7_1 = createVehicle ["pzn_gc_tk_spn_soldier_lat",[9458.7422,12028.903,0],[],0,"FLY"];
 			[r7_1,_group2] call BIS_fnc_spawnCrew;
		};
		r7_1 setVehicleVarName "r7_1";
		r7_1 setSkill 0.74215925;
		r7_1 setRank "SERGEANT";
		r7_1 setVehicleInit "r7_1 moveInCargo sh1";
	r1_1 = _group2 createUnit ["TK_Special_Forces_EP1",[9469.1631,12029.415,0],[],0,"FLY"];
		if (isNull r1_1) then {
			r1_1 = createVehicle ["TK_Special_Forces_EP1",[9469.1631,12029.415,0],[],0,"FLY"];
 			[r1_1,_group2] call BIS_fnc_spawnCrew;
		};
		r1_1 setVehicleVarName "r1_1";
		r1_1 setSkill 0.74215925;
		r1_1 setRank "SERGEANT";
		r1_1 setVehicleInit "r1_1 moveInCargo sh1";
	r8_1 = _group2 createUnit ["TK_Special_Forces_MG_EP1",[9457.5498,12029.6,0],[],0,"FLY"];
		if (isNull r8_1) then {
			r8_1 = createVehicle ["TK_Special_Forces_MG_EP1",[9457.5498,12029.6,0],[],0,"FLY"];
 			[r8_1,_group2] call BIS_fnc_spawnCrew;
		};
		r8_1 setVehicleVarName "r8_1";
		r8_1 setSkill 0.74215925;
		r8_1 setRank "SERGEANT";
		r8_1 setVehicleInit "r8_1 moveInCargo sh1";
// --Waypoints--
_wp00 = _group0 addWaypoint [[8255.8008,7792.7651,0],0];
	_wp00 setWaypointCombatMode "GREEN";
	_wp00 setWaypointBehaviour "SAFE";
	_wp00 setWaypointSpeed "NORMAL";
	_wp00 setWaypointFormation "FILE";
_wp01 = _group0 addWaypoint [[5536.5205,8917.7002,0],0];
_wp02 = _group0 addWaypoint [[5865.0181,6696.251,0],0];
_wp03 = _group0 addWaypoint [[3667.2673,5623.001,0],0];
_wp04 = _group0 addWaypoint [[4407.2124,808.42053,0],0];
processInitCommands;