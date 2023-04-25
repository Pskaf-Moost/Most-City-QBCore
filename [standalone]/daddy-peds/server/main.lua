
local QBCore = exports['qb-core']:GetCoreObject()

--YOUR WEBHOOK URL HERE
local Webhook = ''


----------------WHITELIST----------------------


-- RegisterServerEvent("Whitelist:WhitelistCheck")
-- AddEventHandler("Whitelist:WhitelistCheck", function(Whitelist)

-- for i in pairs(Whitelist) do

--    Whitelist[i] = "pending"
-- end


-- local Data = LoadResourceFile(GetCurrentResourceName(), "whitelist.json")

-- if Data then

--    local Entries = json.decode(Data)


--    for _, Entry in ipairs(Entries) do

--       if GetPlayerIdentifier(source):lower() == Entry.steamhex:lower() then

--          for i in pairs(Entry) do

--             if i ~= "steamhex" then

--                if Entry[i] then

--                   if Whitelist[i] then

--                      Whitelist[i] = true

--                   else

--                      print("===================================================================")
--                      print("==============================WARNING==============================")
--                      print("/" .. i .. " is not a valid whitelist entry, but is listed in ")
--                      print(Entry.steamhex:lower() .. "'s whitelist entry. Please correct this")
--                      print("issue, reload the resource.")
--                      print("===================================================================")
--                   end
--                end
--             end
--          end

--          break
--       end
--    end

-- else

--    print("===================================================================")
--    print("==============================WARNING==============================")
--    print("Unable to load whitelist file for" .. GetCurrentResourceName())
--    print("Whitelist has been disabled. This message will appear every time so")
--    print("meone joins the server until the issue is corrected.")
--    print("===================================================================")

--    for i in pairs(Whitelist) do

--       Whitelist[i] = true
--    end

-- end

-- for i in pairs(Whitelist) do

--    if Whitelist[i] == "pending" then

--       Whitelist[i] = false
--    end
-- end


-- TriggerClientEvent("Whitelist:Return:WhitelistCheck", source, Whitelist)
-- end)

------------------------------------------------
--______                _   _                 --
--|  ___|              | | (_)                --
--| |_ _   _ _ __   ___| |_ _  ___  _ __  ___ --
--|  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|--
--| | | |_| | | | | (__| |_| | (_) | | | \__ \--
--\_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/--
------------------------------------------------


function GetIdentifier(source)
   local test = 0
   if test == 0 then
      local xPlayer = QBCore.Functions.GetPlayer(source)
      return xPlayer.PlayerData.steam
   end
end

-----------------------------------------
-- _____ _   _ _____ _   _ _____ _____ --
--|  ___| | | |  ___| \ | |_   _/  ___|--
--| |__ | | | | |__ |  \| | | | \ `--. --
--|  __|| | | |  __|| . ` | | |  `--. \--
--| |___\ \_/ / |___| |\  | | | /\__/ /--
--\____/ \___/\____/\_| \_/ \_/ \____/ --
-----------------------------------------

RegisterServerEvent('applyPed')
AddEventHandler('applyPed',function(name)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   local ped = name
   local model = GetHashKey(ped)
   local identifier = GetIdentifier(source)
   local steam = identifier 
   -- PerformHttpRequest(Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = 'daddy-peds', content = ' **USER:**   ```'..steam..'```**SELECTED PED:**   ```'..ped..'```**---------------------------------------------------------------------------------------------------------**'}), { ['Content-Type'] = 'application/json' })
end)

-----------------------------------------------------------
-- _____                                           _     --
--/  __ \                                         | |    --
--| /  \/ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___ --
--| |    / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|--
--| \__/\ (_) | | | | | | | | | | | (_| | | | | (_| \__ \--
-- \____/\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/--
-----------------------------------------------------------

QBCore.Commands.Add("selectped", "select your ped", {}, true, function(source, args)
   local Player = QBCore.Functions.GetPlayer(source)
   local identifier = GetIdentifier(source)
   local steam = identifier
   local pedName = args[1]
      TriggerClientEvent('selectPed', source)
end,'user')

-------------------------------

---------------------------------
--______ _                     --
--|_   _| |                    --
--  | | | |_ ___ _ __ ___  ___ --
--  | | | __/ _ \ '_ ` _ \/ __|--
-- _| |_| ||  __/ | | | | \__ \--
--\___/ \__\___|_| |_| |_|___/--
---------------------------------

-- Can follow this format to create useable items that can transform or have effects!

QBCore.Functions.CreateUseableItem('dogpotion', function(source)
   local Player = QBCore.Functions.GetPlayer(source)
   local identifier = GetIdentifier(source)
   local steam = identifier
      TriggerClientEvent('dogpotion', source)
      Player.Functions.RemoveItem("dogpotion", 1)
      TriggerEvent("qb-inventory:client:ItemBox", QBCore.Shared.Items["dogpotion"], "remove")
      --PerformHttpRequest(Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = 'daddy-peds', content = ' **USER:**   ```'..steam..'```**Changed their ped using**   ```DOG POTION```**---------------------------------------------------------------------------------------------------------**'}), { ['Content-Type'] = 'application/json' })
end)

