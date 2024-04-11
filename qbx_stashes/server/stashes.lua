local config = require 'config.server'

-- --------------------
-- Ox_Inventory Stashes
-- --------------------

local function registerStashes()
    for i = 1, #config.stashes do
        exports.ox_inventory:RegisterStash(config.stashes[i].name, config.stashes[i].label, config.stashes[i].slots, config.stashes[i].weight, config.stashes[i].owner, config.stashes[i].groups, config.stashes[i].location)
    end
end

AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() then return end

    registerStashes()
    
end)

lib.callback.register('qbx_stashes:server:getStashes', function()
	return config.stashes
end)