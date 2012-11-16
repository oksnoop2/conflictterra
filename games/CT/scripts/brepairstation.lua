	--Repair Station animation script by Sanada
	--Parts concerning different build pads by Knorke
	--Suggestion on how to have different build animations from Flozi

	--pieces
	local base = piece "base"
	local pad = piece "pad"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"
	local fxflare7 = piece "fxflare7"
	local fxflare8 = piece "fxflare8"

	
	--script
	function script.Create(unitID)
	end

	function script.QueryBuildInfo() return pad end

	function script.QueryNanoPiece() return base end

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
	end

	function script.StopBuilding()
	end

	--multiple buildspots for certain units
	local buildSpots = {
		[UnitDefNames["bmechcruiser"].id] = piece "fxflare8",
	}


	--unitDefID that the factory is currently building
	bdefID = -1
	
--[[
	function script.QueryLandingPads()
		return buildSpots [bdefID] or normalpad
	end
]]
	

	function script.QueryLandingPads()
		return { pad, fxflare1 }
	end


	function script.Killed(recentDamage, maxHealth)
		return 0
	end