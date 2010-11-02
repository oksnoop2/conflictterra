local building = piece "building"
local orb = piece "orb"
local dish = piece "dish"


local function dish_animation()
	Spin (dish, y_axis, 1, 5)
	Spin (orb, y_axis, -1, 5)
end

local function dish_stop()
	StopSpin (dish, y_axis, 5)
	StopSpin (orb, y_axis, 5)
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
