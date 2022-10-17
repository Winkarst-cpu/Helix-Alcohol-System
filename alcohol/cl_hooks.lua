local PLUGIN = PLUGIN or {}

function PLUGIN:RenderScreenspaceEffects()
	local drunk = LocalPlayer():GetLocalVar("drunk", 0)

	if (drunk > 0) then
		DrawMotionBlur(0.075, drunk, 0.025)
	end
end