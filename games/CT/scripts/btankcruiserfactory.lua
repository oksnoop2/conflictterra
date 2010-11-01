	local body = piece "body"

	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"

	local ramp = piece "ramp"

	local pad = piece "pad"
	local leftarm = piece "leftarm"
	local rightarm = piece "rightarm"
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
		Turn(leftdoor, y_axis, 3.25, 1)
		Turn(rightdoor, y_axis, -3.25, 1)
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
		Show( leftarm )
		Show( rightarm )
		Move( pad, z_axis, 100, 20 )
	end

	function script.StopBuilding()
		Hide( leftarm )
		Hide( rightarm )
		Move( pad, z_axis, 0, 2000 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end