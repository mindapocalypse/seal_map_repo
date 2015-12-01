// Created by SMC v2.1.3 (for Arma 2)
// 11/10/15 22:46:02

// --Units--
_group0 = createGroup resistance;
	_unit0 = _group0 createUnit ["BRDM2_TK_GUE_EP1",[9437.7734,11920.939,0],[],0,"NONE"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["BRDM2_TK_GUE_EP1",[9437.7734,11920.939,0],[],0,"NONE"];
 			[_unit0,_group0] call BIS_fnc_spawnCrew;
		};
		(group _unit0) selectLeader _unit0;
		_unit0 setFormDir 175;
		_unit0 setDir 175;
		_unit0 setRank "SERGEANT";
	b40 = _group0 createUnit ["BTR40_TK_GUE_EP1",[9436.6504,11930.225,0],[],0,"NONE"];
		if (isNull b40) then {
			b40 = createVehicle ["BTR40_TK_GUE_EP1",[9436.6504,11930.225,0],[],0,"NONE"];
 			[b40,_group0] call BIS_fnc_spawnCrew;
		};
		b40 setVehicleVarName "b40";
		b40 setRank "CORPORAL";
	_unit2 = _group0 createUnit ["BRDM2_HQ_TK_GUE_EP1",[9435.4785,11941.248,0],[],0,"NONE"];
		if (isNull _unit2) then {
			_unit2 = createVehicle ["BRDM2_HQ_TK_GUE_EP1",[9435.4785,11941.248,0],[],0,"NONE"];
 			[_unit2,_group0] call BIS_fnc_spawnCrew;
		};
	_unit3 = _group0 createUnit ["Pickup_PK_TK_GUE_EP1",[9434.3379,11951.796,0],[],0,"NONE"];
		if (isNull _unit3) then {
			_unit3 = createVehicle ["Pickup_PK_TK_GUE_EP1",[9434.3379,11951.796,0],[],0,"NONE"];
 			[_unit3,_group0] call BIS_fnc_spawnCrew;
		};
	p1 = _group0 createUnit ["V3S_TK_GUE_EP1",[9432.458,11962.225,0],[],0,"NONE"];
		if (isNull p1) then {
			p1 = createVehicle ["V3S_TK_GUE_EP1",[9432.458,11962.225,0],[],0,"NONE"];
 			[p1,_group0] call BIS_fnc_spawnCrew;
		};
		p1 setVehicleVarName "p1";
	p2 = _group0 createUnit ["V3S_TK_GUE_EP1",[9433.8535,11978.125,0],[],0,"NONE"];
		if (isNull p2) then {
			p2 = createVehicle ["V3S_TK_GUE_EP1",[9433.8535,11978.125,0],[],0,"NONE"];
 			[p2,_group0] call BIS_fnc_spawnCrew;
		};
		p2 setVehicleVarName "p2";
	_unit6 = _group0 createUnit ["Offroad_DSHKM_TK_GUE_EP1",[9429.0625,11994.062,0],[],0,"NONE"];
		if (isNull _unit6) then {
			_unit6 = createVehicle ["Offroad_DSHKM_TK_GUE_EP1",[9429.0625,11994.062,0],[],0,"NONE"];
 			[_unit6,_group0] call BIS_fnc_spawnCrew;
		};
	if (random 1 < 0.15) then {
	_unit7 = _group0 createUnit ["T34_TK_GUE_EP1",[9427.6182,12002.015,0],[],0,"NONE"];
		if (isNull _unit7) then {
			_unit7 = createVehicle ["T34_TK_GUE_EP1",[9427.6182,12002.015,0],[],0,"NONE"];
 			[_unit7,_group0] call BIS_fnc_spawnCrew;
		};
	};
	_unit5 = _group0 createUnit ["Offroad_DSHKM_TK_GUE_EP1",[9432.1426,11989.084,0],[],0,"NONE"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["Offroad_DSHKM_TK_GUE_EP1",[9432.1426,11989.084,0],[],0,"NONE"];
 			[_unit5,_group0] call BIS_fnc_spawnCrew;
		};
