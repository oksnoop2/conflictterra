	--Repair Station animation script by Sanada

	--pieces
	local base = piece "base"
	
	local dishturret = piece "dishturret"
	local dish = piece "dish"
	
	local pad1 = piece "pad1"
	local fxflare1p1 = piece "fxflare1p1"
	local fxflare2p1 = piece "fxflare2p1"
	local fxflare3p1 = piece "fxflare3p1"
	local fxflare4p1 = piece "fxflare4p1"

	local pad2 = piece "pad2"
	local fxflare1p2 = piece "fxflare1p2"
	local fxflare2p2 = piece "fxflare2p2"
	local fxflare3p2 = piece "fxflare3p2"
	local fxflare4p2 = piece "fxflare4p2"
	
	local pad3 = piece "pad3"
	local fxflare1p3 = piece "fxflare1p3"
	local fxflare2p3 = piece "fxflare2p3"
	local fxflare3p3 = piece "fxflare3p3"
	local fxflare4p3 = piece "fxflare4p3"
	
	local pad4 = piece "pad4"
	local fxflare1p4 = piece "fxflare1p4"
	local fxflare2p4 = piece "fxflare2p4"
	local fxflare3p4 = piece "fxflare3p4"
	local fxflare4p4 = piece "fxflare4p4"
	
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"

	
	--CEGs
	local ct_buildlight_green = SFX.CEG
	local ct_buildlight_red = SFX.CEG + 1
	
	
	--local functions
	local function tower_lights()
		while (true) do
			EmitSfx(fxflare5, ct_buildlight_red)
			Sleep(2000)
			EmitSfx(fxflare6, ct_buildlight_red)
			Sleep(2000)
		end
	end
	
	local function pad_lights()
		while (true) do
			EmitSfx(fxflare1p1, ct_buildlight_green)
			EmitSfx(fxflare2p1, ct_buildlight_green)
			EmitSfx(fxflare3p1, ct_buildlight_green)
			EmitSfx(fxflare4p1, ct_buildlight_green)
			Sleep(2000)
			
			EmitSfx(fxflare1p2, ct_buildlight_green)
			EmitSfx(fxflare2p2, ct_buildlight_green)
			EmitSfx(fxflare3p2, ct_buildlight_green)
			EmitSfx(fxflare4p2, ct_buildlight_green)
			Sleep(2000)
			
			EmitSfx(fxflare1p3, ct_buildlight_green)
			EmitSfx(fxflare2p3, ct_buildlight_green)
			EmitSfx(fxflare3p3, ct_buildlight_green)
			EmitSfx(fxflare4p3, ct_buildlight_green)
			Sleep(2000)
			
			EmitSfx(fxflare1p4, ct_buildlight_green)
			EmitSfx(fxflare2p4, ct_buildlight_green)
			EmitSfx(fxflare3p4, ct_buildlight_green)
			EmitSfx(fxflare4p4, ct_buildlight_green)
			Sleep(2000)
		end
	end
	
	
	--script
	function script.Create(unitID)
		Spin(dishturret, y_axis, 1)
		Turn(dish, x_axis, 1)
		Move(dish, z_axis, -2)
		
		StartThread(tower_lights)
		
		StartThread(pad_lights)
	end

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
	
	function script.QueryLandingPads()
		return { pad1, pad2, pad3, pad4 }
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end