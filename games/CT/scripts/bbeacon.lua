	--Cruiser Beacon animation script by Sanada

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


	--signals
	local SIG_LIGHTS = 1
	local SIG_LIGHTS_2 = 2


	--CEGs
        local ct_buildlight_green = SFX.CEG
        local ct_buildlight_red = SFX.CEG + 1


	--local functions
	local function lights_red()
		Signal(SIG_LIGHTS_2)
		SetSignalMask(SIG_LIGHTS_2)
		while (true) do
			EmitSfx(fxflare1, ct_buildlight_red)
			EmitSfx(fxflare2, ct_buildlight_red)
			EmitSfx(fxflare3, ct_buildlight_red)
			EmitSfx(fxflare4, ct_buildlight_red)
			Sleep(1000)
		end
	end

	local function lights()
		Signal(SIG_LIGHTS)
		Signal(SIG_LIGHTS_2)
		SetSignalMask(SIG_LIGHTS)
		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 2 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 4 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 6 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 8 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 10 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 12 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 14 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)

		-- 16 seconds

		EmitSfx(fxflare1, ct_buildlight_green)
		EmitSfx(fxflare2, ct_buildlight_green)
		EmitSfx(fxflare3, ct_buildlight_green)
		EmitSfx(fxflare4, ct_buildlight_green)
		Sleep(1000)
		EmitSfx(fxflare5, ct_buildlight_green)
		EmitSfx(fxflare6, ct_buildlight_green)
		EmitSfx(fxflare7, ct_buildlight_green)
		EmitSfx(fxflare8, ct_buildlight_green)
		Sleep(1000)
		StartThread(lights_red)
	end

	--script
	function script.Create(unitID)
		Move( pad, y_axis, 1800, 5000 )
		Turn( fxflare1, x_axis, -1.55 )
		Turn( fxflare2, x_axis, -1.55 )
		Turn( fxflare3, x_axis, -1.55 )
		Turn( fxflare4, x_axis, -1.55 )
		Turn( fxflare5, x_axis, -1.55 )
		Turn( fxflare6, x_axis, -1.55 )
		Turn( fxflare7, x_axis, -1.55 )
		Turn( fxflare8, x_axis, -1.55 )
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
		StartThread(lights)
		Sleep(10000)
		Move( pad, y_axis, 0, 150 )
	end

	function script.StopBuilding()
		Signal(SIG_LIGHTS)
		Signal(SIG_LIGHTS_2)
		Move( pad, y_axis, 1800, 5000 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