_group1 = createGroup resistance;
	q1 = _group1 createUnit ["TK_GUE_Soldier_TL_EP1",[9414.6592,11938.255,0],[],0,"FLY"];
		if (isNull q1) then {
			q1 = createVehicle ["TK_GUE_Soldier_TL_EP1",[9414.6592,11938.255,0],[],0,"FLY"];
 			[q1,_group1] call BIS_fnc_spawnCrew;
		};
		q1 setVehicleVarName "q1";
		(group q1) selectLeader q1;
		q1 setFormDir 15;
		q1 setDir 15;
		q1 setRank "CORPORAL";
		q1 setVehicleInit "q1 moveInCargo b40";
	q2 = _group1 createUnit ["TK_GUE_Soldier_Sniper_EP1",[9413.5508,11939.72,0],[],0,"FLY"];
		if (isNull q2) then {
			q2 = createVehicle ["TK_GUE_Soldier_Sniper_EP1",[9413.5508,11939.72,0],[],0,"FLY"];
 			[q2,_group1] call BIS_fnc_spawnCrew;
		};
		q2 setVehicleVarName "q2";
		q2 setRank "CORPORAL";
		q2 setVehicleInit "q2 moveInCargo b40";
	q3 = _group1 createUnit ["TK_GUE_Soldier_AT_EP1",[9414.7646,11939.566,0],[],0,"FLY"];
		if (isNull q3) then {
			q3 = createVehicle ["TK_GUE_Soldier_AT_EP1",[9414.7646,11939.566,0],[],0,"FLY"];
 			[q3,_group1] call BIS_fnc_spawnCrew;
		};
		q3 setVehicleVarName "q3";
		q3 setRank "CORPORAL";
		q3 setVehicleInit "q3 moveInCargo b40";
	q4 = _group1 createUnit ["TK_GUE_Bonesetter_EP1",[9415.6855,11939.325,0],[],0,"FLY"];
		if (isNull q4) then {
			q4 = createVehicle ["TK_GUE_Bonesetter_EP1",[9415.6855,11939.325,0],[],0,"FLY"];
 			[q4,_group1] call BIS_fnc_spawnCrew;
		};
		q4 setVehicleVarName "q4";
		q4 setRank "CORPORAL";
		q4 setVehicleInit "q4 moveInCargo b40";
