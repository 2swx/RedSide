Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 255, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.AmmuStations = {

  Ammu = {

    Blip = {
      Pos     = { x = 811.81, y = -2147.32, z = 29.48 },
      Sprite  = 313,
      Display = 4,
      Scale   = 1.0,
      Colour  = 81,
    },

    AuthorizedWeapons = {
-- Define prices of the weapons.
			{name  = "WEAPON_FLASHLIGHT", price = 1000, label = "Lampe Torche (3000$)"},
			{name  = "WEAPON_HAMMER", price = 1500, label = "Marteau (3500$)"},
			{name  = "WEAPON_CROWBAR", price = 3000, label = "Pied de biche (5000$)"},
			{name  = "WEAPON_HATCHET", price = 4000, label = "Hache (6000$)"},
      {name  = "WEAPON_BAT", price = 4500, label = "Batte de Baseball (6500$)"},
			{name  = "WEAPON_KNUCKLE", price = 5000, label = "Poing Americain (7000$)"},
			{name  = "WEAPON_KNIFE", price = 5000, label = "Couteau (7000$)"},
			{name  = "WEAPON_SWITCHBLADE", price = 5000, label = "Couteau à Cran d'Arrêt (7000$)"},
			{name  = "WEAPON_GOLFCLUB", price = 6000, label = "Club de Gold (8000$)"},
			{name  = "WEAPON_PISTOL", price = 45000, label = "Pistolet 9mm (75000$)"},
			{name  = "WEAPON_PISTOL50", price = 100000, label = "Desert Eagle (200000$)"},
			
    },

	  AuthorizedVehicles = {
		  { name = 'ratloader2',   label = 'Rat-Truck' },
	  },
	  
	  Vehicles = {
      {
        Spawner    = { x = 816.24, y = -2146.07, z = 29.0 },
        SpawnPoint = { x = 821.97, y = -2143.54, z = 27.98 },
        Heading    = 355.5,
      }
    },
	
	VehicleDeleters = {
      { x = 821.97, y = -2143.54, z = 27.98 },
      
    },

    Armories = {
      { x = 810.68, y = -2159.53, z = 29.61 },
    },

    BossActions = {
      { x = 820.85, y = -2159.53, z = 29.61 },
    },

  },

}
