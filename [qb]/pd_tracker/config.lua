Config = {}
Config.Locale = 'en'
Config.debug = true

Config.ESX = {
    enabled = false,
}

Config.QBCore = {
    enabled = true,
}

Config.alternativeIdentifier = {
    enabled = true,
    identifier = "license"-- OPTIONS: license, xbl, live, discord, fivem, license2
}

Config.useKey = 'G'
Config.cancelKey = 'X'

Config.sqlDriver = "oxmysql" -- options: "mysql" (for esx) or "oxmysql" (for QBCore)



Config.trackerItem = {
    itemEnabled = true, -- Only works if QBCore or ESX Enabled
    
    trackerGrades = {
        ["pd_tracker"] = {
            name = "Basic Vehicle Tracking Device",
            interval = 4000,        -- How often the blip updates for the player
            tunnelAccuracy = 350.0, -- if set to 0, ignores tunnels alltogether
        },
        ["pd_adpt_tracker"] = {
            name = "Adept Vehicle Tracking Device",
            interval = 3000,
            tunnelAccuracy = 250.0,
        },
        ["pd_adv_tracker"] = {
            name = "Advanced Vehicle Tracking Device",
            interval = 2000,
            tunnelAccuracy = 150.0,
        },
        ["pd_mili_tracker"] = {
            name = "Military Vehicle Tracking Device",
            interval = 1500,
            tunnelAccuracy = 0.0,
        },
    },
    commandEnabled = true,          -- Allows the use of the command
    command = "vtracker",
    requireScrewdriver = true,      -- Requires the player to be in possesion of the screwdriver item to be able to install a Vehicle Tracking Device
    allowNaming = true,             -- Allows the player to name their trackers
    timeIdlingBeforeNotif = 120.0,  -- Time the vehicle has to idle for before the player gets a notification when its moving again (in seconds)
    timeoutTimer = 30               -- How long the tracker stays in the same location after its been removed(in seconds)
}



Config.allowingPlacingInInterior = "Dashboard"  -- Name for the interior spot
Config.trackerLocations = {
    car = {
        ["hub_lf"] = "Roue avant Gauche",
        ["hub_rf"] = "Roue Avant Droite",
        ["hub_rr"] = "Roue arrière droite",
        ["hub_lr"] = "Roue arrière gauche",
        ["back"] = "Pare-choc arrière", 
        ["front"] = "Pare-chox avant"
    },
    bike = {
        ["exhaust"] = "Arrière",
        ["forks_u"] = "Devant"
    },
    helicopter = {
        ["wheel_lr"] = "Ici",
        ["wheel_rr"] = "Ici",
        ["wheel_lf"] = "Ici",
        ["wheel_rf"] = "Ici"
    },
    plane = {
        ["aileron_l"] = "Aile Gauche",
        ["aileron_r"] = "Aile Droite",
        ["wheel_rf"] = "Ici",
        ["wheel_lf"] = "Ici",
        ["wheel_lr"] = "Ici",
        ["wheel_rr"] = "Ici"
    }
}

Config.screwdriverItem = "pd_screwdriver" -- Database name for the screwdriver

Config.removeTracker = {                    -- Allows the use of the command
    commandEnabled = true,                 
    command = "removevtracker",
    returnItem = true,
    requireScrewdriver = true,              -- Requires the player to be in possesion of the screwdriver item to be able to renmove a Vehicle Tracking Device
    screwdriverUseFunctionality = true,
}

Config.scanner = {
    enabled = true,                         
    itemEnabled = true,
    itemName = 'pd_scanner',
    commandEnabled = true,                  -- Allows the use of the command
    command = "scanvtracker"
}

Config.jammer = {
    enabled = true,
    itemEnabled = true,
    itemName = 'pd_jammer',
    jammedBlipSize = 150.0,
    requiresJobToInstall = true,            
    jobName = 'mechanic',               
    commandEnabled = true,
    command = "installvjammer"
}


Config.blip = {
    sprite = 225, --https://docs.fivem.net/docs/game-references/blips/
    color = 27, --https://docs.fivem.net/docs/game-references/hud-colors/
    size = 0.85,
    classSprites = {
        {sprite = 64, class = 15}, -- helicopter
        {sprite = 307, class = 16}, -- plane
        {sprite = 348, class = 8}, -- bikes
        {sprite = 427, class = 14}, -- boats
        {sprite = 530, class = 7}, -- super
        {sprite = 596, class = 5} -- classic super
    }
}


-- MINIGAME
Config.keyBindsIn = {"S", "D", "Z", "Q"}
Config.keyBindsOut = {"Z", "D", "S", "Q"}
Config.useAZERTYKeyboard = true

Config.minigameLength = 20 -- amount of keypresses
Config.removalMessedUpDuration = 5
Config.searchDuration = 5 --whole numbers (in seconds)
Config.useSubtitles = true


Config.vehicleTrackingSupplies = {
    enabled = false,
    useBlip = false,
    locations = {
        {
            x = -228.6,
            y = 6332.1,
            z = 32.4,
        },
        {
            x = 845.9,
            y = -902.6,
            z = 25.3 
        }

    },
    items = {
        {
            item = "pd_screwdriver",
            label = 'Screwdriver (required to install or remove trackers)',
            price = 10,
        },
        {
            item = "pd_tracker",
            label = 'Vehicle Tracking Device',
            price = 100,
        },
        {
            item = "pd_adpt_tracker",
            label = 'Adept Vehicle Tracking Device',
            price = 200,
        },
        {
            item = "pd_adv_tracker",
            label = 'Advanced Vehicle Tracking Device',
            price = 500,
        },
        {
            item = "pd_mili_tracker",
            label = 'Military Vehicle Tracking Device',
            price = 1000,
        },
        {
            item = "pd_scanner",
            label = 'Vehicle Tracking Device Scanner',
            price = 500,
        },
      
        {
            item = "pd_jammer",
            label = 'Vehicle Tracking Device Jammer',
            price = 30000,
        },
        
    },
    payWithBank = true,
}
