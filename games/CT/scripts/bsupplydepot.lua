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
	
	
	--signals
	local SIG_LIGHTS_GREEN = 1
	local SIG_LIGHTS_RED = 2		
	
	
	--CEGs
	local ct_buildlight_green = SFX.CEG
	local ct_buildlight_red = SFX.CEG + 1	
	

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

	
	--script
	function script.Create()
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
