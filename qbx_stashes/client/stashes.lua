----------------
-- Client Locals
----------------

local config = require 'config.client'

------------
-- Functions
------------

---@param stashName string of the stash to open
local function openStash(stashName)

    exports.ox_inventory:openInventory('stash', stashName)

end

local function OnKeyPress(cb)
    if IsControlJustPressed(0, 38) then
        lib.hideTextUI()
        cb()
    end
end

---------------------------
-- Create targets and zones
---------------------------

if not config.useTarget then
    CreateThread(function()
        local stashes = lib.callback.await('qbx_stashes:server:getStashes', false)
        for i = 1, #stashes do
            exports.ox_target:addBoxZone({
                name = 'stash' .. i,
                coords = stashes[i].location,
                size = vec3(1, 1, 2),
                rotation = -48,
                debug = config.debugPoly,
                options = {
                    {
                        icon = 'fa fa-briefcase',
                        label = stashes[i].label,
                        onSelect = function()
                            openStash(stashes[i].name)
                        end,
                        distance = 2,
                        groups = stashes[i].groups,
                    }
                }
            })
        end
    end)
else
    CreateThread(function()
        local stashes = lib.callback.await('qbx_stashes:server:getStashes', false)
        for i = 1, #stashes do
            lib.zones.box({
                coords = stashes[i].location,
                size = vec3(2, 2, 2),
                rotation = -20,
                debug = config.debugPoly,
                onEnter = function()
                    lib.showTextUI('[E] - Open ' .. stashes[i].label)
                end,
                onExit = function()
                    lib.hideTextUI()
                end,
                inside = function()
                    OnKeyPress(function()
                        openStash(stashes[i].name)
                    end)
                end,
            })
        end
    end)
end


