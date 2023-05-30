fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

description 'Vehicle Tracker by Lubes | Prime Development'
version '1.3.3'

ui_page 'html/index.html'

client_scripts {
	'locales/en.lua',
	'config.lua',
	'client/functions.lua',
	'colors.lua',
	'client/editable/esx_functions.lua',
	'client/editable/qb_functions.lua',
	'client/editable/standalone_functions.lua',
	'client/main.lua',
	'client/placeTracker.lua',
	'client/removeTracker.lua',
	'client/blip.lua',
	'client/scanTracker.lua',
	'client/jamTracker.lua',
	
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'locales/en.lua',
	'config.lua',
	'client/functions.lua',
	'server/server.lua',
	'server/editable/esx_item.lua',
	'server/editable/qb_item.lua',
	'server/editable/sql.lua'
}


escrow_ignore {
	'server/editable/*.lua',
	'client/editable/*.lua',
	'config.lua',
	'locales/*.lua',
	'colors.lua',
}

files {
	'html/*.html',
	'html/*.js',
	'html/*.wav'
}

dependency '/assetpacks'