w = _this select 0;
h = _this select 1;

_convoy_templates = [
				["Заварак - Чак Чак", "red"],
                ["Чаман - Аэропорт", "fiol"],
                ["Гармсар - Бастам", "blue"],
                ["Нагара - Крушаб", "blue"]
			];
            
_convoy_hard_templates = [
				["легкий", "light"],
                ["средний", "norm"],
                ["тяжелый", "hard"]
			];
            
way = (_convoy_templates select w) select 1;
hard = (_convoy_hard_templates select h) select 1;

filename = format ["convoys\%1_%2.sqf", way, hard];

call compile preprocessFile filename;

hint filename;