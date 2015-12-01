//by RIP
private ["_unit","_groupinfo","_groupunits","_name","_groupplayers"];

_unit = player;

if ((str _unit) in ["rus1","rus2","rus3","rus4","rus5","rus6"]) then {_groupunits = ["rus1","rus2","rus3","rus4","rus5","rus6"];_groupplayers = [rus1,rus2,rus3,rus4,rus5,rus6];};
if ((str _unit) in ["rus7","rus8","rus9","rus10","rus11","rus12","rus13","rus14","rus15","rus16","rus17"]) then {_groupunits = ["rus7","rus8","rus9","rus10","rus11","rus12","rus13","rus14","rus15","rus16","rus17"];_groupplayers = [rus7,rus8,rus9,rus10,rus11,rus12,rus13,rus14,rus15,rus16,rus17];};
if ((str _unit) in ["rus18","rus19","rus20","rus21","rus22"]) then {_groupunits = ["rus18","rus19","rus20","rus21","rus22"];_groupplayers = [rus18,rus19,rus20,rus21,rus22];};
if ((str _unit) in ["rus23","rus24","rus25"]) then {_groupunits = ["rus23","rus24","rus25"];_groupplayers = [rus23,rus24,rus25];};
if ((str _unit) in ["rus26","rus27","rus28"]) then {_groupunits = ["rus26","rus27","rus28"];_groupplayers = [rus26,rus27,rus28];};
if ((str _unit) in ["rus29","rus30","rus31"]) then {_groupunits = ["rus29","rus30","rus31"];_groupplayers = [rus29,rus30,rus31];};

_groupinfo = format["<t size='1.1' shadow='true' color='#60A344' align='center'>"+localize "STR_RIP_MENUGROUPSTATUS"+"</t><br/>"];
_i = 0;
	{ 
	_name = localize "STR_RIP_MENUGROUPSTATUSEMPTY";
	if (isPlayer (_groupplayers select _i)) then {_name = name (_groupplayers select _i);};


//командир
		if (_x in ["rus1","rus7","rus18","rus23","rus26"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_leader.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//инженер
		if (_x in ["rus4","rus11"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_sapper.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//гранатомет
		if (_x in ["rus12"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_rpg.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//Пом гранатомет
		if (_x in ["rus13"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_rpgh.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//Радист
		if (_x in ["rus6"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_radio.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//медик
		if (_x in ["rus2","rus9","rus19"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_medic.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//ПТРК
		if (_x in ["rus14"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_metis.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//пом ПТРК
		if (_x in ["rus15"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_metish.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//пулемет
		if (_x in ["rus3","rus10","rus20"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_mg.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//стрелок
		if (_x in ["rus16","rus17","rus22"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_ak74.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//снайпер
		if (_x in ["rus5","rus21"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_sniper.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//пилот
		if (_x in ["rus29","rus30","rus31"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_pilot.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//Ст стрелок
		if (_x in ["rus8"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_zam.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};

//танкист
		if (_x in ["rus24","rus25","rus27","rus28"]) then {_groupinfo = _groupinfo + (format["<t><img size='1.7' align='left' image='Pics\Icons\i_crew.paa'></t><t size='1.1' shadow='true' color='#60A344' align='left'> %1</t><br/>",_name]);};


_i = _i + 1;
	} forEach _groupunits; 


HintSilent parseText _groupinfo;
sleep 10;
HintSilent "";