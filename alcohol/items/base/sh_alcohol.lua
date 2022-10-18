ITEM.name = "Alcohol Base"
ITEM.description = ""
ITEM.category = "Alcohol"
ITEM.model = "models/props_junk/GlassBottle01a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.effectAmount = 0.2
ITEM.effectTime = 180
ITEM.returnItems = {}

ITEM.functions.Use = {
	name = "Drink",
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local effectID = "ixAlcohol" .. client:UniqueID()

		if istable(item.returnItems) then
			for _, v in ipairs(item.returnItems) do
				character:GetInventory():Add(v)
			end
		else
			character:GetInventory():Add(item.returnItems)
		end

		if SERVER then
			client:SetLocalVar("drunkEffect", client:GetLocalVar("drunkEffect", 0) + item.effectAmount)

			timer.Create(effectID, item.effectTime, 1, function()
				if (IsValid(client)) then
					client:SetLocalVar("drunkEffect", math.max(client:GetLocalVar("drunkEffect", 0) - item.effectAmount, 0))
				end
			end)
		end
	end,
}
