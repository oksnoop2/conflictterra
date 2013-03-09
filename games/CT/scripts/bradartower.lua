	--Radar Outpost animation script by Sanada

	--pieces
	local body = piece "body"
	local dish = piece "dish"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	
	local fxflaredamage1 = piece "fxflaredamage1"


	--signals
	local SIG_LIGHTS_RED = 1
	
	
	--CEGs
	local ct_buildlight_red = SFX.CEG
	local ct_damage_fire = SFX.CEG + 1
	
	
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
	
	local function DamagedSmoke()
		while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
			Sleep(1000)
		end
		while true do
			local health = GetUnitValue(COB.HEALTH)
			if (health <= 50) then
				EmitSfx(fxflaredamage1, ct_damage_fire)
			end
			Sleep(100)
		end
	end

	
	--script
	function script.Create()
		StartThread(DamagedSmoke)
	end
	
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
