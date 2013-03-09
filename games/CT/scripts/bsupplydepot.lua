	--Resource Drop Zone animation script by Sanada

	--pieces
	local body = piece "body"
	
	local lfrontdoor = piece "lfrontdoor"
	local rfrontdoor = piece "rfrontdoor"
	local lbackdoor = piece "lbackdoor"
	local rbackdoor = piece "rbackdoor"

	local lfrontjet = piece "lfrontjet"
	local lfrontfan = piece "lfrontfan"
	local fxflare1 = piece "fxflare1"
	
	local rfrontjet = piece "rfrontjet"
	local rfrontfan = piece "rfrontfan"
	local fxflare2 = piece "fxflare2"
	
	local lbackjet = piece "lbackjet"
	local lbackfan = piece "lbackfan"
	local fxflare3 = piece "fxflare3"
	
	local rbackjet = piece "rbackjet"
	local rbackfan = piece "rbackfan"
	local fxflare4 = piece "fxflare4"
	
	local lightflare1 = piece "lightflare1"
	local lightflare2 = piece "lightflare2"
	local lightflare3 = piece "lightflare3"
	local lightflare4 = piece "lightflare4"
	
	local fxflaredamage1 = piece "fxflaredamage1"
	local fxflaredamage2 = piece "fxflaredamage2"
	local fxflaredamage3 = piece "fxflaredamage3"
	
	
	--signals
	local SIG_LIGHTS_GREEN = 1
	local SIG_LIGHTS_RED = 2		
	
	
	--CEGs
	local ct_buildlight_green = SFX.CEG
	local ct_buildlight_red = SFX.CEG + 1
	local ct_damage_fire = SFX.CEG + 2
	

	--local functions
	local function red_lights()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_RED)
		while (true) do
			EmitSfx(lightflare1, ct_buildlight_red)
			EmitSfx(lightflare2, ct_buildlight_red)
			EmitSfx(lightflare3, ct_buildlight_red)
			EmitSfx(lightflare4, ct_buildlight_red)
			Sleep(1000)
		end
	end
	
	local function green_lights()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_GREEN)
		while (true) do
			Sleep(3000)
			EmitSfx(lightflare1, ct_buildlight_green)
			EmitSfx(lightflare2, ct_buildlight_green)
			Sleep(3000)
			EmitSfx(lightflare3, ct_buildlight_green)
			EmitSfx(lightflare4, ct_buildlight_green)
		end
	end
	
	local function DamagedSmoke()
		while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
			Sleep(1000)
		end
		while true do
			local health = GetUnitValue(COB.HEALTH)
			if (health <= 75) then
				EmitSfx(fxflaredamage1, ct_damage_fire)
			end
			if (health <= 50) then
				EmitSfx(fxflaredamage2, ct_damage_fire)
			end
			if (health <= 25) then
				EmitSfx(fxflaredamage3, ct_damage_fire)
			end
			Sleep(100)
		end
	end

	
	--script
	function script.Create()
		StartThread(DamagedSmoke)
		StartThread(red_lights)
		Sleep(1000)
		Turn (lfrontdoor, z_axis, 2, 2)
		Sleep(1000)
		Turn (rfrontdoor, z_axis, -2, 2)
		Sleep(1000)
		Turn (lbackdoor, z_axis, 2, 2)
		Sleep(1000)
		Turn (rbackdoor, z_axis, -2, 2)
		Sleep(1000)
		StartThread(green_lights)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
