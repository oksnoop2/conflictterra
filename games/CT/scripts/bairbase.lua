
	local building = piece "building"
	local nano = piece "nano"
	local pad = piece "pad"
	local rpad1 = piece "rpad1"
	local rpad2 = piece "rpad2"
	local rpad3 = piece "rpad3"

	function script.Create(unitID)
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
		Move( pad, x_axis, 130, 20 )
	end

	function script.StopBuilding()
		Move( pad, x_axis, 0, 1000 )
	end

	function script.QueryLandingPads()
		return { rpad1, rpad2, rpad3 }
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
