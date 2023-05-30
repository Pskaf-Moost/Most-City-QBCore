if Config.ESX.enabled then

    if Config.ESX.enabled then
        Citizen.CreateThread(function()
            while ESX == nil do
                TriggerEvent('esx:getSharedObject', function(obj)
                    ESX = obj
                end)
                Citizen.Wait(0)
            end
        end)
    end

    function HasItem(itemName)
        local inventory = ESX.GetPlayerData().inventory
        for _, item in ipairs(inventory) do
            if item ~= nil and item.name == itemName then
                if item.count > 0 then
                    return true
                end
            end
        end
        return false
    end

    function HasJob(jobName)
        return (ESX.GetPlayerData().job.name == jobName)
    end

    RegisterNetEvent('pd_tracker:showOnTheMoveNotif')
    AddEventHandler('pd_tracker:showOnTheMoveNotif', function(trackerName)
        ESX.ShowNotification(_L("{TRACKER NAME} is on the move"):gsub("{TRACKER NAME}", trackerName))
    end)


    function openVehicleTrackingStore()
        ESX.UI.Menu.CloseAll()

        local elements = {}

        for k,v in ipairs(Config.vehicleTrackingSupplies.items) do
            table.insert(elements, {
                label  = (v.label .. ' <span style="color:orange;">[</span><span style="color:green;">$'.. v.price .. '</span><span style="color:orange;">]</span>'),
                index = k
            })
        end

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'lockpickingStore', {
            title    = _L('Vehicle Tracking Supplies'),
            align    = 'right',
            elements = elements
        }, function(data, menu)
            menu.close()
            TriggerServerEvent('pd_tracker:buy', data.current.index)
        end, function(data, menu)
            menu.close()
        end)
    end

    if Config.vehicleTrackingSupplies.enabled then
        ---create map blip
        Citizen.CreateThread(function()
            for k, store in pairs(Config.vehicleTrackingSupplies.locations) do
                if Config.vehicleTrackingSupplies.useBlip then
                    local blip = AddBlipForCoord(store.x, store.y, store.z)
                    SetBlipSprite (blip, 186)
                    SetBlipDisplay(blip, 4)
                    SetBlipScale  (blip, 1.6)
                    SetBlipColour (blip, 20)
                    SetBlipAsShortRange(blip, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString(_L('Vehicle Tracking Supplies'))
                    EndTextCommandSetBlipName(blip)
                end

                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(0)
                        local distance = GetDistanceBetweenCoords(store.x, store.y, store.z, GetEntityCoords(GetPlayerPed(-1)))
                        if distance < 150 then
                            DrawMarker(1, store.x, store.y, store.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.3, 2.3, 0.7, 0, 40, 180, 90, 0, 1, 0, 0)
                            if distance < 3 then
                                Draw3DText(store.x, store.y, store.z, _L('Open ~g~Vehicle Tracking Supplies~w~ Store').." [~b~E~w~]", 4, 0.1, 0.075)
                                if IsControlJustReleased(0, Keys[Config.cancelKey]) then
                                    openVehicleTrackingStore()
                                end
                            end
                        end
                    end
                end)

            end
        end)
    end

end

