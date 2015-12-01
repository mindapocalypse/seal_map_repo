// Created by SMC v2.1.3 (for Arma 2)
// 11/10/15 22:44:26

// --Units--
_group0 = createGroup resistance;
	_unit0 = _group0 createUnit ["BRDM2_TK_GUE_EP1",[365.8056,2824.752,0],[],0,"NONE"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["BRDM2_TK_GUE_EP1",[365.8056,2824.752,0],[],0,"NONE"];
 			[_unit0,_group0] call BIS_fnc_spawnCrew;
		};
		(group _unit0) selectLeader _unit0;
		_unit0 setFormDir 95;
		_unit0 setDir 95;
		_unit0 setRank "SERGEANT";
	b40 = _group0 createUnit ["BTR40_TK_GUE_EP1",[353.84119,2826.3015,0],[],0,"NONE"];
		if (isNull b40) then {
			b40 = createVehicle ["BTR40_TK_GUE_EP1",[353.84119,2826.3015,0],[],0,"NONE"];
 			[b40,_group0] call BIS_fnc_spawnCrew;
		};
		b40 setVehicleVarName "b40";
		b40 setRank "CORPORAL";
	_unit2 = _group0 createUnit ["BRDM2_HQ_TK_GUE_EP1",[340.32297,2828.4102,0],[],0,"NONE"];
		if (isNull _unit2) then {
			_unit2 = createVehicle ["BRDM2_HQ_TK_GUE_EP1",[340.32297,2828.4102,0],[],0,"NONE"];
 			[_unit2,_group0] call BIS_fnc_spawnCrew;
		};
	_unit3 = _group0 createUnit ["Pickup_PK_TK_GUE_EP1",[327.80527,2830.2551,0],[],0,"NONE"];
		if (isNull _unit3) then {
			_unit3 = createVehicle ["Pickup_PK_TK_GUE_EP1",[327.80527,2830.2551,0],[],0,"NONE"];
 			[_unit3,_group0] call BIS_fnc_spawnCrew;
		};
	p1 = _group0 createUnit ["V3S_TK_GUE_EP1",[315.19119,2832.3052,0],[],0,"NONE"];
		if (isNull p1) then {
			p1 = createVehicle ["V3S_TK_GUE_EP1",[315.19119,2832.3052,0],[],0,"NONE"];
 			[p1,_group0] call BIS_fnc_spawnCrew;
		};
		p1 setVehicleVarName "p1";
	p2 = _group0 createUnit ["V3S_TK_GUE_EP1",[303.41766,2833.8569,0],[],0,"NONE"];
		if (isNull p2) then {
			p2 = createVehicle ["V3S_TK_GUE_EP1",[303.41766,2833.8569,0],[],0,"NONE"];
 			[p2,_group0] call BIS_fnc_spawnCrew;
		};
		p2 setVehicleVarName "p2";
	_unit6 = _group0 createUnit ["Offroad_DSHKM_TK_GUE_EP1",[281.45288,2836.6133,0],[],0,"NONE"];
		if (isNull _unit6) then {
			_unit6 = createVehicle ["Offroad_DSHKM_TK_GUE_EP1",[281.45288,2836.6133,0],[],0,"NONE"];
 			[_unit6,_group0] call BIS_fnc_spawnCrew;
		};
	if (random 1 < 0.15) then {
	_unit7 = _group0 createUnit ["T34_TK_GUE_EP1",[271.75079,2837.895,0],[],0,"NONE"];
		if (isNull _unit7) then {
			_unit7 = createVehicle ["T34_TK_GUE_EP1",[271.75079,2837.895,0],[],0,"NONE"];
 			[_unit7,_group0] call BIS_fnc_spawnCrew;
		};
	};
	_unit5 = _group0 createUnit ["Offroad_DSHKM_TK_GUE_EP1",[290.60049,2835.7786,0],[],0,"NONE"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["Offroad_DSHKM_TK_GUE_EP1",[290.60049,2835.7786,0],[],0,"NONE"];
 			[_unit5,_group0] call BIS_fnc_spawnCrew;
		};
