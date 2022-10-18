local playerMeta = FindMetaTable("Player")

function playerMeta:DeleteDrunkEffect()
    local effectID = "ixAlcohol" .. self:UniqueID()

    if timer.Exists(effectID) then
        timer.Remove(effectID)
    end

    self:SetLocalVar("drunkEffect", 0)
end