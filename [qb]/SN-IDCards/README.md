# ❤️❤️❤️ THANK YOU FOR YOUR PURCHASE!! ❤️❤️❤️
# ANY QUESTIONS DM ME ON DISCORD!!!

## /callsing [Call Sign] -- TO UPDATE CALL SIGN!!!

## [1] In your Inventory resource > server > main.lua Delete these lines:
```lua
      QBCore.Functions.CreateUseableItem("driver_license", function(source, item)
         for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local PlayerPed = GetPlayerPed(source)
            local TargetPed = GetPlayerPed(v)
            local dist = #(GetEntityCoords(PlayerPed) - GetEntityCoords(TargetPed))
            if dist < 3.0 then
               local gender = "Man"
               if item.info.gender == 1 then
                  gender = "Woman"
               end
               TriggerClientEvent('chat:addMessage', v,  {
                     template = '<div class="chat-message advert"><div class="chat-message-body"><strong>{0}:</strong><br><br> <strong>First Name:</strong> {1} <br><strong>Last Name:</strong> {2} <br><strong>Birth Date:</strong> {3} <br><strong>Gender:</strong> {4}<br><strong>Licenses:</strong> {5}</div></div>',
                     args = {
                        "Drivers License",
                        item.info.firstname,
                        item.info.lastname,
                        item.info.birthdate,
                        gender,
                        item.info.type
                     }
                  }
               )
            end
         end
      end)

      QBCore.Functions.CreateUseableItem("id_card", function(source, item)
         for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local PlayerPed = GetPlayerPed(source)
            local TargetPed = GetPlayerPed(v)
            local dist = #(GetEntityCoords(PlayerPed) - GetEntityCoords(TargetPed))
            if dist < 3.0 then
               local gender = "Man"
               if item.info.gender == 1 then
                  gender = "Woman"
               end
               TriggerClientEvent('chat:addMessage', v,  {
                     template = '<div class="chat-message advert"><div class="chat-message-body"><strong>{0}:</strong><br><br> <strong>Civ ID:</strong> {1} <br><strong>First Name:</strong> {2} <br><strong>Last Name:</strong> {3} <br><strong>Birthdate:</strong> {4} <br><strong>Gender:</strong> {5} <br><strong>Nationality:</strong> {6}<br><strong>Fingerprint:</strong> {7}</div></div>',
                     args = {
                        "ID Card",
                        item.info.citizenid,
                        item.info.firstname,
                        item.info.lastname,
                        item.info.birthdate,
                        gender,
                        item.info.nationality,
                        item.info.fingerprint
                     }
                  }
               )
            end
         end
      end)
```

## [2] In [qb] > qb-core > shared > items.lua add these item:
  ['police_badge'] 				 = {['name'] = 'police_badge', 			  		['label'] = 'Police Badge', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'police_badge.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'To identify yourself'},
  ['ems_idcard'] 					 = {['name'] = 'ems_idcard', 			  		['label'] = 'EMS ID', 				 	['weight'] = 0, 		['type'] = 'item', 		['image'] = 'ems_idcard.png', 		['unique'] = true, 		    ['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'To identify yourself'},

## OPTIONAL YOU CAN USE MY IMAGE FOR THE INVEONTORY:
   * police_badge = https://cdn.discordapp.com/attachments/900164862427156570/1011878308679524382/police_badge.png
   * ems_idcard = https://media.discordapp.net/attachments/900164862427156570/1011971619096383559/ems_idcard.png

## [3] Go to Config.lua to change NPC location and prices

----OPTIONALS-----

# FOR Commands /giveitem to work with ids go to your inventory resource > server > main.lua 
Inside: QBCore.Commands.Add("giveitem", "Give An Item (Admin Only)", {{name="id", help="Player ID"},{name="item", help="Name of the item (not a label)"}, {name="amount", help="Amount of items"}}, true, function(source, args)

Under if itemData["name"] == "id_card" then Replace with:

 info.citizenid = Player.PlayerData.citizenid
 info.lastname = Player.PlayerData.charinfo.lastname
 info.firstname = Player.PlayerData.charinfo.firstname
 info.birthdate = Player.PlayerData.charinfo.birthdate
 info.gender = Player.PlayerData.charinfo.gender
 info.nationality = Player.PlayerData.charinfo.nationality

HOW IT SHOULD LOOK: https://cdn.discordapp.com/attachments/900164862427156570/1011747782106812547/unknown.png

Under if itemData["name"] == "driver_license" then Replace with:

   info.citizenid = Player.PlayerData.citizenid
   info.lastname = Player.PlayerData.charinfo.lastname
   info.firstname = Player.PlayerData.charinfo.firstname
   info.birthdate = Player.PlayerData.charinfo.birthdate
   info.gender = Player.PlayerData.charinfo.gender
   info.type = "Class C Driver License"

elseif itemData["name"] == "police_badge" then
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
elseif itemData["name"] == "ems_idcard" then
         info.firstname = Player.PlayerData.charinfo.firstname
         info.lastname = Player.PlayerData.charinfo.lastname
         info.callsign = Player.PlayerData.metadata['callsign']
         info.jobtitle = Player.PlayerData.job.grade.name
HOW IT SHOULD LOOK: https://media.discordapp.net/attachments/900164862427156570/1011752456096587826/unknown.png


## IF YOU WANT TO CHANGE THE ANY IMAGES GO TO:

SN-IDCARDS/UI/images