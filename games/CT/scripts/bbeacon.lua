
	local base = piece "base"
	local arms = piece "arms"

	local spinner1 = piece "spinner1"
	local spinner2 = piece "spinner2"
	local spinner3 = piece "spinner3"
	local spinner4 = piece "spinner4"

	local nano = piece "nano"
	local pad = piece "pad"

	function script.Create(unitID)
		Move (arms, y_axis, -15)
		Move (spinner1, y_axis, -20)
		Move (spinner2, y_axis, -20)
		Move (spinner3, y_axis, -20)
		Move (spinner4, y_axis, -20)
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

	function script.StartBuilding()
		Move (arms, y_axis, 0, 10)
		WaitForMove(arms, y_axis)
		Move (spinner1, y_axis, 0, 10)
		Move (spinner2, y_axis, 0, 10)
		Move (spinner3, y_axis, 0, 10)
		Move (spinner4, y_axis, 0, 10)

		Spin (spinner1, y_axis, -1)
		Spin (spinner2, y_axis, -1)
		Spin (spinner3, y_axis, 1)
		Spin (spinner4, y_axis, 1)
	end

	function script.StopBuilding()
		Move (arms, y_axis, -15)
		Move (spinner1, y_axis, -20)
		Move (spinner2, y_axis, -20)
		Move (spinner3, y_axis, -20)
		Move (spinner4, y_axis, -20)
		StopSpin (spinner1, y_axis)
		StopSpin (spinner2, y_axis)
		StopSpin (spinner3, y_axis)
		StopSpin (spinner4, y_axis)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
