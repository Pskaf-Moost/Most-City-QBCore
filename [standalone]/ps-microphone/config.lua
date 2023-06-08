Config = {}

Config.Showzone = false

Config.MicrophoneZones = {
    [1] = {
        name = "vinewood_bowl1", 
        coords = vector3(683.37, 569.31, 130.46),
        length = 3.4,
        width = 3.6,
        spawnProp = true, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = Config.Showzone,
            heading = 340,
            minZ = 127.86,
            maxZ = 131.86,
            data = {
                range = 50.0 -- range for the voice
            }
        }
    },

    [2] = {
        name = "MazeBankArena_MMA", 
        coords = vector3(-323.61, -1978.3, 21.6),
        length = 3.4,
        width = 3.6,
        spawnProp = true, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = Config.Showzone,
            heading = 340,
            minZ = 127.86,
            maxZ = 131.86,
            data = {
                range = 50.0 -- range for the voice
            }
        }
    }
}
