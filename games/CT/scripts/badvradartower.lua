local building = piece "building"
local dish1 = piece "dish1"
local dish2 = piece "dish2"


function dish_animation()
	SetSignalMask(1)
	while (true) do
		Turn (dish1, x_axis, -0.75, 0.5)
		Turn (dish2, z_axis, -0.75, 0.5)
		WaitForTurn (dish1, x_axis)
		WaitForTurn (dish2, z_axis)
		Sleep(30)
		Turn (dish1, x_axis, 0, 0.5)
		Turn (dish2, z_axis, 0, 0.5)
		WaitForTurn (dish1, x_axis)
		WaitForTurn (dish2, z_axis)
		Sleep(30)
	end
end

local function dish_stop()
	Signal(1)
end

function script.Activate()
	StartThread(dish_animation)
end

function script.Deactivate()
	StartThread(dish_stop)
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
