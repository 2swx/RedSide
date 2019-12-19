Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'rumpo2',  label = 'Camionette Big Burger' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = 1018.43, y = -792.20, z = 58.38 },
      Sprite  = 106,
      Display = 4,
      Scale   = 1.0,
      Colour  = 59,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 1000.42, y = -792.04, z = 58.38 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 0,
    },

    Vaults = {
        Pos   = { x = 1007.23, y = -797.26, z = 58.38 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 0,
    },

    Fridge = {
        Pos   = { x = 1016.55, y = -799.06, z = 58.38 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 0,
    },

    Vehicles = {
        Pos          = { x = 1015.53, y = -771.23, z = 57.87 },
        SpawnPoint   = { x = 1012.85, y = -767.52, z = 57.88 },
        Size         = { x = 1.0, y = 1.0, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 0,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = 1024.15, y = -768.73, z = 57.00 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },

    BossActions = {
        Pos   = { x = 1013.12, y = -809.16, z = 58.38 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 0,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = 1016.60, y = -805.60, z = 58.38 },
        Size  = { x = 1.0, y = 1.0, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 0,
        Items = {
            { name = 'bread',      label = _U('bread'),   price = 0 },
            { name = 'steak',      label = _U('steak'),   price = 0 },
            { name = 'cheese',       label = _U('cheese'),    price = 0 }
        },
    },

}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
  burgershot_outfit = {
   male = {
        ['tshirt_1'] = 63,  ['tshirt_2'] = 0,
        ['torso_1'] = 23,   ['torso_2'] = 3,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 12,
        ['pants_1'] = 24,   ['pants_2'] = 5,
        ['shoes_1'] = 1,    ['shoes_2'] = 1,
        ['chain_1'] = 0,    ['chain_2'] = 0
    },
    	female = {
        ['tshirt_1'] = 63,  ['tshirt_2'] = 0,
        ['torso_1'] = 23,   ['torso_2'] = 3,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 12,
        ['pants_1'] = 24,   ['pants_2'] = 5,
        ['shoes_1'] = 1,   ['shoes_2'] = 1,
        ['chain_1'] = 0,  ['chain_2'] = 0
    }
  }
}
