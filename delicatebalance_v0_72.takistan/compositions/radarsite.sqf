if (!isServer) exitWith{};
private ["_objs"];
_objs =
[
["Fort_Crate_wood",[11.084,3.31207,0.00123024],132.857,1,0,{}],
["Barrel1",[11.084,5.55621,5.9127],107.224,1,0,{}],
["Fort_Crate_wood",[11.9443,3.51227,0.977962],196.121,1,0,{}],
["Fort_Crate_wood",[11.8232,4.36212,3.8147e-005],139.365,1,0,{}],
["Fort_Crate_wood",[12.4141,3.06207,4.76837e-005],132.857,1,0,{}],
["Fort_Crate_wood",[12.6836,5.12213,4.19617e-005],129.644,1,0,{}],
["Fort_Crate_wood",[12.124,6.47223,4.3869e-005],253.04,1,0,{}],
["Fort_Crate_wood",[13.2734,4.01227,2.67029e-005],218.868,1,0,{}],
["Barrel1",[13.7236,4.88629,7.43866e-005],33.1301,1,0,{}],
["Barrel1",[13.5439,5.7962,6.29425e-005],71.978,1,0,{}],
["Land_Barrel_empty",[-13.7568,-5.62811,4.57764e-005],0,1,0,{}],
["Barrel1",[13.3643,6.55621,5.53131e-005],102.369,1,0,{}],
["Land_Barrel_empty",[-13.9189,-6.2019,4.57764e-005],20.7724,1,0,{}],
["Land_BagFenceEnd",[6.46875,-13.675,-0.000350952],174.928,1,0,{}],
["Misc_cargo_cont_small2",[-10.626,11.3621,0],240.339,1,0,{}],
["FoldChair",[-15.3115,-3.56952,-0.00141382],165.218,1,0,{}],
["FoldTable",[-15.5498,-2.76086,-0.00596285],359.352,1,0,{}],
["Land_Barrel_empty",[-14.6689,-6.2619,4.00543e-005],51.8552,1,0,{}],
["Land_BagFenceLong",[8.91504,-13.288,0.00018692],348.954,1,0,{}],
["M2StaticMG",[10.9795,-11.7241,0.00255775],139.296,1,0,{}],
["SearchLight",[-12.3945,-10.3029,0.0109844],198.534,1,0,{}],
["Land_Barrel_water",[-15.4092,-6.12421,-0.00145149],0,1,0,{}],
["Land_Antenna",[-16.4766,3.8421,0.000854492],324.273,1,0,{}],
["Camp",[-17.0586,-3.93518,0.00594902],91.5841,1,0,{}],
["Barrel4",[-6.62598,15.3721,7.62939e-006],105.698,1,0,{}],
["FoldChair",[-16.5195,-3.68011,-0.0059514],235.747,1,0,{}],
["Land_Barrel_water",[-15.459,-7.08221,1.33514e-005],59.6231,1,0,{}],
["Barrel4",[-7.39648,15.3421,-0.000768661],23.0841,1,0,{}],
["Land_Barrel_empty",[-16.2188,-6.44177,7.43866e-005],26.3593,1,0,{}],
["PowGen_Big",[-4.64648,17.6422,0],308.384,1,0,{}],
["Land_BagFenceLong",[15.4063,-8.40619,0],319.646,1,0,{}],
["Barrel1",[-6.73633,16.2322,0.00193596],33.1275,1,0,{}],
["Land_BagFenceRound",[11.6729,-13.7573,0],359.411,1,0,{}],
["Land_BagFenceEnd",[-14.4043,-9.95428,0],0,1,0,{}],
["Land_Barrel_water",[-16.9092,-6.42212,4.3869e-005],0,1,0,{}],
["Land_BagFenceRound",[14.4033,-10.8831,0],275.662,1,0,{}],
["Land_BagFenceEnd",[17.3311,-6.85541,0],322.775,1,0,{}],
["USBasicAmmunitionBox",[-5.1904,11.94232,0],90.4034,1,0,{}],
["Land_BagFenceShort",[13.6416,-12.5195,0],320.033,1,0,{}],
["Barrels",[-8.10645,16.7723,0],120.671,1,0,{}],
["Land_CamoNetB_NATO_EP1",[-7.75586,17.4622,0],14.9764,1,0,{}],
["USBasicWeaponsBox",[-3.6396,12.2746,0],271.15,1,0,{}],
["Fort_Crate_wood",[-18.3584,-6.74597,2.09808e-005],0,1,0,{}],
["Land_HBarrier3",[18.8027,1.63531,-0.00986099],302.682,1,0,{}],
["Land_BagFenceLong",[-16.8643,-10.0075,0.000192642],179.284,1,0,{}],
["ACE_MTVRReammo_DES_EP1",[3.88672,19.3611,0],9.78583,1,0,{}],
["MK19_TriPod", [11, 21, 0], 10,1,0,{}],
["Misc_cargo_cont_small",[-12.8564,16.0721,5.72205e-006],284.539,1,0,{}],
["FlagCarrierUSA",[-20.0234,-5.81592,0.00328636],14.5313,1,0,{}],
["Fort_Crate_wood",[-20.2939,-3.85272,2.47955e-005],0,1,0,{}],
["Fort_Crate_wood",[-20.2939,-4.63281,0.966772],3.12642,1,0,{}],
["Land_Barrel_empty",[-11.4063,17.4422,0],12.0316,1,0,{}],
["Fort_Crate_wood",[-19.7988,-6.67596,3.8147e-005],90.3786,1,0,{}],
["Fort_Crate_wood",[-20.3145,-4.91278,2.86102e-005],0,1,0,{}],
["Land_Barrel_sand",[-12.0762,17.4622,0],13.6132,1,0,{}],
["MetalBucket",[-11.8359,17.9722,1.14441e-005],0,1,0,{}],
["Land_HBarrier5",[20.46,5.01886,0],268.747,1,0,{}],
["Land_HBarrier5",[14.3477,16.6956,0],43.1885,1,0,{}],
["Land_BagFenceLong",[-19.9072,-9.96887,0],1.44145,1,0,{}],
["Land_HBarrier3",[18.6904,12.8099,0],52.4736,1,0,{}],
["Paleta1",[-21.6465,-9.10791,0.00309753],4.99352,1,0,{}],
["Fort_Crate_wood",[-21.376,-8.64789,-0.204609],138.983,1,0,{}],
["Fort_Crate_wood",[-22.7861,-7.70801,5.14984e-005],113.278,1,0,{}],
["Land_BagFenceShort",[-22.2607,-9.98157,0],357.626,1,0,{}],
["Hedgehog",[24.2158,-3.91687,-0.000947952],115.916,1,0,{}],
["Fort_RazorWire",[24.374,0.67218,-0.0864658],269.727,1,0,{}],
["Land_BagFenceEnd",[-24.542,-3.67572,-0.00551033],253.9,1,0,{}],
["Fort_Crate_wood",[-23.166,-9.10791,6.67572e-005],178.48,1,0,{}],
["Land_BagFenceLong",[-24.3145,-6.1308,0],266.707,1,0,{}],
["Land_BagFenceShort",[-24.1631,-8.50629,0],267.204,1,0,{}],
["Land_BagFenceCorner",[-24.0938,-10.0615,0],178.094,1,0,{}],
["Sign_Danger",[24.9941,-5.69208,0],299.259,1,0,{}],
["HMMWV",[-22.5518,-12.3723,0.000501633],85.1186,1,0,{}],
["Land_BagFenceEnd",[8.0459,25.0691,0],206.68,1,0,{}],
["Land_BagFenceLong",[10.3291,24.4573,0],188.283,1,0,{}],
["Fort_RazorWire",[24.2842,9.36212,-0.000499725],269.727,1,0,{}],
["Fort_RazorWire",[21.3232,17.2322,0],226.272,1,0,{}],
["Land_BagFenceLong",[13.3574,24.3287,0],358.605,1,0,{}],
["Hedgehog",[16.6709,22.7898,0],65.9555,1,0,{}],
["M2StaticMG",[-25.9668,12.165,0],288.06,1,0,{}],
["Land_BagFenceEnd",[15.7939,24.4146,0],0,1,0,{}],
["Sign_Danger",[27.7236,9.56207,0],264.979,1,0,{}],
["USOrdnanceBox",[-25.9395,13.9996,0],28.1212,1,0,{}],
["Sign_Danger",[19.0957,22.6795,0],207.186,1,0,{}],
["Fort_EnvelopeSmall",[-28.2266,12.9322,0],290.532,1,0,{}]
];

_objs