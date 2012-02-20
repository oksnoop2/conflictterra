	--Primary Cruiser Base animation script by Sanada
	--Parts concerning different build pads by Knorke
	--Suggestion on how to have different build animations from Flozi

	--pieces
	local body = piece "body"

	local cruiserpad = piece "cruiserpad"
	local cruiserbuildpad = piece "cruiserbuildpad"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"
	local fxflare7 = piece "fxflare7"
	local fxflare8 = piece "fxflare8"

	local turretbase = piece "turretbase"

	local lfrontturret1 = piece "lfrontturret1"
	local lfrontbarrel1 = piece "lfrontbarrel1"
	local lfrontflare1 = piece "lfrontflare1"

	local lfrontturret2 = piece "lfrontturret2"
	local lfrontbarrel2 = piece "lfrontbarrel2"
	local lfrontflare2 = piece "lfrontflare2"

	local rfrontturret1 = piece "rfrontturret1"
	local rfrontbarrel1 = piece "rfrontbarrel1"
	local rfrontflare1 = piece "rfrontflare1"

	local rfrontturret2 = piece "rfrontturret2"
	local rfrontbarrel2 = piece "rfrontbarrel2"
	local rfrontflare2 = piece "rfrontflare2"

	local lbackturret1 = piece "lbackturret1"
	local lbackbarrel1 = piece "lbackbarrel1"
	local lbackflare1 = piece "lbackflare1"

	local lbackturret2 = piece "lbackturret2"
	local lbackbarrel2 = piece "lbackbarrel2"
	local lbackflare2 = piece "lbackflare2"

	local rbackturret1 = piece "rbackturret1"
	local rbackbarrel1 = piece "rbackbarrel1"
	local rbackflare1 = piece "rbackflare1"

	local rbackturret2 = piece "rbackturret2"
	local rbackbarrel2 = piece "rbackbarrel2"
	local rbackflare2 = piece "rbackflare2"

	local frontgear = piece "frontgear"
	local lmidgear = piece "lmidgear"
	local rmidgear = piece "rmidgear"
	local reargear = piece "reargear"

	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"

	local mainstrut = piece "mainstrut"
	local substrut = piece "substrut"
	local cage = piece "cage"
	local leftgate = piece "leftgate"
	local gateflare1 = piece "gateflare1"
	local gateflare2 = piece "gateflare2"
	local rightgate = piece "rightgate"
	local gateflare3 = piece "gateflare3"
	local gateflare4 = piece "gateflare4"
	local normalpad = piece "normalpad"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	local SIG_AIM_3 = 4
	local SIG_AIM_4 = 8
	local SIG_AIM_5 = 16
	local SIG_AIM_6 = 32
	local SIG_AIM_7 = 64
	local SIG_AIM_8 = 128
	local SIG_LIGHTS_GREEN = 256
	local SIG_LIGHTS_RED = 512
	local SIG_BUILD_ANIMATION = 1024

	--CEGs
	local ct_cannon_narrow = SFX.CEG
        local ct_buildlight_green = SFX.CEG + 1
        local ct_buildlight_red = SFX.CEG + 2


	--multiple buildspots for certain units
	local buildSpots = {
		[UnitDefNames["bmechcruiser"].id] = piece "cruiserbuildpad",
		[UnitDefNames["btankcruiser"].id] = piece "cruiserbuildpad",
		[UnitDefNames["baircruiser"].id] = piece "cruiserbuildpad",
		[UnitDefNames["bsupplydepotmobile"].id] = piece "cruiserbuildpad",
	}


	--unitDefID that the factory is currently building
	bdefID = -1


	--local functions
	local function building_setup()
		Move( cruiserpad, y_axis, -10 )
		Move( turretbase, y_axis, -50 )
		Sleep(500)
		Move( cruiserpad, y_axis, 0, 25 )
		Move( turretbase, y_axis, 0, 25 )
	end

	local function normal_lights_red()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_RED)
		while (true) do
			EmitSfx(gateflare1, ct_buildlight_red)
			EmitSfx(gateflare2, ct_buildlight_red)
			EmitSfx(gateflare3, ct_buildlight_red)
			EmitSfx(gateflare4, ct_buildlight_red)
			Sleep(1000)
		end
	end

	local function normal_lights_green()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_GREEN)
		while (true) do
			EmitSfx(gateflare1, ct_buildlight_green)
			EmitSfx(gateflare2, ct_buildlight_green)
			EmitSfx(gateflare3, ct_buildlight_green)
			EmitSfx(gateflare4, ct_buildlight_green)
			Sleep(1000)
		end
	end

	local function cruiser_lights_red()
		Signal(SIG_LIGHTS_RED)
		SetSignalMask(SIG_LIGHTS_RED)
		while (true) do
			EmitSfx(fxflare1, ct_buildlight_red)
			EmitSfx(fxflare2, ct_buildlight_red)
			EmitSfx(fxflare3, ct_buildlight_red)
			EmitSfx(fxflare4, ct_buildlight_red)
			Sleep(1000)
		end
	end

	local function cruiser_lights_green()
		Signal(SIG_LIGHTS_GREEN)
		Signal(SIG_LIGHTS_RED)
		SetSignalMask(SIG_LIGHTS_GREEN)
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
		StartThread(cruiser_lights_red)
	end

	local function cruiser_descend()
		StartThread(cruiser_lights_green)
		Sleep(10000)
		Move( cruiserbuildpad, y_axis, 0, 150 )
	end

	local function normal_unit()
		SetSignalMask(SIG_BUILD_ANIMATION)
		StartThread(normal_lights_red)
		Sleep(5000)
		Move( cage, x_axis, 0, 25 )
		WaitForMove( cage, x_axis )
		StartThread(normal_lights_green)
		Move (normalpad, y_axis, -14, 25 )
		Move (leftgate, x_axis, 15, 25 )
		Move (rightgate, x_axis, -15, 25 )
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
        	Turn(lfrontbarrel1, x_axis, 0, math.rad(50))
        	Turn(lfrontbarrel2, x_axis, 0, math.rad(50))
        	Turn(lbackbarrel1, x_axis, 0, math.rad(50))
        	Turn(lbackbarrel2, x_axis, 0, math.rad(50))
        	Turn(rfrontbarrel1, x_axis, 0, math.rad(50))
        	Turn(rfrontbarrel2, x_axis, 0, math.rad(50))
        	Turn(rbackbarrel1, x_axis, 0, math.rad(50))
        	Turn(rbackbarrel2, x_axis, 0, math.rad(50))
	end


	--script
	function script.Create(unitID)
		Move( cruiserbuildpad, y_axis, 1800, 5000 )
		StartThread(building_setup)

		--turn cruiser pad lights up
		Turn( fxflare1, x_axis, -1.55 )
		Turn( fxflare2, x_axis, -1.55 )
		Turn( fxflare3, x_axis, -1.55 )
		Turn( fxflare4, x_axis, -1.55 )
		Turn( fxflare5, x_axis, -1.55 )
		Turn( fxflare6, x_axis, -1.55 )
		Turn( fxflare7, x_axis, -1.55 )
		Turn( fxflare8, x_axis, -1.55 )

		--landing gear extend
		Turn( frontgear, x_axis, 1, 2 )
		Turn( lmidgear, z_axis, -1, 2 )
		Turn( rmidgear, z_axis, 1, 2 )
		Move( frontgear, z_axis, 15, 25 )
		Move( lmidgear, x_axis, 15, 25 )
		Move( rmidgear, x_axis, -15, 25 )
		Move( reargear, y_axis, -15, 25 )

		--construction scaffolding extend
		Turn( rightdoor, z_axis, -2, 2 )
		WaitForTurn( rightdoor, z_axis )
		Move( mainstrut, x_axis, -45, 25 )
		Move( substrut, x_axis, -45, 25 )
		Move( cage, x_axis, 90, 50 )
	end

	function script.QueryWeapon1() return lfrontflare2 end

	function script.QueryWeapon2() return rfrontflare2 end

	function script.QueryWeapon3() return lbackflare2 end

	function script.QueryWeapon4() return rbackflare2 end

	function script.QueryWeapon5() return lfrontflare1 end

	function script.QueryWeapon6() return rfrontflare1 end

	function script.QueryWeapon7() return lbackflare1 end

	function script.QueryWeapon8() return rbackflare1 end
	
	function script.AimFromWeapon1() return lfrontturret2 end
	
	function script.AimFromWeapon2() return rfrontturret2 end

	function script.AimFromWeapon3() return lbackturret2 end
	
	function script.AimFromWeapon4() return rbackturret2 end

	function script.AimFromWeapon5() return lfrontturret1 end
	
	function script.AimFromWeapon6() return rfrontturret1 end

	function script.AimFromWeapon7() return lbackturret1 end
	
	function script.AimFromWeapon8() return rbackturret1 end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(lfrontturret2, y_axis, heading, math.rad(90))
        	Turn(lfrontbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lfrontturret2, y_axis)
        	WaitForTurn(lfrontbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
                Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
        	Turn(rfrontturret2, y_axis, heading, math.rad(90))
        	Turn(rfrontbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rfrontturret2, y_axis)
        	WaitForTurn(rfrontbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_3)
		SetSignalMask(SIG_AIM_3)
        	Turn(lbackturret2, y_axis, heading, math.rad(90))
        	Turn(lbackbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lbackturret2, y_axis)
        	WaitForTurn(lbackbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
                Signal(SIG_AIM_4)
		SetSignalMask(SIG_AIM_4)
        	Turn(rbackturret2, y_axis, heading, math.rad(90))
        	Turn(rbackbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rbackturret2, y_axis)
        	WaitForTurn(rbackbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
                Signal(SIG_AIM_5)
		SetSignalMask(SIG_AIM_5)
        	Turn(lfrontturret1, y_axis, heading, math.rad(90))
        	Turn(lfrontbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lfrontturret1, y_axis)
        	WaitForTurn(lfrontbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
                Signal(SIG_AIM_6)
		SetSignalMask(SIG_AIM_6)
        	Turn(rfrontturret1, y_axis, heading, math.rad(90))
        	Turn(rfrontbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rfrontturret1, y_axis)
        	WaitForTurn(rfrontbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
                Signal(SIG_AIM_7)
		SetSignalMask(SIG_AIM_7)
        	Turn(lbackturret1, y_axis, heading, math.rad(90))
        	Turn(lbackbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lbackturret1, y_axis)
        	WaitForTurn(lbackbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
                Signal(SIG_AIM_8)
		SetSignalMask(SIG_AIM_8)
        	Turn(rbackturret1, y_axis, heading, math.rad(90))
        	Turn(rbackbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rbackturret1, y_axis)
        	WaitForTurn(rbackbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(lfrontflare2, ct_cannon_narrow)
	end

	function script.FireWeapon2()
		EmitSfx(rfrontflare2, ct_cannon_narrow)
	end

	function script.FireWeapon3()
		EmitSfx(lbackflare2, ct_cannon_narrow)
	end

	function script.FireWeapon4()
		EmitSfx(rbackflare2, ct_cannon_narrow)
	end

	function script.FireWeapon5()
		EmitSfx(lfrontflare1, ct_cannon_narrow)
	end

	function script.FireWeapon6()
		EmitSfx(rfrontflare1, ct_cannon_narrow)
	end

	function script.FireWeapon7()
		EmitSfx(lbackflare1, ct_cannon_narrow)
	end

	function script.FireWeapon8()
		EmitSfx(rbackflare1, ct_cannon_narrow)
	end

	function script.QueryBuildInfo()
		return buildSpots [bdefID] or normalpad
	end

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
		Sleep (10) --otherwise GetUnitIsBuilding returns nil
		local spGetUnitIsBuilding = Spring.GetUnitIsBuilding (unitID)
		bdefID = Spring.GetUnitDefID (spGetUnitIsBuilding)
		if UnitDefs[bdefID].canFly then
			StartThread(cruiser_descend)
		else
			StartThread(normal_unit)
		end
	end

	function script.StopBuilding()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		Signal(SIG_BUILD_ANIMATION)
		Move( cruiserbuildpad, y_axis, 1800, 5000 )
		Move( cage, x_axis, 90, 2000 )
		Move( normalpad, y_axis, 0, 2000 )
		Move( leftgate, x_axis, 0, 25 )
		Move( rightgate, x_axis, 0, 25 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