_group1 = createGroup resistance;
	q1 = _group1 createUnit ["TK_GUE_Soldier_TL_EP1",[353.21005,2830.0354,0],[],0,"FLY"];
		if (isNull q1) then {
			q1 = createVehicle ["TK_GUE_Soldier_TL_EP1",[353.21005,2830.0354,0],[],0,"FLY"];
 			[q1,_group1] call BIS_fnc_spawnCrew;
		};
		q1 setVehicleVarName "q1";
		(group q1) selectLeader q1;
		q1 setFormDir 15;
		q1 setDir 15;
		q1 setRank "CORPORAL";
		q1 setVehicleInit "q1 moveInCargo b40";
	q2 = _group1 createUnit ["TK_GUE_Soldier_Sniper_EP1",[352.10129,2831.5002,0],[],0,"FLY"];
		if (isNull q2) then {
			q2 = createVehicle ["TK_GUE_Soldier_Sniper_EP1",[352.10129,2831.5002,0],[],0,"FLY"];
 			[q2,_group1] call BIS_fnc_spawnCrew;
		};
		q2 setVehicleVarName "q2";
		q2 setRank "CORPORAL";
		q2 setVehicleInit "q2 moveInCargo b40";
	q3 = _group1 createUnit ["TK_GUE_Soldier_AT_EP1",[353.31567,2831.3469,0],[],0,"FLY"];
		if (isNull q3) then {
			q3 = createVehicle ["TK_GUE_Soldier_AT_EP1",[353.31567,2831.3469,0],[],0,"FLY"];
 			[q3,_group1] call BIS_fnc_spawnCrew;
		};
		q3 setVehicleVarName "q3";
		q3 setRank "CORPORAL";
		q3 setVehicleInit "q3 moveInCargo b40";
	q4 = _group1 createUnit ["TK_GUE_Bonesetter_EP1",[354.23593,2831.1057,0],[],0,"FLY"];
		if (isNull q4) then {
			q4 = createVehicle ["TK_GUE_Bonesetter_EP1",[354.23593,2831.1057,0],[],0,"FLY"];
 			[q4,_group1] call BIS_fnc_spawnCrew;
		};
		q4 setVehicleVarName "q4";
		q4 setRank "CORPORAL";
		q4 setVehicleInit "q4 moveInCargo b40";
