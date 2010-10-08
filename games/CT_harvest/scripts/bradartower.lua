local building = piece "building"
local stem = piece "stem"
local dish = piece "dish"


local function dish_animation()
	Move (stem, y_axis, 10, 50)
	WaitForMove (stem, y_axis)
	Turn (dish, z_axis, 1.55, 10)
	WaitForTurn (dish, z_axis)
	Spin (dish, y_axis, 1, 5)
end

local function dish_stop()
	StopSpin (dish, y_axis, 5)
	Turn (dish, z_axis, 0, 10)
	WaitForTurn (dish, z_axis)
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
