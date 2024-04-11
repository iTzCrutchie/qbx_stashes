fx_version 'cerulean'
game 'gta5'

description 'Custom Stashes for the QBX Framework and OX Inventory'
author 'Crutchie'
version '0.0.1'

shared_scripts {
	'@ox_lib/init.lua',
	'@qbx_core/modules/lib.lua',
}

client_scripts {
    '@qbx_core/modules/playerdata.lua',
	'client/*.lua',
}

server_scripts {
	'server/*.lua',
}

files {
	'config/client.lua',
	'config/server.lua'
}

dependencies {
	'ox_lib',
	'ox_target',
	'ox_inventory',
	'qbx_core',
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'