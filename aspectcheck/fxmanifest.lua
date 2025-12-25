fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'DerLordVoldemort'
description 'Enforces 16:9 aspect ratio for all players with warning and kick system'
version '1.0.0'

-- Client & Server
client_scripts {
    'config.lua',
    'client/client.lua'
}

server_scripts {
    'config.lua',
    'server/server.lua'
}