_group2 = createGroup resistance;
	w1 = _group2 createUnit ["TK_GUE_Warlord_EP1",[9379.251,11942.922,0],[],0,"FLY"];
		if (isNull w1) then {
			w1 = createVehicle ["TK_GUE_Warlord_EP1",[9379.251,11942.922,0],[],0,"FLY"];
 			[w1,_group2] call BIS_fnc_spawnCrew;
		};
		w1 setVehicleVarName "w1";
		(group w1) selectLeader w1;
		w1 setRank "SERGEANT";
		w1 setVehicleInit "w1 moveInCargo p1";
	w7 = _group2 createUnit ["TK_GUE_Soldier_TL_EP1",[9380.1855,11945.996,0],[],0,"FLY"];
		if (isNull w7) then {
			w7 = createVehicle ["TK_GUE_Soldier_TL_EP1",[9380.1855,11945.996,0],[],0,"FLY"];
 			[w7,_group2] call BIS_fnc_spawnCrew;
		};
		w7 setVehicleVarName "w7";
		w7 setRank "CORPORAL";
		w7 setVehicleInit "w7 moveInCargo p1";
	w8 = _group2 createUnit ["pzn_gc_tk_gue_soldier_SMLE",[9379.249,11946.063,0],[],0,"FLY"];
		if (isNull w8) then {
			w8 = createVehicle ["pzn_gc_tk_gue_soldier_SMLE",[9379.249,11946.063,0],[],0,"FLY"];
 			[w8,_group2] call BIS_fnc_spawnCrew;
		};
		w8 setVehicleVarName "w8";
		w8 setRank "CORPORAL";
		w8 setVehicleInit "w8 moveInCargo p1";
	w9 = _group2 createUnit ["pzn_gc_tk_gue_soldier_fal",[9378.5625,11946.089,0],[],0,"FLY"];
		if (isNull w9) then {
			w9 = createVehicle ["pzn_gc_tk_gue_soldier_fal",[9378.5625,11946.089,0],[],0,"FLY"];
 			[w9,_group2] call BIS_fnc_spawnCrew;
		};
		w9 setVehicleVarName "w9";
		w9 setRank "CORPORAL";
		w9 setVehicleInit "w9 moveInCargo p1";
	w0 = _group2 createUnit ["TK_GUE_Bonesetter_EP1",[9377.7988,11946.089,0],[],0,"FLY"];
		if (isNull w0) then {
			w0 = createVehicle ["TK_GUE_Bonesetter_EP1",[9377.7988,11946.089,0],[],0,"FLY"];
 			[w0,_group2] call BIS_fnc_spawnCrew;
		};
		w0 setVehicleVarName "w0";
		w0 setRank "CORPORAL";
		w0 setVehicleInit "w0 moveInCargo p1";
	w6 = _group2 createUnit ["TK_GUE_Soldier_3_EP1",[9381.0039,11945.707,0],[],0,"FLY"];
		if (isNull w6) then {
			w6 = createVehicle ["TK_GUE_Soldier_3_EP1",[9381.0039,11945.707,0],[],0,"FLY"];
 			[w6,_group2] call BIS_fnc_spawnCrew;
		};
		w6 setVehicleVarName "w6";
		w6 setRank "CORPORAL";
		w6 setVehicleInit "w6 moveInCargo p1";
	w5 = _group2 createUnit ["TK_GUE_Soldier_AT_EP1",[9381.8682,11945.172,0],[],0,"FLY"];
		if (isNull w5) then {
			w5 = createVehicle ["TK_GUE_Soldier_AT_EP1",[9381.8682,11945.172,0],[],0,"FLY"];
 			[w5,_group2] call BIS_fnc_spawnCrew;
		};
		w5 setVehicleVarName "w5";
		w5 setRank "CORPORAL";
		w5 setVehicleInit "w5 moveInCargo p1";
	w11 = _group2 createUnit ["TK_GUE_Soldier_MG_EP1",[9376.5273,11945.81,0],[],0,"FLY"];
		if (isNull w11) then {
			w11 = createVehicle ["TK_GUE_Soldier_MG_EP1",[9376.5273,11945.81,0],[],0,"FLY"];
 			[w11,_group2] call BIS_fnc_spawnCrew;
		};
		w11 setVehicleVarName "w11";
		w11 setRank "CORPORAL";
		w11 setVehicleInit "w11 moveInCargo p1";
	w4 = _group2 createUnit ["TK_GUE_Soldier_AR_EP1",[9382.3799,11944.66,0],[],0,"FLY"];
		if (isNull w4) then {
			w4 = createVehicle ["TK_GUE_Soldier_AR_EP1",[9382.3799,11944.66,0],[],0,"FLY"];
 			[w4,_group2] call BIS_fnc_spawnCrew;
		};
		w4 setVehicleVarName "w4";
		w4 setRank "CORPORAL";
		w4 setVehicleInit "w4 moveInCargo p1";
	w3 = _group2 createUnit ["TK_GUE_Soldier_2_EP1",[9382.8799,11943.858,0],[],0,"FLY"];
		if (isNull w3) then {
			w3 = createVehicle ["TK_GUE_Soldier_2_EP1",[9382.8799,11943.858,0],[],0,"FLY"];
 			[w3,_group2] call BIS_fnc_spawnCrew;
		};
		w3 setVehicleVarName "w3";
		w3 setRank "CORPORAL";
		w3 setVehicleInit "w3 moveInCargo p1";
	w12 = _group2 createUnit ["TK_GUE_Soldier_EP1",[9376.5977,11944.66,0],[],0,"FLY"];
		if (isNull w12) then {
			w12 = createVehicle ["TK_GUE_Soldier_EP1",[9376.5977,11944.66,0],[],0,"FLY"];
 			[w12,_group2] call BIS_fnc_spawnCrew;
		};
		w12 setVehicleVarName "w12";
		w12 setRank "CORPORAL";
		w12 setVehicleInit "w12 moveInCargo p1";
	w2 = _group2 createUnit ["TK_GUE_Bonesetter_EP1",[9383.6201,11943.338,0],[],0,"FLY"];
		if (isNull w2) then {
			w2 = createVehicle ["TK_GUE_Bonesetter_EP1",[9383.6201,11943.338,0],[],0,"FLY"];
 			[w2,_group2] call BIS_fnc_spawnCrew;
		};
		w2 setVehicleVarName "w2";
		w2 setRank "CORPORAL";
		w2 setVehicleInit "w2 moveInCargo p1";
