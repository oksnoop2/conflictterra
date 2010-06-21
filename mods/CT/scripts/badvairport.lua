	local building = piece "building"
	local tower = piece "tower"
	local dish = piece "dish"
	local nano = piece "nano"
	local pad = piece "pad"

	function script.Create(unitID)
		StartThread(dish_animation)
		StartThread(tower_animation)
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
		while (true) do
			Turn (dish, z_axis, 1, 0.5)
			WaitForTurn (dish, z_axis)
			Sleep(30)
			Turn (dish, z_axis, 0, 0.5)
			WaitForTurn (dish, z_axis)
			Sleep(30)
		end
	end

	function tower_animation()
		Spin (tower, y_axis, 0.5)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
