	--Power Plant animation script by Sanada

	--pieces
	local base = piece "base"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	
	local fxflare6 = piece "fxflare6"
	local fxflare7 = piece "fxflare7"
	local fxflare8 = piece "fxflare8"
	local fxflare9 = piece "fxflare9"
	local fxflare10 = piece "fxflare10"	


	--signals
	local SIG_LIGHTS = 1


	--CEGs
	local ct_buildlight_blue = SFX.CEG


	--local functions
	local function lights()
		SetSignalMask(SIG_LIGHTS)
		while (true) do
			EmitSfx(fxflare1, ct_buildlight_blue)
			EmitSfx(fxflare3, ct_buildlight_blue)
			EmitSfx(fxflare5, ct_buildlight_blue)
			EmitSfx(fxflare6, ct_buildlight_blue)
			EmitSfx(fxflare8, ct_buildlight_blue)
			EmitSfx(fxflare10, ct_buildlight_blue)		
			Sleep(1000)
			
			EmitSfx(fxflare2, ct_buildlight_blue)
			EmitSfx(fxflare4, ct_buildlight_blue)
			EmitSfx(fxflare7, ct_buildlight_blue)
			EmitSfx(fxflare9, ct_buildlight_blue)
			Sleep(1000)
		end
	end

	--script
	function script.Create(unitID)
		Turn( fxflare1, x_axis, -1.55 )
		Turn( fxflare2, x_axis, -1.55 )
		Turn( fxflare3, x_axis, -1.55 )
		Turn( fxflare4, x_axis, -1.55 )
		Turn( fxflare5, x_axis, -1.55 )
		Turn( fxflare6, x_axis, -1.55 )
		Turn( fxflare7, x_axis, -1.55 )
		Turn( fxflare8, x_axis, -1.55 )
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
