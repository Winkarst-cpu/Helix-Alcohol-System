local PLUGIN = PLUGIN or {}

function PLUGIN:PlayerDeath(client)
    local uniqueID = "ixAlcohol" .. client:UniqueID()
    timer.Remove(uniqueID)
    client:SetLocalVar("drunk", 0)
end

function PLUGIN:PlayerLoadedCharacter(client)
    local uniqueID = "ixAlcohol" .. client:UniqueID()
    timer.Remove(uniqueID)
    client:SetLocalVar("drunk", 0)
end

function PLUGIN:PlayerDisconnected(client)
    local uniqueID = "ixAlcohol" .. client:UniqueID()
    timer.Remove(uniqueID)
    client:SetLocalVar("drunk", 0)
end