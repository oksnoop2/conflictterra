	local body = piece "body"

	local pad = piece "pad"
	local door = piece "door"
	local nano = piece "nano"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"

	local rpad1 = piece "rpad1"
	local rpad2 = piece "rpad2"

	function script.Create(unitID)
		Move(pad, y_axis, -20)
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
		Show( door )
		Move( pad, y_axis, 0, 10 )
		WaitForMove( pad, y_axis )
		Move( pad, z_axis, 100, 10 )
		WaitForMove( pad, z_axis )
	end

	function script.StopBuilding()
		Hide( door )
		Move( pad, z_axis, -20, 2000 )
		Move( pad, y_axis, 0, 2000 )
		WaitForMove( pad, y_axis )
		Show( door )
	end

	function script.QueryLandingPads()
		return { rpad1 }
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end