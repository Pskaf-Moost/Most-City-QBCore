fx_version 'cerulean'
game 'gta5'

shared_script 'config.lua'
server_script 'server.lua'
client_script 'client.lua'

ui_page 'UI/index.html'

files {
    'UI/index.html',
    'UI/style.css',
    'UI/script.js',
    'UI/images/*',
}

escrow_ignore {
    'server.lua',
    'client.lua',
    'config.lua',
}

lua54 'yes'
dependency '/assetpacks'