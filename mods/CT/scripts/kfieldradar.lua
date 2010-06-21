
	local base = piece "base"
	local dish1 = piece "dish1"
	local dish2 = piece "dish2"
	local dish3 = piece "dish3"


	function script.Activate()
		Spin (dish1, y_axis, 3)
		Spin (dish2, y_axis, -3)
		Spin (dish3, y_axis, 3)
	end

	function script.Deactivate()
		StopSpin (dish1, y_axis, 3)
		StopSpin (dish2, y_axis, 3)
		StopSpin (dish3, y_axis, 3)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
