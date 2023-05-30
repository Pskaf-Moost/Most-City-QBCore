function Draw3DText(x, y, z, textInput, fontId, scaleX, scaleY)
    local scaleX = scaleX * 1.5
    local scaleY = scaleY * 1.5
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, true)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function HelpText(text)
    if not Config.useSubtitles then
        Citizen.CreateThread(function()
            local drawText = 5
            Citizen.CreateThread(function()
                while drawText > 0 do
                    local playerPed = PlayerPedId()
                    local playerCoords = GetEntityCoords(playerPed)
                    Citizen.Wait(1)
                    Draw3DText(playerCoords.x, playerCoords.y, playerCoords.z + 0.2, _L(text), 4, 0.04, 0.04)
                end
            end)
            while drawText > 0 do
                drawText = drawText - 1
                Citizen.Wait(1000)
            end
        end)
    else
        drawSubtitles(_L(text), 5000)
    end
end

function drawSubtitles(text, time)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(text)
    EndTextCommandPrint(time, true)
end