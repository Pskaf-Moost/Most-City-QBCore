Config = {}

Config.NoImage = "https://cdn.discordapp.com/attachments/900164862427156570/1011508116245975040/male.png" -- the image that will show up if the player has no image set up
Config.DefaultWeight = "5'9" -- the global default weight if player has not been given a set weight
Config.DefaultHeight = "150" -- the global default height if player has not been given a set height

Config.CivilianCanEditID = true --- will give anyone acces to edit the info on their id by talking to the npc

Config.WLJobs = {   --- These jobs will be able to use /updateid to update a players id info
    ["police"] = true,
    --["AddJobNameHere"] = true,
}

Config.IDPrice = 50 -- Price per ID Card
Config.DLPrice = 50 -- Price per Driver License Card
Config.PoliceBadgePrice = 50 -- Price per Police Badge
Config.EMSIDPrice = 50 --- Price per EMS ID Card

Config.PDDivisions = { --- for police divisions examples: sheriff, fib, blaine county etc  
    ["sheriff"] = { --- Job Name
        IconName = "sheriff.png", -- Must be in Images Folder
        IDTitle = "sheriff's department", --- TITLE ON TOP OF ID
        IDColor = {12, 108, 24} -- RGB Value
    },
--[[ ["sheriff"] = { --- You can add multiple
        IconName = "sheriff.png", 
        IDTitle = "sheriff's department",
        IDColor = {12, 108, 24}
    },]]
}

Config.IDPed = vector4(-544.02, -203.87, 37.22, 183.9) -- Location of the npc to sell ID cards

Config.ShowBlip = true --- Show NPC Blip on map

Config.Blip = {  -- Can be found in https://docs.fivem.net/docs/game-references/blips/
    Sprite = 498,
    Scale = 0.9,
    Color = 0,
    Text = "ID Helper"
}
