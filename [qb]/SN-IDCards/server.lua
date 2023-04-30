local QBCore = exports['qb-core']:GetCoreObject()

CreateThread( function()
    local RName = GetCurrentResourceName()
    if RName ~= "SN-IDCards" then
        print("^1ERROR: Resource name is not SN-IDCards")
        print("^1ERROR: Resource name is not SN-IDCards") 
        print("^1ERROR: Resource name is not SN-IDCards")
    end
end)

QBCore.Functions.CreateUseableItem("id_card", function(source,item)
    local src = source
    local found = false
    local PlayerPed = GetPlayerPed(src)
    local PlayerCoords = GetEntityCoords(PlayerPed)

    local Player = QBCore.Functions.GetPlayer(src)
    local Gender = "M"
    local Image = Player.PlayerData.metadata["id_image"] or Config.NoImage
    local Weight = Player.PlayerData.metadata["weight"] or Config.DefaultWeight
    local Height = Player.PlayerData.metadata["height"] or Config.DefaultHeight
    
    if item.info.gender == 1 then 
        Gender = "F"
    end

    local Data = {
        Image = Image,
        CID = item.info.citizenid,
        LastName = item.info.lastname,
        FirstName = item.info.firstname,
        DOB = item.info.birthdate,
        Sex = Gender,
        Weight = Weight,
        Height = Height,
    }

    for i, plrID in pairs(QBCore.Functions.GetPlayers()) do
        local TargetPed = GetPlayerPed(plrID)
        local dist = #(PlayerCoords - GetEntityCoords(TargetPed))
        if dist < 3.0 and PlayerPed ~= TargetPed then
            TriggerClientEvent('QBCore:Notify', src, "Showing your ID Card")
            TriggerClientEvent('SN-IDCard:Client:DisplayID', plrID, "ID", Data)
            found = true
            break
        end
    end
    if not found then TriggerClientEvent('SN-IDCard:Client:DisplayID', src, "ID", Data) end
end)


QBCore.Functions.CreateUseableItem("driver_license", function(source,item)
    local src = source
    local found = false
    local PlayerPed = GetPlayerPed(src)
    local PlayerCoords = GetEntityCoords(PlayerPed)

    local Player = QBCore.Functions.GetPlayer(src)
    local Gender = "M"
    local Image = Player.PlayerData.metadata["dl_image"] or Config.NoImage
    local Weight = Player.PlayerData.metadata["weight"] or Config.DefaultWeight
    local Height = Player.PlayerData.metadata["height"]or Config.DefaultHeight

    if item.info.gender == 1 then 
        Gender = "F"
    end

    local Data = {
        Image = Image,
        CID = item.info.citizenid,
        LastName = item.info.lastname,
        FirstName = item.info.firstname,
        DOB = item.info.birthdate,
        Sex = Gender,
        Weight = Weight,
        Height = Height,
    }
    
    for i, plrID in pairs(QBCore.Functions.GetPlayers()) do
        local TargetPed = GetPlayerPed(plrID)
        local dist = #(PlayerCoords - GetEntityCoords(TargetPed))
        if dist < 3.0 and PlayerPed ~= TargetPed then
            TriggerClientEvent('QBCore:Notify', src, "Showing your Driver License")
            TriggerClientEvent('SN-IDCard:Client:DisplayID', plrID, "DL", Data)
            found = true
            break
        end
    end
    if not found then TriggerClientEvent('SN-IDCard:Client:DisplayID', src, "DL", Data) end
end)

