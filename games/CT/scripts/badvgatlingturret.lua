	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local lmag = piece "lmag"
	local rmag = piece "rmag"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(turret, x_axis, 0, math.rad(50))
		StopSpin(lmag, z_axis, 5)
		StopSpin(rmag, z_axis, 5)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(turret, x_axis, -pitch, math.rad(50))
		Spin(lmag, z_axis, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(turret, x_axis, -pitch, math.rad(50))
		Spin(rmag, z_axis, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(turret, x_axis)
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
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end