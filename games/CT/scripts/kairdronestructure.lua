	--Air Drone Structure animation script by Oksnoop2 and Sanada

	--pieces
	local base = piece "base"
	local nano = piece "nano"
	local pad = piece "pad"


	--script
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

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
