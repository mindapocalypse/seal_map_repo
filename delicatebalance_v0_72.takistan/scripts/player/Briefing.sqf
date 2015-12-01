private ["_info_arr", "_i", "_pos", "_log_briefing"];

_info_arr = "";
for "_i" from 0 to ((count (missionConfigFile >> "params")) - 1) do {
	_pos = (getarray (((missionConfigFile >> "params") select _i) >> "values")) find (paramsArray select _i);
	_info_arr = _info_arr + format ["<font color = '#60A344'>%1</font>  %2<br/>", (gettext ((missionConfigFile >> "params") select _i >> "title")),((getarray (((missionConfigFile >> "params") select _i) >> "texts")) select _pos)];
};
_log_briefing = player createDiaryRecord ["Diary", [localize "STR_RIP_BRIEFING2", _info_arr]];

_log_briefing = player createDiaryRecord ["Diary", [localize "STR_RIP_BRIEFING0", localize "STR_RIP_BRIEFING1"]];