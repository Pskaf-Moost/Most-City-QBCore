SuperPouvoir = {
    'license:5d562e7f710837951e3d2a05b0755d5f097c1073' --- Ness
}
 
 
function perms(player)
    local perm = false
    for _,id in ipairs(SuperPouvoir) do
        for _,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                perm = true
            end
        end
    end
    return perm
end

RegisterServerEvent("Pw:smoke")
AddEventHandler("Pw:smoke", function(entity, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
    TriggerClientEvent("Pw:c_smoke", -1, entity, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
end)
 
RegisterCommand('powers', function(source, _)
    if perms(source) then
        TriggerClientEvent('OpenMenu:Ness', source)
    else
        TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Vous n\'avez pas la permission.')
    end
end)

RegisterCommand('powersCheck', function(source, _)
    if perms(source) then
        TriggerClientEvent('PowersMenu:checkCL', source, true)
    else
        TriggerClientEvent('PowersMenu:checkCL', source, false)
    end
end)