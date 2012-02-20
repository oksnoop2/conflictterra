	--Azai Class Cruiser animation script by Sanada

	--pieces
	local body = piece "body"

	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"

	local lfrontgear = piece "lfrontgear"
	local rfrontgear = piece "rfrontgear"
	local lbackgear = piece "lbackgear"
	local rbackgear = piece "rbackgear"

	local pad = piece "pad"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

	local leftflare = piece "leftflare"
	local rightflare = piece "rightflare"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"
	local fxflare7 = piece "fxflare7"
	local fxflare8 = piece "fxflare8"

	local lightflare1 = piece "lightflare1"
	local lightflare2 = piece "lightflare2"
	local lightflare3 = piece "lightflare3"
	local lightflare4 = piece "lightflare4"
	local lightflare5 = piece "lightflare5"
	local lightflare6 = piece "lightflare6"
	local lightflare7 = piece "lightflare7"
	local lightflare8 = piece "lightflare8"


	--signals
	local SIG_LIGHTS_RED = 1

	--CEGs
        local ct_buildlight_green = SFX.CEG
        local ct_buildlight_red = SFX.CEG + 1


	--local functions
	local function doors_open()
		Move( leftdoor, x_axis, 40, 25 )
		Move( rightdoor, x_axis, -40, 25 )
		WaitForMove( leftdoor, x_axis )
		WaitForMove( rightdoor, x_axis )
		Turn( leftdoor, y_axis, 1.55, 3 )
		Turn( rightdoor, y_axis, -1.55, 3 )
	end

	local function lights_red()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_RED)
		while (true) do
			EmitSfx(lightflare5, ct_buildlight_red)
			EmitSfx(lightflare6, ct_buildlight_red)
			EmitSfx(lightflare7, ct_buildlight_red)
			EmitSfx(lightflare8, ct_buildlight_red)
			Sleep(1000)
		end
	end

	local function lights_green()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_GREEN)
		while (true) do
			EmitSfx(lightflare1, ct_buildlight_green)
			EmitSfx(lightflare3, ct_buildlight_green)
			Sleep(1000)
			EmitSfx(lightflare2, ct_buildlight_green)
			EmitSfx(lightflare4, ct_buildlight_green)
			Sleep(1000)
			EmitSfx(lightflare5, ct_buildlight_green)
			EmitSfx(lightflare7, ct_buildlight_green)
			Sleep(1000)
			EmitSfx(lightflare6, ct_buildlight_green)
			EmitSfx(lightflare8, ct_buildlight_green)
			Sleep(1000)
		end
	end

	--script
	function script.Create(unitID)
		--front gear extend
		Turn( lfrontgear, z_axis, -0.5, 1 )
		Turn( rfrontgear, z_axis, 0.5, 1 )
		Move( lfrontgear, x_axis, 20, 20 )
		Move( rfrontgear, x_axis, -20, 20 )
		Move( lfrontgear, z_axis, 10, 20 )
		Move( rfrontgear, z_axis, 10, 20 )

		--back gear extend
		Move( lbackgear, y_axis, -8, 20 )
		Move( rbackgear, y_axis, -8, 20 )
		Move( lbackgear, x_axis, 8, 20 )
		Move( rbackgear, x_axis, -8, 20 )
		StartThread(doors_open)
	end

	function script.QueryBuildInfo() return pad end

	function script.QueryNanoPiece() return body end

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
		StartThread(lights_green)
		Sleep(2000)
		Move( pad, z_axis, 155, 25 )
		WaitForMove( pad, z_axis )
		StartThread(lights_red)
	end

	function script.StopBuilding()
		Move( pad, z_axis, 0, 2000 )
		Signal(SIG_LIGHTS_RED)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end