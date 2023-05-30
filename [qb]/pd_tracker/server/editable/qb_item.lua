if Config.QBCore.enabled then

    QBCore = exports['qb-core']:GetCoreObject()

    if Config.trackerItem.itemEnabled then
        for itemName, info in pairs(Config.trackerItem.trackerGrades) do
            QBCore.Functions.CreateUseableItem(itemName, function(source, item)
                local xPlayer = QBCore.Functions.GetPlayer(source)
                TriggerClientEvent('pd_tracker:placeTracker', source, itemName)
            end)
        end
    end

    if Config.removeTracker.screwdriverUseFunctionality then
        QBCore.Functions.CreateUseableItem(Config.screwdriverItem, function(source, item)
            TriggerClientEvent('pd_tracker:removeTracker', source)
        end)
    end
    
    if Config.scanner.itemEnabled then
        QBCore.Functions.CreateUseableItem(Config.scanner.itemName, function(source, item)
            TriggerClientEvent('pd_tracker:scanTracker', source)
        end)
    end

    if Config.jammer.itemEnabled then
        QBCore.Functions.CreateUseableItem(Config.jammer.itemName, function(source, item)
            TriggerClientEvent('pd_tracker:installJammer', source)
        end)
    end

    RegisterServerEvent("pd_tracker:removeTrackerFromInventory")
    AddEventHandler("pd_tracker:removeTrackerFromInventory", function(itemName)
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.RemoveItem(itemName, 1)
    end)

    function AddItem(player, itemName)
        local xPlayer = QBCore.Functions.GetPlayer(player)
        xPlayer.Functions.AddItem(itemName, 1)
    end
end