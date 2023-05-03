Config = {}

Config.PoliceOpen = true -- Can Police open all stashes

Config.Stashes = {
    -- ["geminimansion"] = {
    --     stashName = "geminimansion",
    --     coords = vector3(-1730.5, 358.6, 88.73), 
    --     requirecid = true,
    --     jobrequired = false,
    --     gangrequired = false,
    --     gang = "",
    --     job = "",
    --     cid = {"MAH44286"},  
    --     stashSize = 1250000,
    --     stashSlots = 125, 
    -- },

    ["stashAlien1"] = {
            stashName = "stashAlien1",
            coords = vector3(1532.44, 1682.59, 113.35), 
            requirecid = false,
            jobrequired = false,
            gangrequired = false,
            gang = "",
            job = "",
            cid = {},  
            stashSize = 1250000,
            stashSlots = 125, 
        },

        ["stasPoliceStorage"] = {
            stashName = "stasPoliceStorage",
            coords = vector3(474.56, -995.85, 26.27), 
            requirecid = false,
            jobrequired = true,
            gangrequired = false,
            gang = "",
            job = "police",
            cid = {},  
            stashSize = 1250000,
            stashSlots = 125, 
        },
}