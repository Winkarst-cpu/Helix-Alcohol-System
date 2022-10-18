local PLUGIN = PLUGIN or {}

function PLUGIN:PlayerDeath(client)
    client:DeleteDrunkEffect()
end

function PLUGIN:PlayerDisconnected(client)
    client:DeleteDrunkEffect()
end

function PLUGIN:PlayerLoadedCharacter(client)
    client:DeleteDrunkEffect()
end
