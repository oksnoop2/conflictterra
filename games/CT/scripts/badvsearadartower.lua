
	local base = piece "base"
	local dome = piece "dome"

	local function dish_animation()
		Spin (dome, y_axis, 2)
		Spin (dome, x_axis, 1)
	end

	local function dish_stop()
		StopSpin (dome, y_axis, 2)
		StopSpin (dome, x_axis, 1)
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
