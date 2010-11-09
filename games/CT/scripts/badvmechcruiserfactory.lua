	local body = piece "body"

	local ldoor = piece "ldoor"
	local rdoor = piece "rdoor"

	local pad = piece "pad"
	local larm = piece "larm"
	local rarm = piece "rarm"
	local nano = piece "nano"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"

	function script.Create(unitID)
		Turn(rdoor, z_axis, 2, 1)
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
		Show( larm )
		Show( rarm )
		Move( pad, x_axis, 150, 20 )
		WaitForMove( pad, x_axis )
		Move( pad, z_axis, 75, 20 )
	end

	function script.StopBuilding()
		Hide( larm )
		Hide( rarm )
		Move( pad, x_axis, 0 )
		Move( pad, z_axis, 0 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end