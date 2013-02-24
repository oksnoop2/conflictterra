	--Radar Outpost animation script by Sanada

	--pieces
	local body = piece "body"
	local dish = piece "dish"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"


	--signals
	local SIG_LIGHTS_RED = 1
	
	
	--CEGs
	local ct_buildlight_red = SFX.CEG
	
	
	--local functions
	local function lights()
		Signal(SIG_LIGHTS_RED)
		SetSignalMask(SIG_LIGHTS_RED)
		while (true) do
			EmitSfx(fxflare1, ct_buildlight_red)
			Sleep(2000)
			EmitSfx(fxflare2, ct_buildlight_red)
			Sleep(3000)
		end
	end

	
	--script
	function script.Activate()
		StartThread(lights)
		Spin (dish, y_axis, 1, 5)
	end

	function script.Deactivate()
		Signal (SIG_LIGHTS_RED)
		StopSpin (dish, y_axis, 5)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