_group3 = createGroup resistance;
	e1 = _group3 createUnit ["TK_GUE_Warlord_EP1",[9363.1504,11946.481,0],[],0,"FLY"];
		if (isNull e1) then {
			e1 = createVehicle ["TK_GUE_Warlord_EP1",[9363.1504,11946.481,0],[],0,"FLY"];
 			[e1,_group3] call BIS_fnc_spawnCrew;
		};
		e1 setVehicleVarName "e1";
		(group e1) selectLeader e1;
		e1 setRank "SERGEANT";
		e1 setVehicleInit "e1 moveInCargo p2";
	w7_1 = _group3 createUnit ["TK_GUE_Soldier_TL_EP1",[9364.085,11949.555,0],[],0,"FLY"];
		if (isNull w7_1) then {
			w7_1 = createVehicle ["TK_GUE_Soldier_TL_EP1",[9364.085,11949.555,0],[],0,"FLY"];
 			[w7_1,_group3] call BIS_fnc_spawnCrew;
		};
		w7_1 setVehicleVarName "w7_1";
		w7_1 setRank "CORPORAL";
		w7_1 setVehicleInit "w7_1 moveInCargo p2";
	w8_1 = _group3 createUnit ["pzn_gc_tk_gue_soldier_SMLE",[9363.1484,11949.623,0],[],0,"FLY"];
		if (isNull w8_1) then {
			w8_1 = createVehicle ["pzn_gc_tk_gue_soldier_SMLE",[9363.1484,11949.623,0],[],0,"FLY"];
 			[w8_1,_group3] call BIS_fnc_spawnCrew;
		};
		w8_1 setVehicleVarName "w8_1";
		w8_1 setRank "CORPORAL";
		w8_1 setVehicleInit "w8_1 moveInCargo p2";
	w9_1 = _group3 createUnit ["pzn_gc_tk_gue_soldier_fal",[9362.4619,11949.647,0],[],0,"FLY"];
		if (isNull w9_1) then {
			w9_1 = createVehicle ["pzn_gc_tk_gue_soldier_fal",[9362.4619,11949.647,0],[],0,"FLY"];
 			[w9_1,_group3] call BIS_fnc_spawnCrew;
		};
		w9_1 setVehicleVarName "w9_1";
		w9_1 setRank "CORPORAL";
		w9_1 setVehicleInit "w9_1 moveInCargo p2";
	w0_1 = _group3 createUnit ["TK_GUE_Bonesetter_EP1",[9361.6982,11949.647,0],[],0,"FLY"];
		if (isNull w0_1) then {
			w0_1 = createVehicle ["TK_GUE_Bonesetter_EP1",[9361.6982,11949.647,0],[],0,"FLY"];
 			[w0_1,_group3] call BIS_fnc_spawnCrew;
		};
		w0_1 setVehicleVarName "w0_1";
		w0_1 setRank "CORPORAL";
		w0_1 setVehicleInit "w0_1 moveInCargo p2";
	w6_1 = _group3 createUnit ["TK_GUE_Soldier_3_EP1",[9364.9033,11949.266,0],[],0,"FLY"];
		if (isNull w6_1) then {
			w6_1 = createVehicle ["TK_GUE_Soldier_3_EP1",[9364.9033,11949.266,0],[],0,"FLY"];
 			[w6_1,_group3] call BIS_fnc_spawnCrew;
		};
		w6_1 setVehicleVarName "w6_1";
		w6_1 setRank "CORPORAL";
		w6_1 setVehicleInit "w6_1 moveInCargo p2";
	w5_1 = _group3 createUnit ["TK_GUE_Soldier_AT_EP1",[9365.7676,11948.731,0],[],0,"FLY"];
		if (isNull w5_1) then {
			w5_1 = createVehicle ["TK_GUE_Soldier_AT_EP1",[9365.7676,11948.731,0],[],0,"FLY"];
 			[w5_1,_group3] call BIS_fnc_spawnCrew;
		};
		w5_1 setVehicleVarName "w5_1";
		w5_1 setRank "CORPORAL";
		w5_1 setVehicleInit "w5_1 moveInCargo p2";
	w11_1 = _group3 createUnit ["TK_GUE_Soldier_MG_EP1",[9360.4268,11949.368,0],[],0,"FLY"];
		if (isNull w11_1) then {
			w11_1 = createVehicle ["TK_GUE_Soldier_MG_EP1",[9360.4268,11949.368,0],[],0,"FLY"];
 			[w11_1,_group3] call BIS_fnc_spawnCrew;
		};
		w11_1 setVehicleVarName "w11_1";
		w11_1 setRank "CORPORAL";
		w11_1 setVehicleInit "w11_1 moveInCargo p2";
	w4_1 = _group3 createUnit ["TK_GUE_Soldier_AR_EP1",[9366.2793,11948.219,0],[],0,"FLY"];
		if (isNull w4_1) then {
			w4_1 = createVehicle ["TK_GUE_Soldier_AR_EP1",[9366.2793,11948.219,0],[],0,"FLY"];
 			[w4_1,_group3] call BIS_fnc_spawnCrew;
		};
		w4_1 setVehicleVarName "w4_1";
		w4_1 setRank "CORPORAL";
		w4_1 setVehicleInit "w4_1 moveInCargo p2";
	w3_1 = _group3 createUnit ["TK_GUE_Soldier_2_EP1",[9366.7793,11947.418,0],[],0,"FLY"];
		if (isNull w3_1) then {
			w3_1 = createVehicle ["TK_GUE_Soldier_2_EP1",[9366.7793,11947.418,0],[],0,"FLY"];
 			[w3_1,_group3] call BIS_fnc_spawnCrew;
		};
		w3_1 setVehicleVarName "w3_1";
		w3_1 setRank "CORPORAL";
		w3_1 setVehicleInit "w3_1 moveInCargo p2";
	w12_1 = _group3 createUnit ["TK_GUE_Soldier_EP1",[9360.4971,11948.219,0],[],0,"FLY"];
		if (isNull w12_1) then {
			w12_1 = createVehicle ["TK_GUE_Soldier_EP1",[9360.4971,11948.219,0],[],0,"FLY"];
 			[w12_1,_group3] call BIS_fnc_spawnCrew;
		};
		w12_1 setVehicleVarName "w12_1";
		w12_1 setRank "CORPORAL";
		w12_1 setVehicleInit "w12_1 moveInCargo p2";
	w2_1 = _group3 createUnit ["TK_GUE_Bonesetter_EP1",[9367.5195,11946.897,0],[],0,"FLY"];
		if (isNull w2_1) then {
			w2_1 = createVehicle ["TK_GUE_Bonesetter_EP1",[9367.5195,11946.897,0],[],0,"FLY"];
 			[w2_1,_group3] call BIS_fnc_spawnCrew;
		};
		w2_1 setVehicleVarName "w2_1";
		w2_1 setRank "CORPORAL";
		w2_1 setVehicleInit "w2_1 moveInCargo p2";
// --Waypoints--
_wp00 = _group0 addWaypoint [[8255.1055,7792.166,0],0];
	_wp00 setWaypointCombatMode "GREEN";
	_wp00 setWaypointBehaviour "SAFE";
	_wp00 setWaypointSpeed "NORMAL";
	_wp00 setWaypointFormation "FILE";
_wp01 = _group0 addWaypoint [[5534.8203,8918.0771,0],0];
_wp02 = _group0 addWaypoint [[5862.9634,6693.1333,0],0];
_wp03 = _group0 addWaypoint [[3668.0615,5623.6318,0],0];
_wp04 = _group0 addWaypoint [[4412.3594,817.10889,0],0];
processInitCommands;