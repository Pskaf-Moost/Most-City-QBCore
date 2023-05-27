name "Jim-Bars"
author "Jimathy"
version "1.3.5"
description "Bar Job Script By Jimathy"
fx_version "cerulean"
game "gta5"
lua54 'yes'

client_scripts { '@PolyZone/client.lua', '@PolyZone/BoxZone.lua', '@PolyZone/EntityZone.lua', '@PolyZone/CircleZone.lua', '@PolyZone/ComboZone.lua', 'client/*.lua', }
server_scripts { 'server/server.lua' }
shared_scripts { 'locales/*.lua', 'config.lua', 'locations/*.lua','shared/*.lua' }
escrow_ignore {	'*.lua*', 'client/*.lua*', 'locations/*.lua*', 'server/*.lua*', 'locales/*.lua', }
dependency '/assetpacks'