_group2 = createGroup resistance;
	w1 = _group2 createUnit ["TK_GUE_Warlord_EP1",[317.80206,2834.7024,0],[],0,"FLY"];
		if (isNull w1) then {
			w1 = createVehicle ["TK_GUE_Warlord_EP1",[317.80206,2834.7024,0],[],0,"FLY"];
 			[w1,_group2] call BIS_fnc_spawnCrew;
		};
		w1 setVehicleVarName "w1";
		(group w1) selectLeader w1;
		w1 setRank "SERGEANT";
		w1 setVehicleInit "w1 moveInCargo p1";
	w7 = _group2 createUnit ["TK_GUE_Soldier_TL_EP1",[318.73648,2837.7761,0],[],0,"FLY"];
		if (isNull w7) then {
			w7 = createVehicle ["TK_GUE_Soldier_TL_EP1",[318.73648,2837.7761,0],[],0,"FLY"];
 			[w7,_group2] call BIS_fnc_spawnCrew;
		};
		w7 setVehicleVarName "w7";
		w7 setRank "CORPORAL";
		w7 setVehicleInit "w7 moveInCargo p1";
	w8 = _group2 createUnit ["pzn_gc_tk_gue_soldier_SMLE",[317.79944,2837.844,0],[],0,"FLY"];
		if (isNull w8) then {
			w8 = createVehicle ["pzn_gc_tk_gue_soldier_SMLE",[317.79944,2837.844,0],[],0,"FLY"];
 			[w8,_group2] call BIS_fnc_spawnCrew;
		};
		w8 setVehicleVarName "w8";
		w8 setRank "CORPORAL";
		w8 setVehicleInit "w8 moveInCargo p1";
	w9 = _group2 createUnit ["pzn_gc_tk_gue_soldier_fal",[317.11279,2837.8691,0],[],0,"FLY"];
		if (isNull w9) then {
			w9 = createVehicle ["pzn_gc_tk_gue_soldier_fal",[317.11279,2837.8691,0],[],0,"FLY"];
 			[w9,_group2] call BIS_fnc_spawnCrew;
		};
		w9 setVehicleVarName "w9";
		w9 setRank "CORPORAL";
		w9 setVehicleInit "w9 moveInCargo p1";
	w0 = _group2 createUnit ["TK_GUE_Bonesetter_EP1",[316.34985,2837.8691,0],[],0,"FLY"];
		if (isNull w0) then {
			w0 = createVehicle ["TK_GUE_Bonesetter_EP1",[316.34985,2837.8691,0],[],0,"FLY"];
 			[w0,_group2] call BIS_fnc_spawnCrew;
		};
		w0 setVehicleVarName "w0";
		w0 setRank "CORPORAL";
		w0 setVehicleInit "w0 moveInCargo p1";
	w6 = _group2 createUnit ["TK_GUE_Soldier_3_EP1",[319.55426,2837.4871,0],[],0,"FLY"];
		if (isNull w6) then {
			w6 = createVehicle ["TK_GUE_Soldier_3_EP1",[319.55426,2837.4871,0],[],0,"FLY"];
 			[w6,_group2] call BIS_fnc_spawnCrew;
		};
		w6 setVehicleVarName "w6";
		w6 setRank "CORPORAL";
		w6 setVehicleInit "w6 moveInCargo p1";
	w5 = _group2 createUnit ["TK_GUE_Soldier_AT_EP1",[320.41895,2836.9521,0],[],0,"FLY"];
		if (isNull w5) then {
			w5 = createVehicle ["TK_GUE_Soldier_AT_EP1",[320.41895,2836.9521,0],[],0,"FLY"];
 			[w5,_group2] call BIS_fnc_spawnCrew;
		};
		w5 setVehicleVarName "w5";
		w5 setRank "CORPORAL";
		w5 setVehicleInit "w5 moveInCargo p1";
	w11 = _group2 createUnit ["TK_GUE_Soldier_MG_EP1",[315.07825,2837.5894,0],[],0,"FLY"];
		if (isNull w11) then {
			w11 = createVehicle ["TK_GUE_Soldier_MG_EP1",[315.07825,2837.5894,0],[],0,"FLY"];
 			[w11,_group2] call BIS_fnc_spawnCrew;
		};
		w11 setVehicleVarName "w11";
		w11 setRank "CORPORAL";
		w11 setVehicleInit "w11 moveInCargo p1";
	w4 = _group2 createUnit ["TK_GUE_Soldier_AR_EP1",[320.93033,2836.4402,0],[],0,"FLY"];
		if (isNull w4) then {
			w4 = createVehicle ["TK_GUE_Soldier_AR_EP1",[320.93033,2836.4402,0],[],0,"FLY"];
 			[w4,_group2] call BIS_fnc_spawnCrew;
		};
		w4 setVehicleVarName "w4";
		w4 setRank "CORPORAL";
		w4 setVehicleInit "w4 moveInCargo p1";
	w3 = _group2 createUnit ["TK_GUE_Soldier_2_EP1",[321.43048,2835.6392,0],[],0,"FLY"];
		if (isNull w3) then {
			w3 = createVehicle ["TK_GUE_Soldier_2_EP1",[321.43048,2835.6392,0],[],0,"FLY"];
 			[w3,_group2] call BIS_fnc_spawnCrew;
		};
		w3 setVehicleVarName "w3";
		w3 setRank "CORPORAL";
		w3 setVehicleInit "w3 moveInCargo p1";
	w12 = _group2 createUnit ["TK_GUE_Soldier_EP1",[315.14877,2836.4402,0],[],0,"FLY"];
		if (isNull w12) then {
			w12 = createVehicle ["TK_GUE_Soldier_EP1",[315.14877,2836.4402,0],[],0,"FLY"];
 			[w12,_group2] call BIS_fnc_spawnCrew;
		};
		w12 setVehicleVarName "w12";
		w12 setRank "CORPORAL";
		w12 setVehicleInit "w12 moveInCargo p1";
	w2 = _group2 createUnit ["TK_GUE_Bonesetter_EP1",[322.17072,2835.1182,0],[],0,"FLY"];
		if (isNull w2) then {
			w2 = createVehicle ["TK_GUE_Bonesetter_EP1",[322.17072,2835.1182,0],[],0,"FLY"];
 			[w2,_group2] call BIS_fnc_spawnCrew;
		};
		w2 setVehicleVarName "w2";
		w2 setRank "CORPORAL";
		w2 setVehicleInit "w2 moveInCargo p1";
