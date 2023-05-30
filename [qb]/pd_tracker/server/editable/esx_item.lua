if Config.ESX.enabled then
    ESX = nil
    
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

    if Config.trackerItem.itemEnabled then
        for itemName, info in pairs(Config.trackerItem.trackerGrades) do
            ESX.RegisterUsableItem(itemName, function(source)
                TriggerClientEvent('pd_tracker:placeTracker', source, itemName)
            end)
        end
    end

    if Config.removeTracker.screwdriverUseFunctionality then
        ESX.RegisterUsableItem(Config.screwdriverItem, function(source)
            TriggerClientEvent('pd_tracker:removeTracker', source)
        end)
    end
    
    if Config.scanner.itemEnabled then
        ESX.RegisterUsableItem(Config.scanner.itemName, function(source)
            TriggerClientEvent('pd_tracker:scanTracker', source)
        end)
    end

    if Config.jammer.itemEnabled then
        ESX.RegisterUsableItem(Config.jammer.itemName, function(source)
            TriggerClientEvent('pd_tracker:installJammer', source)
        end)
    end

    RegisterServerEvent("pd_tracker:removeTrackerFromInventory")
    AddEventHandler("pd_tracker:removeTrackerFromInventory", function(itemName)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(itemName, 1)
    end)

    function AddItem(player, itemName)
        local xPlayer = ESX.GetPlayerFromId(player)
        if Config.ESX.useLegacyESX then
            local item_obj = xPlayer.getInventoryItem(itemName)

            if item_obj.limit == -1 or (item_obj.count + 1) <= item_obj.limit then
                xPlayer.addInventoryItem(itemName, 1)
            end
        else   
            if xPlayer.canCarryItem(itemName, 1) then
                xPlayer.addInventoryItem(itemName, 1)
            end
        end
    end


    function buyItem(source, item, cash)
        local xPlayer = ESX.GetPlayerFromId(source)
        if Config.ESX.useLegacyESX then
            local item_obj = xPlayer.getInventoryItem(item.item)

            if item_obj.limit == -1 or (item_obj.count + 1) <= item_obj.limit then
                xPlayer.addInventoryItem(item.item, 1)
                if cash then
                    xPlayer.removeMoney(item.price)
                else
                    xPlayer.removeAccountMoney('bank', item.price)
                end
                TriggerClientEvent('esx:showNotification', source, _L("You successfully bought a ") .. '~y~' .. item.label)
            else
                TriggerClientEvent('esx:showNotification', source, _L('Not enough room in your inventory'))
            end
        else    
            if xPlayer.canCarryItem(item.item, 1) then
                xPlayer.addInventoryItem(item.item, 1)
                if cash then
                    xPlayer.removeMoney(item.price)
                else
                    xPlayer.removeAccountMoney('bank', item.price)
                end
                TriggerClientEvent('esx:showNotification', source, _L("You successfully bought a ") .. '~y~' .. item.label)
            else
                TriggerClientEvent('esx:showNotification', source, _L('Not enough room in your inventory'))
            end
        end
    end


    RegisterServerEvent("pd_tracker:buy")
    AddEventHandler("pd_tracker:buy", function(itemID)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)

        local item = Config.vehicleTrackingSupplies.items[itemID]

        if xPlayer.getMoney() >= item.price then
            buyItem(_source, item, true)
        else
            if Config.vehicleTrackingSupplies.payWithBank then
                if xPlayer.getAccount('bank').money >= item.price then
                    buyItem(_source, item, false)
                end
            end
            xPlayer.showNotification(_L("You don't have enough money to buy this item"))
        end
    end)
end