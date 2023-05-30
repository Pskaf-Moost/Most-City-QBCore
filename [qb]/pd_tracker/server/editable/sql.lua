hasJammer = {}
function sqlFetch(query, data)
    if Config.sqlDriver  == 'mysql' then
        return MySQL.Sync.fetchAll(query, data or {})
    end

    if Config.sqlDriver  == 'oxmysql' then

        return exports[Config.sqlDriver]:query_async(query, data)
    else
        return exports[Config.sqlDriver]:executeSync(query, data)
    end
end

function sqlInsert(query, data)
    if Config.sqlDriver == 'mysql' then
        MySQL.Sync.insert(query, data)
        return
    end

    if Config.sqlDriver == 'oxmysql' then
        exports[Config.sqlDriver]:insertSync(query, data)
    else
        exports[Config.sqlDriver]:executeSync(query, data)
    end
end

function fetchTrackers()
    local query = string.format("SELECT * from pd_extra where tag = 'pd_tracker:tracker'", plate)
    return sqlFetch(query, {})
end

function registerTrackerToDB(plate, identifier, bone, itemName, color, namedTracker, icon)
    local query = string.format("SELECT * from pd_extra where tag = 'pd_tracker:tracker' and player = '%s'", plate)
    local results = sqlFetch(query, {})
    if #results == 0 then
        query = string.format("INSERT INTO pd_extra (player, tag, data) VALUES ('%s', 'pd_tracker:tracker', @data )", plate)
        local data = {["@data"] = json.encode({{
            identifier = identifier,
            bone = bone,
            itemName = itemName,
            color = color,
            namedTracker = namedTracker, 
            icon = icon
        }})}
        sqlInsert(query, data)
    else
        
        local newData = json.decode(results[1].data)
        if newData == nil then
            newData = {}
        end
        table.insert(newData, {
            identifier = identifier,
            bone = bone,
            itemName = itemName,
            color = color,
            namedTracker = namedTracker, 
            icon = icon
        })
        query = string.format("UPDATE pd_extra SET data = @data WHERE player = '%s'", plate)
        local data = {["@data"] = json.encode(newData)}
        sqlInsert(query, data)
    end
end

function removeTracker(plate, bone)
    local query = string.format("SELECT * from pd_extra where tag = 'pd_tracker:tracker' and player = '%s'", plate)
    local results = sqlFetch(query, {})
    if #results == 0 then
        print("Error: PD1 \
        \nThis is not supposed to happen, please report this incident on the Prime Developments Discord")
    else
        local newTable = {}
        for _, data in ipairs(json.decode(results[1].data)) do
            if data.bone ~= bone then
                table.insert(newTable, data)
            end 
        end
        local data = {} 
        if #newTable == 0 then
            query = string.format("DELETE FROM pd_extra WHERE player = '%s'", plate)
        else
            query = string.format("UPDATE pd_extra SET data = @data WHERE player = '%s'", plate)
            data = {["@data"] = json.encode(newTable)}
            
        end
        sqlInsert(query, data)
    end 
end

RegisterServerEvent('pd_tracker:intallJammer')
AddEventHandler('pd_tracker:intallJammer', function(plate)
    plate = plate:gsub(" ", "")
    local query = string.format("SELECT * from pd_extra where tag = 'pd_tracker:jammer' and data = '%s'", plate)
    local results = sqlFetch(query, {})
    if #results == 0 then
        query = string.format("INSERT INTO pd_extra (player, tag, data) VALUES ('', 'pd_tracker:jammer', '%s')", plate) 
        sqlInsert(query, {})
    end
    hasJammer[plate] = true
    TriggerClientEvent("pd_tracker:hasJammer", -1, plate, hasJammer[plate])
end)

RegisterServerEvent('pd_tracker:isJammerInstalled')
AddEventHandler('pd_tracker:isJammerInstalled', function(plate)
    local _source = source
    plate = plate:gsub(" ", "")
    if hasJammer[plate] == nil then
        local query = string.format("SELECT * from pd_extra where tag = 'pd_tracker:jammer' and data = '%s'", plate)
        
        local results = sqlFetch(query, {})
        if #results > 0 then
            hasJammer[plate] = true
        else
            hasJammer[plate] = false
        end
    end
    TriggerClientEvent("pd_tracker:hasJammer", _source, plate, hasJammer[plate])
end)