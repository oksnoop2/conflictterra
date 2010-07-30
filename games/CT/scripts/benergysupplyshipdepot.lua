local building = piece "body"
local ldoor = piece "ldoor"
local rdoor = piece "rdoor"

local function doors_open()
	Sleep(2000)
	Move (ldoor, y_axis, 12, 5)
	Move (rdoor, y_axis, 12, 5)
end

function script.Activate()
	StartThread(doors_open)
end

function script.Deactivate()
	Move (ldoor, y_axis, 0, 5)
	Move (rdoor, y_axis, 0, 5)
end


function script.Killed(recentDamage, maxHealth)
	return 0
end
