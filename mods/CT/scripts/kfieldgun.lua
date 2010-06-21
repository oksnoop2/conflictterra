	-- by KR
	
	--pieces
	local base = piece "base"
	local stand = piece "stand"
	local turret = piece "turret"
	local barrel1 = piece "barrel1"
	local flare1 = piece "flare1"

	local barrel2 = piece "barrel2"
	local flare2 = piece "flare2"

	local barrel3 = piece "barrel3"
	local flare3 = piece "flare3"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(stand, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end

	function script.AimFromWeapon3() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(stand, y_axis, heading, math.rad(90))
        	Turn(turret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(stand, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(stand, y_axis, heading, math.rad(90))
        	Turn(turret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(stand, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(stand, y_axis, heading, math.rad(90))
        	Turn(turret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(stand, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
               Move (barrel1, z_axis, -10, 150)
               WaitForMove (barrel1, z_axis)
               Move (barrel1, z_axis, 0, 20)
	end

	function script.FireWeapon2()
               Move (barrel2, z_axis, -10, 150)
               WaitForMove (barrel2, z_axis)
               Move (barrel2, z_axis, 0, 20)
	end

	function script.FireWeapon3()
               Move (barrel3, z_axis, -10, 150)
               WaitForMove (barrel3, z_axis)
               Move (barrel3, z_axis, 0, 20)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end