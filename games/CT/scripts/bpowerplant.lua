	--Energy Plant animation script by Sanada

	--pieces
	local building = piece "building"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"
	
	local fxflare7 = piece "fxflare7"
	local fxflare8 = piece "fxflare8"
	local fxflare9 = piece "fxflare9"
	
	local fxflaredamage1 = piece "fxflaredamage1"


	--signals
	local SIG_LIGHTS = 1


	--CEGs
	local ct_buildlight_blue = SFX.CEG
	local ct_damage_fire = SFX.CEG + 1


	--local functions
	local function lights()
		Signal(SIG_LIGHTS)
		SetSignalMask(SIG_LIGHTS)
		while (true) do
			EmitSfx(fxflare1, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare3, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare5, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare7, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare9, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare2, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare4, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare6, ct_buildlight_blue)
			Sleep(1500)
			EmitSfx(fxflare8, ct_buildlight_blue)
			Sleep(1500)
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
	function script.Create(unitID)
		StartThread(DamagedSmoke)
	
		Turn( fxflare1, x_axis, -1.55 )
		Turn( fxflare2, x_axis, -1.55 )
		Turn( fxflare3, x_axis, -1.55 )
		Turn( fxflare4, x_axis, -1.55 )
		Turn( fxflare5, x_axis, -1.55 )
		Turn( fxflare6, x_axis, -1.55 )
		Turn( fxflare7, x_axis, -1.55 )
		Turn( fxflare8, x_axis, -1.55 )
		Turn( fxflare9, x_axis, -1.55 )
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
