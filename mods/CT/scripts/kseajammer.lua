
	local base = piece "base"
	local dish1 = piece "dish"



	function script.Activate()
		Spin (dish1, y_axis, 3)

	end

	function script.Deactivate()
		StopSpin (dish1, y_axis, 3)

	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
