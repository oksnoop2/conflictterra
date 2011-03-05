local base = piece "base"
local camera = piece "camera"


function script.Create()
	Spin (camera, y_axis, 1)
	Sleep(60000)
	Spring.DestroyUnit(unitID)
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
