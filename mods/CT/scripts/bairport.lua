	local building = piece "building"
	local dish = piece "dish"
	local nano = piece "nano"
	local pad = piece "pad"

	function script.Create(unitID)
		StartThread(dish_animation)
	end

	function script.QueryBuildInfo() return pad end

	function script.QueryNanoPiece() return nano end

	function script.Activate()
		SetUnitValue(COB.YARD_OPEN, 1)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		SetUnitValue(COB.BUGGER_OFF, 1)
		return 1
	end

	function script.Deactivate()
		SetUnitValue(COB.YARD_OPEN, 0)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		SetUnitValue(COB.BUGGER_OFF, 0)
		return 0
	end

	function dish_animation()
		Spin (dish, y_axis, 2)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
