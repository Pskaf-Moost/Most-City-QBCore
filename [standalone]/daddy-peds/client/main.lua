
local QBCore = exports['qb-core']:GetCoreObject()
local isTransformed = false

-------------------whitelist-----------------


local Whitelist = {}

Whitelist.command1 = true



-- AddEventHandler("onClientResourceStart", function (ResourceName)

-- if(GetCurrentResourceName() == ResourceName) then
--    print("checking ped whitelist")
--    TriggerServerEvent("Whitelist:WhitelistCheck", Whitelist)
-- end
-- end)

-- RegisterNetEvent("Whitelist:Return:WhitelistCheck")
-- AddEventHandler("Whitelist:Return:WhitelistCheck", function(NewWhitelist)
-- Whitelist = NewWhitelist
-- end)


---------------end whitelist---------------------

-------------------
-- _   _   _____ --
--| | | | |_   _|--
--| | | |   | |  --
--| | | |   | |  --
--| |_| |  _| |_ --
-- \___/   \___/ --
-------------------

RegisterNetEvent('selectPed')
AddEventHandler('selectPed',function()
local keyboard = exports["nh-keyboard"]:KeyboardInput({
   header = "SELECT YOUR PED",
   rows = {
      {
         id = 0,
         txt = "Name"
      },

   }
})
if Whitelist.command1 then
   if keyboard ~= nil then
      TriggerServerEvent('applyPed', keyboard[1].input)
      pedName = keyboard[1].input
      TriggerEvent('transform', source)
   end
else
   TriggerClientEvent('QBCore:Notify', src, 'You do not have permission', 'error')
end
end)


------------------------------------------------
--______                _   _                 --
--|  ___|              | | (_)                --
--| |_ _   _ _ __   ___| |_ _  ___  _ __  ___ --
--|  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|--
--| | | |_| | | | | (__| |_| | (_) | | | \__ \--
--\_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/--
------------------------------------------------


--not mandatory, used for items


function reloadSkin()

   local model = nil

   local gender = QBCore.Functions.GetPlayerData().charinfo.gender

   if gender == 1 then
      model = GetHashKey("mp_f_freemode_01")
   else
      model = GetHashKey("mp_m_freemode_01")
   end

   RequestModel(model)

   SetPlayerModel(PlayerId(), model)
   SetModelAsNoLongerNeeded(model)
   Citizen.Wait(0)

   TriggerServerEvent("qb-clothes:loadPlayerSkin")
   TriggerServerEvent("qb-clothing:loadPlayerSkin")
   TriggerServerEvent('Select:Tattoos')
end



-----------------------------------------
-- _____ _   _ _____ _   _ _____ _____ --
--|  ___| | | |  ___| \ | |_   _/  ___|--
--| |__ | | | | |__ |  \| | | | \ `--. --
--|  __|| | | |  __|| . ` | | |  `--. \--
--| |___\ \_/ / |___| |\  | | | /\__/ /--
--\____/ \___/\____/\_| \_/ \_/ \____/ --
-----------------------------------------

RegisterNetEvent('transform')
AddEventHandler('transform', function()
print(Whitelist.command1)
if Whitelist.command1 then
   local playerPed = PlayerPedId()
   local ped = pedName
   local hash = GetHashKey(ped)
   print("transform")
   print(ped)
   RequestModel(hash)
   while not HasModelLoaded(hash)
      --do RequestModel(hash)
      do Citizen.Wait(0)
   end
   SetPlayerModel(PlayerId(), hash)
   print("end transform")
else
   TriggerClientEvent('QBCore:Notify', src, 'You do not have permission', 'error')
end
end)

-------------------------------------------------------------------------------------------------------------------------
-- Can follow this format to create useable items that can transform or have effects! (server AND clientside required)
RegisterNetEvent('alienpotion')
AddEventHandler('alienpotion', function()
local playerPed = PlayerPedId()
local ped = 'GrayAlien'
local hash = GetHashKey(ped)
local playerHash = GetHashKey()
if isTransformed == false then
   RequestModel(hash)
   while not HasModelLoaded(hash)
         --do RequestModel(hash)
         do Citizen.Wait(0)
      end
   SetPlayerModel(PlayerId(), hash)
   SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
   SetPlayerMaxStamina(PlayerId(), 2000)
   isTransformed = true
   
else
   reloadSkin()
   SetPlayerMaxStamina(PlayerId(), 100)
   SetRunSprintMultiplierForPlayer(PlayerId(), 1.00)
   isTransformed = false
end
end)

RegisterNetEvent('catpotion')
AddEventHandler('catpotion', function()
local playerPed = PlayerPedId()
local ped = 'a_c_cat_01'
local hash = GetHashKey(ped)
local playerHash = GetHashKey()
if isTransformed == false then
   RequestModel(hash)
   while not HasModelLoaded(hash)
         --do RequestModel(hash)
         do Citizen.Wait(0)
      end
   SetPlayerModel(PlayerId(), hash)
   SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
   SetPlayerMaxStamina(PlayerId(), 2000)
   isTransformed = true
   
else
   reloadSkin()
   SetPlayerMaxStamina(PlayerId(), 100)
   SetRunSprintMultiplierForPlayer(PlayerId(), 1.00)
   isTransformed = false
end
    

-- local playerPed = PlayerPedId()
-- SetPedDefaultComponentVariation(playerPed)
-- ClearAllPedProps(playerPed)
-- ClearPedDecorations(playerPed)
-- ClearPedFacialDecorations(playerPed)
-- SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
-- SetPlayerMaxStamina(PlayerId(), 2000)
-- if isAnimal then
--    SetPedComponentVariation(playerPed, 0, 0, 0, 0)
--    Wait(200)
--    SetPedComponentVariation(playerPed, 0, 0, 1, 0)
--    Wait(200)
-- end

-- SetEntityHealth(playerPed, 2000)
-- AddArmourToPed(playerPed, 1000)
-- SetPedArmour(playerPed, 1000)
-- SetPedSuffersCriticalHits(playerPed, false)
-- SetTimecycleModifier("BeastLaunch02")
-- Citizen.Wait(15000)


-- SetPedSuffersCriticalHits(playerPed, true)
-- SetEntityHealth(playerPed, 10)
-- SetPlayerMaxStamina(PlayerId(), 100)
-- SetRunSprintMultiplierForPlayer(PlayerId(), 1.00)
-- ClearTimecycleModifier()
-- SetModelAsNoLongerNeeded(hash)
-- reloadSkin()
end)
----------------------------------------------------------------