QBCore.Functions.CreateUseableItem("police_badge", function(source,item)
    local src = source
    local found = false
    local PlayerPed = GetPlayerPed(src)
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local Player = QBCore.Functions.GetPlayer(src)
    local PImage = Player.PlayerData.metadata["pd_image"] or Config.NoImage
    local Data = {
        FirstName = item.info.firstname,
        LastName = item.info.lastname,
        Image = PImage,
        CallSign = item.info.callsign,
        JobTitle = item.info.jobtitle,
        Division = item.info.division,
        DivisionTitle = item.info.divisiontitle,
        DivisionImage = item.info.divisionimage,
        DivisionColor = item.info.divisioncolor 
    }
    for i, plrID in pairs(QBCore.Functions.GetPlayers()) do
        local TargetPed = GetPlayerPed(plrID)
        local dist = #(PlayerCoords - GetEntityCoords(TargetPed))
        if dist < 3.0 and PlayerPed ~= TargetPed then
            TriggerClientEvent('QBCore:Notify', src, "Showing your Police Badge")
            TriggerClientEvent('SN-IDCard:Client:DisplayID', plrID, "PD", Data)
            found = true
            break
        end
    end
    if not found then TriggerClientEvent('SN-IDCard:Client:DisplayID', src, "PD", Data) end
    TriggerClientEvent("SN-IDCard:Client:PDAnimation", src)
end)

QBCore.Functions.CreateUseableItem("ems_idcard", function(source,item)
    local src = source
    local found = false
    local PlayerPed = GetPlayerPed(src)
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local Player = QBCore.Functions.GetPlayer(src)
    local PImage = Player.PlayerData.metadata["ems_image"] or Config.NoImage
    local Data = {
        FirstName = item.info.firstname,
        LastName = item.info.lastname,
        Image = PImage,
        CallSign = item.info.callsign,
        JobTitle = item.info.jobtitle,
    }
    for i, plrID in pairs(QBCore.Functions.GetPlayers()) do
        local TargetPed = GetPlayerPed(plrID)
        local dist = #(PlayerCoords - GetEntityCoords(TargetPed))
        if dist < 3.0 and PlayerPed ~= TargetPed then
            TriggerClientEvent('QBCore:Notify', src, "Showing your EMS ID")
            TriggerClientEvent('SN-IDCard:Client:DisplayID', plrID, "EMS", Data)
            found = true
            break
        end
    end
    if not found then TriggerClientEvent('SN-IDCard:Client:DisplayID', src, "EMS", Data) end
end)

RegisterServerEvent('SN-IDCard:Server:UpdateIDS')
AddEventHandler('SN-IDCard:Server:UpdateIDS',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    EditIDSInfo(src, Player)
end)


