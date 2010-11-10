	local body = piece "body"

	local ldoor = piece "ldoor"
	local rdoor = piece "rdoor"
	local tdoor = piece "tdoor"

	local pad = piece "pad"
	local arms = piece "arms"
	local nano = piece "nano"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

	function script.Create(unitID)
		Move(tdoor, y_axis, 25, 15)
		Move(ldoor, x_axis, -53, 20)
		Move(rdoor, x_axis, 53, 20)
		WaitForMove(tdoor, y_axis)
		WaitForMove(ldoor, x_axis)
		WaitForMove(rdoor, x_axis)
		Move(tdoor, z_axis, -50, 20)
		Move(ldoor, z_axis, -50, 20)
		Move(rdoor, z_axis, -50, 20)
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
		Show( arms )
		Move( pad, z_axis, 80, 20 )
	end

	function script.StopBuilding()
		Hide( arms )
		Move( pad, z_axis, 0, 2000 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end