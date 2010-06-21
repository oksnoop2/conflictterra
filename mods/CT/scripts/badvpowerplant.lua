local building = piece "building"
local fins = piece "fins"


local function startup_animation()
	SetSignalMask(1)
	Move (building, y_axis, 100, 50)
	Spin (fins, x_axis, 2, 1)
	WaitForMove (building, y_axis)
	while true do
		Move (building, z_axis, 15, 5)
		WaitForMove (building, z_axis)
		Sleep(300)
		Move (building, z_axis, -15, 5)
		WaitForMove (building, z_axis)
		Sleep(300)
	end
end

local function startup_stop()
	Signal(1)
	Move (building, y_axis, 0, 50)
	StopSpin (fins, x_axis, 1)
end

function script.Activate()
	StartThread(startup_animation)
end

function script.Deactivate()
	StartThread(startup_stop)
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
