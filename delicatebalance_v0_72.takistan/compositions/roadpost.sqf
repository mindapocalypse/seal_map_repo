if (!isServer) exitWith{};
private ["_objs"];
_objs =
[
["Land_CncBlock",[2.44922,4.90033,0],18.5764,1,0,{}],
["Land_CncBlock_D",[-0.0771484,5.7359,0],196.384,1,0,{}],
["Land_CncBlock",[5.01855,4.06738,0],18.655,1,0,{}],
["Land_CncBlock",[7.54785,3.21423,0],17.8008,1,0,{}],
["Land_CncBlock",[9.98633,2.40021,0],20.7498,1,0,{}],
["Land_fort_bagfence_long",[10.3984,0.367615,0.000228882],109.41,1,0,{}],
["RoadBarrier_long",[4.90234,10.9714,0.00158691],291.746,1,0,{}],
["FoldChair",[11.9902,-1.03381,0],161.437,1,0,{}],
["FoldTable",[12.4717,-0.327759,0],19.8918,1,0,{}],
["Land_CncBlock",[12.4961,1.45679,0],19.8623,1,0,{}],
["Land_CncBlock",[10.0488,7.77106,0.000120163],19.1216,1,0,{}],
["Land_CncBlock",[9.37402,9.59314,0.000394821],108.199,1,0,{}],
["Land_BagFenceLong",[9.79297,9.61731,0.0429344],108.594,1,0,{}],
["Land_CncBlock",[4.57227,13.1032,0.000114441],20.0139,1,0,{}],
["Land_coneLight",[3.16016,13.5475,0.000320435],90.9532,1,0,{}],
["Land_CncBlock_D",[7.02441,12.2607,0.0004673],199.068,1,0,{}],
["Land_CncBlock",[12.5869,7.39777,0],358.273,1,0,{}],
["SearchLight",[7.58301,13.2955,0],219.689,1,0,{}],
["Land_CncBlock",[10.0977,12.1209,0.00038147],107.272,1,0,{}],
["Land_coneLight",[14.0508,7.3999,0],111.245,1,0,{}],
["Land_fortified_nest_small",[16.5195,-1.83466,-0.00617599],197.299,1,0,{}],
["M2StaticMG",[16.5195,-1.83466,0],10.299,1,0,{}],
["Land_CncBlock",[13.2803,9.58545,0.000177383],19.4888,1,0,{}],
["Land_fort_bagfence_long",[16.7988,-5.44525,0],106.831,1,0,{}],
["Land_CncBlock",[15.8301,8.66248,0.000175476],18.5529,1,0,{}],
["Land_fort_bagfence_long",[10.6553,14.9717,-0.204771],106.831,1,0,{}],
["Paleta1",[9.68359,15.1946,0],20.2647,1,0,{}],
["Land_BagFenceLong",[14.3838,12.4357,0.0221252],110.444,1,0,{}],
["Land_CncBlock",[19.0068,0.825073,0.000171661],110.851,1,0,{}],
["Fort_RazorWire",[20.249,-0.215759,-0.00309181],107.605,1,0,{}],
["Land_CncBlock",[18.3389,7.82892,0.000167847],19.3901,1,0,{}],
["Land_Fort_Watchtower_EP1",[17.625,11.5977,0],288.573,1,0,{}],
["M2StaticMG",[17.625,11.5977,2.8],288.573,1,0,{}],
["Land_fortified_nest_small",[11.083,19.2632,0.0543342],109.042,1,0,{}],
["M2StaticMG",[11.083,19.2632,0.0543342],-70.042,1,0,{}],
["Land_CncBlock",[20.8984,7.03589,0],15.4184,1,0,{}],
["Land_CncBlock",[22.2549,-2.09991,0],19.1853,1,0,{}],
["Land_CncBlock",[23.5117,1.9837,0],20.13,1,0,{}],
["Land_HBarrier3",[13.9629,19.5845,0.0364189],20.638,1,0,{}],
["HMMWV_Armored",[24.8584,-1.23755,0.000495911],106.507,0,0,{}],
["Barrel1",[23.3887,8.58875,0],48.1189,1,0,{}],
["Land_CncBlock",[24.7549,-3.02338,0],17.6695,1,0,{}],
["Land_CncBlock",[24.1963,6.45099,0],1.15005,1,0,{}],
["Land_HBarrier3",[19.3154,17.8173,0],197.125,1,0,{}],
["Land_HBarrier3",[20.5313,17.2067,0.0305729],107.825,1,0,{}],
["Land_CncBlock",[26.1123,0.990967,0],18.014,1,0,{}],
["Land_HBarrier_large",[17.7129,19.5433,0.00792122],200.142,1,0,{}],
["Land_CncBlock",[25.207,7.58502,0],62.6244,1,0,{}],
["Land_CncBlock",[27.2725,-3.73706,0],14.4507,1,0,{}],
["MetalBucket",[18.46,21.3795,-0.177782],283.727,1,0,{}],
["Land_CncBlock_D",[28.5625,0.278381,0],199.829,1,0,{}],
["Paleta1",[18.8096,21.3488,0.000358582],283.304,1,0,{}],
["Land_Toilet",[20.082,19.8558,-0.0223408],199.43,1,0,{}],
["datsun01Wreck",[27.3994,7.63123,0],146.387,1,0,{}],
["Land_Toilet",[21.1523,19.4382,-0.0202656],199.814,1,0,{}],
["Land_Barrel_water",[19.9854,21.3292,-0.138031],20.8927,1,0,{}],
["Land_CncBlock",[28.5508,9.76733,0.000162125],11.9111,1,0,{}],
["RoadBarrier_light",[30.1465,-0.574036,0.000757217],285.677,1,0,{}],
["Land_fort_bagfence_corner",[21.7002,22.0211,0.0247841],203.107,1,0,{}],
["Land_coneLight",[30.8672,3.9715,0],115.85,1,0,{}],
["Land_Pneu",[29.8955,8.67749,0.00012207],40.8447,1,0,{}],
["Land_CncBlock_D",[31.3525,6.66724,0],54.3927,1,0,{}],
["Land_Pneu",[32.3848,7.77515,0],40.8447,1,0,{}]
];

_objs