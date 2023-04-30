local QBCore = exports['qb-core']:GetCoreObject()
local ShowingID = false

CreateThread(function()
    RequestModel(797459875)
    while not HasModelLoaded(797459875) do
        Wait(1)
    end

    local CourtHouseIDPed =  CreatePed(0,797459875, Config.IDPed, false, false)
    FreezeEntityPosition(CourtHouseIDPed, true)
    SetEntityInvincible(CourtHouseIDPed, true)
    SetBlockingOfNonTemporaryEvents(CourtHouseIDPed, true)
    local PDJobs = {['police'] = 0}
    for Name,i in pairs(Config.PDDivisions) do
        PDJobs[Name] = 0
    end
    CourtOptions = {
        {
            type = "server",
            event = 'SN-IDCard:Server:BuyID',
            icon = "fas fa-id-card-alt",
            label = "Buy ID - "..Config.IDPrice.."$"
        },{
            type = "server",
            event = 'SN-IDCard:Server:BuyDL',
            icon = "fas fa-id-card-alt",
            label = "Buy Drivers License - "..Config.DLPrice.."$"
        },{
            type = "server",
            event = 'SN-IDCard:Server:BuyPD',
            icon = "fas fa-id-card-alt",
            label = "Buy Police Badge - "..Config.PoliceBadgePrice.."$",
            job = PDJobs
        },{
            type = "server",
            event = 'SN-IDCard:Server:BuyEMS',
            icon = "fas fa-id-card-alt",
            label = "Buy EMS ID - "..Config.EMSIDPrice.."$",
            job = "ambulance"
        },
    }
    if Config.CivilianCanEditID then
        table.insert(CourtOptions,{
            type = "server",
            event = 'SN-IDCard:Server:UpdateIDS',
            icon = "fas fa-id-card-alt",
            label = "Edit ID Info",
        })
    end

    exports['qb-target']:AddEntityZone("CourtHouseIDPed", CourtHouseIDPed, {
    }, {
        options = CourtOptions,
        distance = 2.5,
    })
    if Config.ShowBlip then
        local Blip = AddBlipForCoord(Config.IDPed)
        SetBlipSprite(Blip, Config.Blip.Sprite)
        SetBlipScale(Blip, Config.Blip.Scale) 
        SetBlipColour(Blip, Config.Blip.Color)
        SetBlipAsShortRange(Blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Blip.Text)
        EndTextCommandSetBlipName(PermBlip)
    end
end)


RegisterNetEvent('SN-IDCard:Client:DisplayID', function(Type, Data)
    ShowID(Type, Data)
end)

RegisterNetEvent('SN-IDCard:Client:PDAnimation', function(Type, Data)
    local ped = PlayerPedId()
    local propname = "prop_fib_badge"
    local x,y,z = table.unpack(GetEntityCoords(ped))
    local prop = CreateObject(GetHashKey(propname), x, y, z + 0.2, true, true, true)
    local boneIndex = GetPedBoneIndex(ped, 28422)
    QBCore.Functions.RequestAnimDict("paper_1_rcm_alt1-9")
    AttachEntityToEntity(prop, ped, boneIndex, 0.12, 0.01, -0.06, -310.0, 10.0, 150.0, true, true, false, true, 1, true)
    TaskPlayAnim(ped, "paper_1_rcm_alt1-9", "player_one_dual-9", 3.0, -1, -1, 50, 0, false, false, false)
    Wait(3200)
    if IsEntityAttachedToEntity(PlayerPedId(), v) then
        SetEntityAsMissionEntity(v, true, true)
        DeleteObject(v)
        DeleteEntity(v)
    end
    DeleteEntity(prop)
    ClearPedTasks(ped)
end)

RegisterNUICallback("ExitID", function()
    SetNuiFocus(false)
    ShowingID = false
end)

RegisterNUICallback("ExitUpdateStats", function(Data)
    SetNuiFocus(false)
    ShowingID = false
    TriggerServerEvent('SN-IDCard:Server:UpdateMetaData', Data)
end)

function ShowID(Type, Data)
    if ShowingID ~= Type or Type == "EditUI" then
        SetNuiFocusKeepInput(true)
        SetNuiFocus(true,false)
        if Data.DivisionTitle then
            Data.DivisionTitle = string.upper(Data.DivisionTitle)
        end
        SendNUIMessage({
            Show = true,
            Type = Type,
            Image = Data.Image,
            PCID = Data.CID,
            PLastName = string.upper(Data.LastName),
            PFirstName = string.upper(Data.FirstName),
            DOB = Data.DOB,
            Sex = Data.Sex,
            Height = Data.Height,
            Weight = Data.Weight,
            Signature = Data.FirstName.." "..Data.LastName,
            CallSign = Data.CallSign,
            JobTitle = Data.JobTitle,
            Division = Data.Division,
            DivisionTitle = Data.DivisionTitle,
            DivisionImage = Data.DivisionImage,
            DivisionColor = Data.DivisionColor,
        })
        ShowingID = Type
    else
        SendNUIMessage({Show = false})
        SetNuiFocus(false)
        ShowingID = false
    end
end

RegisterNetEvent('SN-IDCard:Client:OpenEditMenu', function(Data)
    Citizen.Wait(10)
    Type = "EditUI"
    local Gender = "M"
    if Data.gender == 1 then
        Gender = "F"
    end
    SendNUIMessage({
        Show = true,
        Type = "EditUI",
        PCID = Data.citizenid,
        PLastName = string.upper(Data.lastname),
        PFirstName = string.upper(Data.firstname),
        DOB = Data.birthdate,
        Sex = Gender,
        id_image = Data.id_image,
        dl_image = Data.dl_image,
        pd_image = Data.pd_image,
        ems_image = Data.ems_image,
        Weight = Data.weight,
        Height = QBCore.Shared.SplitStr(Data.height, "'")[1],
        Height2 = QBCore.Shared.SplitStr(Data.height, "'")[2],
        Signature = Data.firstname.." "..Data.lastname,

    })
    SetNuiFocus(true,true)
    ShowingID = Type
end)
