local building = piece "body"
local ldoor = piece "ldoor"
local rdoor = piece "rdoor"

local function doors_open()
	Sleep(2000)
	Turn (ldoor, z_axis, -1.55, 5)
	Turn (rdoor, z_axis, 1.55, 5)
end

function script.Activate()
	StartThread(doors_open)
end

function script.Deactivate()
	Turn (ldoor, z_axis, 0, 5)
	Turn (rdoor, z_axis, 0, 5)
end


function script.Killed(recentDamage, maxHealth)
	return 0
end
