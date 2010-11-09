	-- by KR
	
	--pieces
	local waist = piece "waist"

	local blthigh = piece "blthigh"
	local bldrill = piece "bldrill"

	local body = piece "body"

	local lpod = piece "lpod"
	local flare1 = piece "flare1"
	local rpod = piece "rpod"
	local flare2 = piece "flare2"

	local brthigh = piece "brthigh"
	local brdrill = piece "brdrill"

	local flthigh = piece "flthigh"
	local fldrill = piece "fldrill"

	local frthigh = piece "frthigh"
	local frdrill = piece "frdrill"

	local flare3 = piece "flare3"
	local flare4 = piece "flare4"



	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_go = 16
	local SIG_stop = 32
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
		Turn(flthigh, x_axis, 0.25, 1)
		Turn(frthigh, x_axis, 0.25, 1)
		Turn(blthigh, x_axis, -0.25, 1)
		Turn(brthigh, x_axis, -0.25, 1)
		WaitForTurn(flthigh, x_axis)
		WaitForTurn(frthigh, x_axis)
		WaitForTurn(blthigh, x_axis)
		WaitForTurn(brthigh, x_axis)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(lpod, x_axis, 0, math.rad(50))
        	Turn(rpod, x_axis, 0, math.rad(50))
	end

	local function go()
		SetSignalMask(SIG_go)
		Turn(flthigh, x_axis, 0, 1)
		Turn(frthigh, x_axis, 0, 1)
		Turn(blthigh, x_axis, 0, 1)
		Turn(brthigh, x_axis, 0, 1)
		WaitForTurn(flthigh, x_axis)
		WaitForTurn(frthigh, x_axis)
		WaitForTurn(blthigh, x_axis)
		WaitForTurn(brthigh, x_axis)
		Spin(fldrill, z_axis, 5, 5)
		Spin(frdrill, z_axis, 5, 5)
		Spin(bldrill, z_axis, 5, 5)
		Spin(brdrill, z_axis, 5, 5)
	end

	local function stop()
		Signal(SIG_go)
		StopSpin(fldrill, z_axis, 5)
		StopSpin(frdrill, z_axis, 5)
		StopSpin(bldrill, z_axis, 5)
		StopSpin(brdrill, z_axis, 5)
		Turn(flthigh, x_axis, 0.25, 1)
		Turn(frthigh, x_axis, 0.25, 1)
		Turn(blthigh, x_axis, -0.25, 1)
		Turn(brthigh, x_axis, -0.25, 1)
	end

	function script.StartMoving()
		StartThread(go)
	end

	function script.StopMoving()
		StartThread(stop)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return lpod end

	function script.AimFromWeapon2() return rpod end

	function script.AimFromWeapon3() return waist end

	function script.AimFromWeapon4() return waist end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(body, y_axis, heading, math.rad(90))
        	Turn(lpod, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(lpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		Turn(body, y_axis, heading, math.rad(90))
        	Turn(rpod, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(waist, y_axis, heading, math.rad(50))
        	WaitForTurn(waist, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(waist, y_axis, heading, math.rad(50))
        	WaitForTurn(waist, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, orc_machinegun_flash)
		EmitSfx(flare1, orc_machinegun_muzzle)	
	       Sleep(30)
	end

	function script.FireWeapon2()
		EmitSfx(flare2, orc_machinegun_flash)
		EmitSfx(flare2, orc_machinegun_muzzle)	
	       Sleep(30)
	end

	function script.FireWeapon3()
	       Sleep(30)
	end

	function script.FireWeapon4()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end