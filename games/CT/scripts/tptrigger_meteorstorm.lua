	local point = piece "point"	

	function script.Activate()	
		Spring.DestroyUnit(unitID)
	end

	function script.Deactivate()
		StartThread(digger_stop)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end