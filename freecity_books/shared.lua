Config = {}


Config.Framework = 'QBCORE' -- Change accordingly to your framework ( ESX // QBCORE)

Config.FrameworkTriggers = {        
    main = 'QBCore:GetObject',    --ESX = 'esx:getSharedObject'   QBCORE = 'QBCore:GetObject'
    load = 'QBCore:Client:OnPlayerLoaded',   --ESX = 'esx:playerLoaded'      QBCORE = 'QBCore:Client:OnPlayerLoaded'
    resource_name = 'qb-core'   --ESX = 'es_extended'           QBCORE = 'qb-core'
}

-- When creating any book remember that page1 should be the Cover and last page the backCover

Config.Items = {                     -- Add and create here your items, Your imagination is the Limi!!  The images uploaded to pages must have exactly the same name of your ['guide'] name item
    ['notesecrete'] = {                       -- ITEMS NAME : Add your respective items to ESX - Database // QBcore items.lua
        name = 'Une note secrète',           -- this is just for your info, use what you want inside of ''
        numberOfPages = 2,               -- Must be the exact number of pages you made for that book.
    },
    ['police_guide'] = {
        name = 'Police Guide',
        numberOfPages = 8,
    },
    ['bar'] = {
        name = 'News book',
        numberOfPages = 4,
    },
    ['lstimes'] = {                       -- ITEMS NAME : Add your respective items to ESX - Database // QBcore items.lua
        name = 'LS Times 1',           -- this is just for your info, use what you want inside of ''
        numberOfPages = 6,               -- Must be the exact number of pages you made for that book.
    },
    ['lstimes2'] = {                       -- ITEMS NAME : Add your respective items to ESX - Database // QBcore items.lua
        name = 'LS Times 2',           -- this is just for your info, use what you want inside of ''
        numberOfPages = 4,               -- Must be the exact number of pages you made for that book.
    },
    ['lstimes3'] = {                       -- ITEMS NAME : Add your respective items to ESX - Database // QBcore items.lua
        name = 'LS Times 3',           -- this is just for your info, use what you want inside of ''
        numberOfPages = 4,               -- Must be the exact number of pages you made for that book.
    },
    ['lstimes4'] = {                       -- ITEMS NAME : Add your respective items to ESX - Database // QBcore items.lua
        name = 'LS Times 4',           -- this is just for your info, use what you want inside of ''
        numberOfPages = 4,               -- Must be the exact number of pages you made for that book.
    },
    ['science1'] = {                       -- ITEMS NAME : Add your respective items to ESX - Database // QBcore items.lua
        name = 'Rapport 1',           -- this is just for your info, use what you want inside of ''
        numberOfPages = 2,               -- Must be the exact number of pages you made for that book.
    },
}