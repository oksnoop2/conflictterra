	--Ground Drone Structure animation script by Oksnoop2 and Sanada

	--pieces
	local body = piece "base"


	--signals
	local SIG_OPEN = 1
	local SIG_CLOSE = 2



	--script
	function script.Create(unitID)
	end

	function script.QueryBuildInfo() return flare1 end

	function script.Queryflare1Piece() return flare1 end

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
