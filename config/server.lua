---@param name string unique stash name to register with ox_inventory
---@param label string label that will be shown while targeting or in the stash
---@param weight integer the weight limit of the stash
---@param slots integer how many slots the stash has
---@param groups string or table the groups that can access the stash. Leave blank for everyone to access
---@param owner boolean whether the stash will be a personal stash or shared with the group
---@param location vector3 location of the stash

return {
    stashes = {
        --------
        -- Gangs
        --------
        {
            name = 'lostmc',
            label = 'Lost MC',
            weight = 100000,
            slots = 30,
            groups = { lostmc = 1 },
            owner = false, -- Set to false for group stash
            location = vec3(977.55, -104.49, 74.76)
        },
        {
            name = 'ballas',
            label = 'Ballas',
            weight = 100000,
            slots = 30,
            groups = { ballas = 2 },
            owner = false, -- Set to false for group stash
            location = vec3(-1315.02, -2891.26, 13.94)
        },
        {
            name = 'families',
            label = 'GS Families',
            weight = 100000,
            slots = 30,
            groups = { families = 1 },
            owner = false, -- Set to false for group stash
            location = vec3(-1318.55, -2891.01, 13.94)
        },
        {
            name = 'vagos',
            label = 'Vagos',
            weight = 100000,
            slots = 30,
            groups = { vagos = 0 },
            owner = false, -- Set to false for group stash
            location = vec3(-1322.55, -2891.52, 13.94)
        },
        {
            name = 'cartel',
            label = 'Cartel',
            weight = 100000,
            slots = 30,
            groups = { cartel = 0 },
            owner = false, -- Set to false for group stash
            location = vec3(-1325.97, -2893.87, 13.95)
        },
        {
            name = 'triads',
            label = 'Triads',
            weight = 100000,
            slots = 30,
            groups = { triads = 0 },
            owner = false, -- Set to false for group stash
            location = vec3(-1328.86, -2896.61, 13.94)
        },
        -----------------
        -- Public Stashes
        -----------------
        --[[
        {
            name = 'publicTrash',
            label = 'Trash',
            weight = 100000,
            slots = 30,
            owner = true, -- Set to false for group stash
            location = vec3(977.18, -93.85, 74.87)
        },
        ]]
        -------------
        -- Businesses
        -------------
        {
            name = 'cardealer',
            label = 'PDM Stash',
            weight = 100000,
            slots = 30,
            owner = false, -- Set to false for group stash
            groups = { cardealer = 0 },
            location = vec3(-27.11, -1104.42, 27.12)
        },
    },
}
