	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(gun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon1() return gun end

	function script.AimFromWeapon2() return gun end

	function script.AimFromWeapon3() return gun end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(gun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(gun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(gun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
               Move (barrel, z_axis, -10, 150)
               WaitForMove (barrel, z_axis)
               Move (barrel, z_axis, 0, 20)
	end

	function script.FireWeapon2()
               Move (barrel, z_axis, -10, 150)
               WaitForMove (barrel, z_axis)
               Move (barrel, z_axis, 0, 20)
	end

	function script.FireWeapon3()
               Move (barrel, z_axis, -10, 150)
               WaitForMove (barrel, z_axis)
               Move (barrel, z_axis, 0, 20)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end