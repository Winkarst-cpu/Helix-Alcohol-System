local PLUGIN = PLUGIN or {}

function PLUGIN:RenderScreenspaceEffects()
	local drunkEffect = LocalPlayer():GetLocalVar("drunkEffect", 0)

	if (drunkEffect > 0) then
		DrawMotionBlur(0.075, drunkEffect, 0.025)
	end
end
