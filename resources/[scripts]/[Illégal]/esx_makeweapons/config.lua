-- Jeśli potrzebujesz pomocy dołącz na https://discord.gg/GgaMnNC

Config = {}

Config.chance = 50--Ile % na wytworzenie broni
Config.damage = 10--Ile dmg ma otrzymać gracz po nieudanym wytworzeniu broni

Config.Zones = {
	make_weapons = {
		Pos = {x = 1402.32, y = 1139.52, z = 108.76},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Créer une arme",
		Text = "Appuyez sur ~INPUT_CONTEXT~ pour créer une arme.",
        Type  = 27,
		menu_label = "make_weapons"
	},
	barrel = {
		Pos = {x = 1402.65, y = 1136.55, z = 108.75},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Création de tonneaux",
		Text = "Appuyez sur ~INPUTCONTEXT~ pour créer un tonneau",
        Type  = 27,
		menu_label = "barrel_craft"
	},
	spring = {
		Pos = {x = 1405.64, y = 1139.04, z = 108.75},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Création de printemps",
		Text = "Appuyez sur ~ INPUT_CONTEXT ~ pour créer des ressorts.",
        Type  = 27,
		menu_label = "spring_craft"
	},
	lock = {
		Pos = {x = 1405.76, y = 1136.89, z = 108.78},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Créer un verrou",
		Text = "Appuyez sur ~INPUT_CONTEXT~ pour créer le verrou.",
        Type  = 27,
		menu_label = "lock_craft"
	}
	
}
