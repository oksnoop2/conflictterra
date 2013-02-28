	--Heavy Duty Energy Station animation script by Sanada

	--pieces
	local building = piece "building"

	local fxflare1a = piece "fxflare1a"
	local fxflare2a = piece "fxflare2a"
	local fxflare3a = piece "fxflare3a"
	local fxflare4a = piece "fxflare4a"
	local fxflare5a = piece "fxflare5a"
	local fxflare6a = piece "fxflare6a"
	local fxflare7a = piece "fxflare7a"
	local fxflare8a = piece "fxflare8a"
	local fxflare9a = piece "fxflare9a"
	
	local fxflare1b = piece "fxflare1b"
	local fxflare2b = piece "fxflare2b"
	local fxflare3b = piece "fxflare3b"
	local fxflare4b = piece "fxflare4b"
	local fxflare5b = piece "fxflare5b"
	local fxflare6b = piece "fxflare6b"
	local fxflare7b = piece "fxflare7b"
	local fxflare8b = piece "fxflare8b"
	local fxflare9b = piece "fxflare9b"
	
	local fxflare1c = piece "fxflare1c"
	local fxflare2c = piece "fxflare2c"
	local fxflare3c = piece "fxflare3c"
	local fxflare4c = piece "fxflare4c"
	local fxflare5c = piece "fxflare5c"
	local fxflare6c = piece "fxflare6c"
	local fxflare7c = piece "fxflare7c"
	local fxflare8c = piece "fxflare8c"
	local fxflare9c = piece "fxflare9c"
	
	local fxflare1d = piece "fxflare1d"
	local fxflare2d = piece "fxflare2d"
	local fxflare3d = piece "fxflare3d"
	local fxflare4d = piece "fxflare4d"
	local fxflare5d = piece "fxflare5d"
	local fxflare6d = piece "fxflare6d"
	local fxflare7d = piece "fxflare7d"
	local fxflare8d = piece "fxflare8d"
	local fxflare9d = piece "fxflare9d"


	--signals
	local SIG_LIGHTS = 1


	--CEGs
	local ct_buildlight_blue = SFX.CEG


	--local functions
	local function lights()
		Signal(SIG_LIGHTS)
		SetSignalMask(SIG_LIGHTS)
		while (true) do
			EmitSfx(fxflare1a, ct_buildlight_blue)
			EmitSfx(fxflare1b, ct_buildlight_blue)
			EmitSfx(fxflare1c, ct_buildlight_blue)
			EmitSfx(fxflare1d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare3a, ct_buildlight_blue)
			EmitSfx(fxflare3b, ct_buildlight_blue)
			EmitSfx(fxflare3c, ct_buildlight_blue)
			EmitSfx(fxflare3d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare5a, ct_buildlight_blue)
			EmitSfx(fxflare5b, ct_buildlight_blue)
			EmitSfx(fxflare5c, ct_buildlight_blue)
			EmitSfx(fxflare5d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare7a, ct_buildlight_blue)
			EmitSfx(fxflare7b, ct_buildlight_blue)
			EmitSfx(fxflare7c, ct_buildlight_blue)
			EmitSfx(fxflare7d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare9a, ct_buildlight_blue)
			EmitSfx(fxflare9b, ct_buildlight_blue)
			EmitSfx(fxflare9c, ct_buildlight_blue)
			EmitSfx(fxflare9d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare2a, ct_buildlight_blue)
			EmitSfx(fxflare2b, ct_buildlight_blue)
			EmitSfx(fxflare2c, ct_buildlight_blue)
			EmitSfx(fxflare2d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare4a, ct_buildlight_blue)
			EmitSfx(fxflare4b, ct_buildlight_blue)
			EmitSfx(fxflare4c, ct_buildlight_blue)
			EmitSfx(fxflare4d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare6a, ct_buildlight_blue)
			EmitSfx(fxflare6b, ct_buildlight_blue)
			EmitSfx(fxflare6c, ct_buildlight_blue)
			EmitSfx(fxflare6d, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare8a, ct_buildlight_blue)
			EmitSfx(fxflare8b, ct_buildlight_blue)
			EmitSfx(fxflare8c, ct_buildlight_blue)
			EmitSfx(fxflare8d, ct_buildlight_blue)
			Sleep(1500)
		end
	end

	--script
	function script.Create(unitID)
		Turn( fxflare1a, x_axis, -1.55 )
		Turn( fxflare2a, x_axis, -1.55 )
		Turn( fxflare3a, x_axis, -1.55 )
		Turn( fxflare4a, x_axis, -1.55 )
		Turn( fxflare5a, x_axis, -1.55 )
		Turn( fxflare6a, x_axis, -1.55 )
		Turn( fxflare7a, x_axis, -1.55 )
		Turn( fxflare8a, x_axis, -1.55 )
		Turn( fxflare9a, x_axis, -1.55 )
		
		Turn( fxflare1b, x_axis, -1.55 )
		Turn( fxflare2b, x_axis, -1.55 )
		Turn( fxflare3b, x_axis, -1.55 )
		Turn( fxflare4b, x_axis, -1.55 )
		Turn( fxflare5b, x_axis, -1.55 )
		Turn( fxflare6b, x_axis, -1.55 )
		Turn( fxflare7b, x_axis, -1.55 )
		Turn( fxflare8b, x_axis, -1.55 )
		Turn( fxflare9b, x_axis, -1.55 )
		
		Turn( fxflare1c, x_axis, -1.55 )
		Turn( fxflare2c, x_axis, -1.55 )
		Turn( fxflare3c, x_axis, -1.55 )
		Turn( fxflare4c, x_axis, -1.55 )
		Turn( fxflare5c, x_axis, -1.55 )
		Turn( fxflare6c, x_axis, -1.55 )
		Turn( fxflare7c, x_axis, -1.55 )
		Turn( fxflare8c, x_axis, -1.55 )
		Turn( fxflare9c, x_axis, -1.55 )
		
		Turn( fxflare1d, x_axis, -1.55 )
		Turn( fxflare2d, x_axis, -1.55 )
		Turn( fxflare3d, x_axis, -1.55 )
		Turn( fxflare4d, x_axis, -1.55 )
		Turn( fxflare5d, x_axis, -1.55 )
		Turn( fxflare6d, x_axis, -1.55 )
		Turn( fxflare7d, x_axis, -1.55 )
		Turn( fxflare8d, x_axis, -1.55 )
		Turn( fxflare9d, x_axis, -1.55 )
	end

	function script.Activate()
		StartThread(lights)
	end

	function script.Deactivate()
		Signal(SIG_LIGHTS)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