RegisterServerEvent('SN-IDCard:Server:UpdateMetaData')
AddEventHandler('SN-IDCard:Server:UpdateMetaData',function(Data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for MetaDataName, Value in pairs(Data) do
        Player.Functions.SetMetaData(MetaDataName, Value)
    end
end)

QBCore.Commands.Add("updateid", "(Government) Update ID Info", {{name = "id", help = "PlayerID"}}, true, function(source,args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local TargetPlayer = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if Config.WLJobs[Player.PlayerData.job.name] then
        if TargetPlayer then
            if Config.WLJobs[TargetPlayer.PlayerData.job.name] then
                EditIDSInfo(tonumber(args[1]), TargetPlayer)
            end
        else
            EditIDSInfo(src, Player)
        end

    else
        QBCore.Functions.Notify(src, "You are not allowed to use this command!", 'error')
    end
end)

RegisterServerEvent('SN-IDCard:Server:BuyID')
AddEventHandler('SN-IDCard:Server:BuyID',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local info = {}
    info.citizenid = Player.PlayerData.citizenid
    info.lastname = Player.PlayerData.charinfo.lastname
    info.firstname = Player.PlayerData.charinfo.firstname
    info.birthdate = Player.PlayerData.charinfo.birthdate
    info.gender = Player.PlayerData.charinfo.gender
    info.nationality = Player.PlayerData.charinfo.nationality

    CanBuy(src, Player, "id_card", info)
end)

RegisterServerEvent('SN-IDCard:Server:BuyDL')
AddEventHandler('SN-IDCard:Server:BuyDL',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local info = {}
    info.citizenid = Player.PlayerData.citizenid
    info.lastname = Player.PlayerData.charinfo.lastname
    info.firstname = Player.PlayerData.charinfo.firstname
    info.birthdate = Player.PlayerData.charinfo.birthdate
    info.gender = Player.PlayerData.charinfo.gender
    info.type = "Class C Driver License"
    CanBuy(src, Player, "driver_license", info)
end)

RegisterServerEvent('SN-IDCard:Server:BuyPD')
AddEventHandler('SN-IDCard:Server:BuyPD',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local info = {}
    info.firstname = Player.PlayerData.charinfo.firstname
    info.lastname = Player.PlayerData.charinfo.lastname
    info.callsign = Player.PlayerData.metadata['callsign']
    info.jobtitle = "Ummm"
    if Config.PDDivisions[Player.PlayerData.job.name] then
        info.jobtitle = Player.PlayerData.job.grade.name
        info.division = true
        info.divisiontitle = Config.PDDivisions[Player.PlayerData.job.name].IDTitle
        info.divisionimage = Config.PDDivisions[Player.PlayerData.job.name].IconName
        info.divisioncolor = Config.PDDivisions[Player.PlayerData.job.name].IDColor
    elseif Player.PlayerData.job.name == "police" then
        info.jobtitle = Player.PlayerData.job.grade.name
        info.division = false
    end
    CanBuy(src, Player, "police_badge", info)
end)

RegisterServerEvent('SN-IDCard:Server:BuyEMS')
AddEventHandler('SN-IDCard:Server:BuyEMS',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local info = {}
    info.firstname = Player.PlayerData.charinfo.firstname
    info.lastname = Player.PlayerData.charinfo.lastname
    info.callsign = Player.PlayerData.metadata['callsign']
    info.jobtitle = "Ummm"
    if Player.PlayerData.job.name == "ambulance" then
        info.jobtitle = Player.PlayerData.job.grade.name
    end
    CanBuy(src, Player, "ems_idcard", info)
end)

function CanBuy(src, Player, ItemName, info)
    local cost = 50
    if ItemName == 'id_card' then
        cost = Config.IDPrice
    elseif ItemName == 'driver_license' then
        cost = Config.DLPrice
    elseif ItemName == 'police_badge' then
        cost = Config.PoliceBadgePrice
    elseif ItemName == 'ems_idcard' then
        cost = Config.EMSIDPrice
    end
    if Player.PlayerData.money.cash >= cost then
        Player.Functions.AddItem(ItemName, 1, nil, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ItemName], 'add')
        Player.Functions.RemoveMoney('cash', cost)
        TriggerClientEvent('QBCore:Notify', src, "ID Bought -"..cost.."$", "success")
    elseif Player.PlayerData.money.bank >= cost then
        Player.Functions.AddItem(ItemName, 1, nil, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ItemName], 'add')
        Player.Functions.RemoveMoney('cash', cost)
        TriggerClientEvent('QBCore:Notify', src, "ID Bought -"..cost.."$", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You dont have enough money", "error")
    end
end

function EditIDSInfo(src, Player)
    local Data = {}
    Data.citizenid = Player.PlayerData.citizenid
    Data.lastname = Player.PlayerData.charinfo.lastname
    Data.firstname = Player.PlayerData.charinfo.firstname
    Data.birthdate = Player.PlayerData.charinfo.birthdate
    Data.gender = Player.PlayerData.charinfo.gender
    Data.id_image = Player.PlayerData.metadata["id_image"] or Config.NoImage
    Data.dl_image = Player.PlayerData.metadata["dl_image"] or Config.NoImage
    Data.pd_image = Player.PlayerData.metadata["pd_image"] or Config.NoImage
    Data.ems_image = Player.PlayerData.metadata["ems_image"] or Config.NoImage
    Data.weight = Player.PlayerData.metadata["weight"] or Config.DefaultWeight
    Data.height = Player.PlayerData.metadata["height"] or Config.DefaultHeight
    TriggerClientEvent('SN-IDCard:Client:OpenEditMenu', src, Data)
end