_group3 = createGroup resistance;
	e1 = _group3 createUnit ["TK_GUE_Warlord_EP1",[301.70157,2838.2615,0],[],0,"FLY"];
		if (isNull e1) then {
			e1 = createVehicle ["TK_GUE_Warlord_EP1",[301.70157,2838.2615,0],[],0,"FLY"];
 			[e1,_group3] call BIS_fnc_spawnCrew;
		};
		e1 setVehicleVarName "e1";
		(group e1) selectLeader e1;
		e1 setRank "SERGEANT";
		e1 setVehicleInit "e1 moveInCargo p2";
	w7_1 = _group3 createUnit ["TK_GUE_Soldier_TL_EP1",[302.63599,2841.3352,0],[],0,"FLY"];
		if (isNull w7_1) then {
			w7_1 = createVehicle ["TK_GUE_Soldier_TL_EP1",[302.63599,2841.3352,0],[],0,"FLY"];
 			[w7_1,_group3] call BIS_fnc_spawnCrew;
		};
		w7_1 setVehicleVarName "w7_1";
		w7_1 setRank "CORPORAL";
		w7_1 setVehicleInit "w7_1 moveInCargo p2";
	w8_1 = _group3 createUnit ["pzn_gc_tk_gue_soldier_SMLE",[301.69894,2841.4031,0],[],0,"FLY"];
		if (isNull w8_1) then {
			w8_1 = createVehicle ["pzn_gc_tk_gue_soldier_SMLE",[301.69894,2841.4031,0],[],0,"FLY"];
 			[w8_1,_group3] call BIS_fnc_spawnCrew;
		};
		w8_1 setVehicleVarName "w8_1";
		w8_1 setRank "CORPORAL";
		w8_1 setVehicleInit "w8_1 moveInCargo p2";
	w9_1 = _group3 createUnit ["pzn_gc_tk_gue_soldier_fal",[301.0123,2841.4282,0],[],0,"FLY"];
		if (isNull w9_1) then {
			w9_1 = createVehicle ["pzn_gc_tk_gue_soldier_fal",[301.0123,2841.4282,0],[],0,"FLY"];
 			[w9_1,_group3] call BIS_fnc_spawnCrew;
		};
		w9_1 setVehicleVarName "w9_1";
		w9_1 setRank "CORPORAL";
		w9_1 setVehicleInit "w9_1 moveInCargo p2";
	w0_1 = _group3 createUnit ["TK_GUE_Bonesetter_EP1",[300.24936,2841.4282,0],[],0,"FLY"];
		if (isNull w0_1) then {
			w0_1 = createVehicle ["TK_GUE_Bonesetter_EP1",[300.24936,2841.4282,0],[],0,"FLY"];
 			[w0_1,_group3] call BIS_fnc_spawnCrew;
		};
		w0_1 setVehicleVarName "w0_1";
		w0_1 setRank "CORPORAL";
		w0_1 setVehicleInit "w0_1 moveInCargo p2";
	w6_1 = _group3 createUnit ["TK_GUE_Soldier_3_EP1",[303.45377,2841.0461,0],[],0,"FLY"];
		if (isNull w6_1) then {
			w6_1 = createVehicle ["TK_GUE_Soldier_3_EP1",[303.45377,2841.0461,0],[],0,"FLY"];
 			[w6_1,_group3] call BIS_fnc_spawnCrew;
		};
		w6_1 setVehicleVarName "w6_1";
		w6_1 setRank "CORPORAL";
		w6_1 setVehicleInit "w6_1 moveInCargo p2";
	w5_1 = _group3 createUnit ["TK_GUE_Soldier_AT_EP1",[304.31845,2840.5112,0],[],0,"FLY"];
		if (isNull w5_1) then {
			w5_1 = createVehicle ["TK_GUE_Soldier_AT_EP1",[304.31845,2840.5112,0],[],0,"FLY"];
 			[w5_1,_group3] call BIS_fnc_spawnCrew;
		};
		w5_1 setVehicleVarName "w5_1";
		w5_1 setRank "CORPORAL";
		w5_1 setVehicleInit "w5_1 moveInCargo p2";
	w11_1 = _group3 createUnit ["TK_GUE_Soldier_MG_EP1",[298.97775,2841.1484,0],[],0,"FLY"];
		if (isNull w11_1) then {
			w11_1 = createVehicle ["TK_GUE_Soldier_MG_EP1",[298.97775,2841.1484,0],[],0,"FLY"];
 			[w11_1,_group3] call BIS_fnc_spawnCrew;
		};
		w11_1 setVehicleVarName "w11_1";
		w11_1 setRank "CORPORAL";
		w11_1 setVehicleInit "w11_1 moveInCargo p2";
	w4_1 = _group3 createUnit ["TK_GUE_Soldier_AR_EP1",[304.82983,2839.9993,0],[],0,"FLY"];
		if (isNull w4_1) then {
			w4_1 = createVehicle ["TK_GUE_Soldier_AR_EP1",[304.82983,2839.9993,0],[],0,"FLY"];
 			[w4_1,_group3] call BIS_fnc_spawnCrew;
		};
		w4_1 setVehicleVarName "w4_1";
		w4_1 setRank "CORPORAL";
		w4_1 setVehicleInit "w4_1 moveInCargo p2";
	w3_1 = _group3 createUnit ["TK_GUE_Soldier_2_EP1",[305.32999,2839.1982,0],[],0,"FLY"];
		if (isNull w3_1) then {
			w3_1 = createVehicle ["TK_GUE_Soldier_2_EP1",[305.32999,2839.1982,0],[],0,"FLY"];
 			[w3_1,_group3] call BIS_fnc_spawnCrew;
		};
		w3_1 setVehicleVarName "w3_1";
		w3_1 setRank "CORPORAL";
		w3_1 setVehicleInit "w3_1 moveInCargo p2";
	w12_1 = _group3 createUnit ["TK_GUE_Soldier_EP1",[299.04828,2839.9993,0],[],0,"FLY"];
		if (isNull w12_1) then {
			w12_1 = createVehicle ["TK_GUE_Soldier_EP1",[299.04828,2839.9993,0],[],0,"FLY"];
 			[w12_1,_group3] call BIS_fnc_spawnCrew;
		};
		w12_1 setVehicleVarName "w12_1";
		w12_1 setRank "CORPORAL";
		w12_1 setVehicleInit "w12_1 moveInCargo p2";
	w2_1 = _group3 createUnit ["TK_GUE_Bonesetter_EP1",[306.07022,2838.6772,0],[],0,"FLY"];
		if (isNull w2_1) then {
			w2_1 = createVehicle ["TK_GUE_Bonesetter_EP1",[306.07022,2838.6772,0],[],0,"FLY"];
 			[w2_1,_group3] call BIS_fnc_spawnCrew;
		};
		w2_1 setVehicleVarName "w2_1";
		w2_1 setRank "CORPORAL";
		w2_1 setVehicleInit "w2_1 moveInCargo p2";
// --Waypoints--
_wp00 = _group0 addWaypoint [[1433.4484,3512.9653,0],0];
	_wp00 setWaypointCombatMode "GREEN";
	_wp00 setWaypointBehaviour "SAFE";
	_wp00 setWaypointSpeed "NORMAL";
	_wp00 setWaypointFormation "FILE";
_wp01 = _group0 addWaypoint [[2513.2073,5097.2227,0],0];
_wp02 = _group0 addWaypoint [[4669.4653,5791.2949,0],0];
_wp03 = _group0 addWaypoint [[5847.4683,5738.6982,0],0];
_wp04 = _group0 addWaypoint [[8716.4043,5145.1836,0],0];
_wp05 = _group0 addWaypoint [[7536.0146,1896.2205,0],0];
processInitCommands;