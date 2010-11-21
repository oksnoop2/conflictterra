	local point = piece "point"	

	function script.Activate()	
	--Spring.DestroyUnit(unitID)
	--Spring.GiveOrderToUnit(unitID, CMD.SELFD) end	
	Spring.AddUnitDamage (unitID, 9001)
	end

	function script.Deactivate()
--		StartThread(digger_stop)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end