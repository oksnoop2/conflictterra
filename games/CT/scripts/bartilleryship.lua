	-- by KR
	
	--pieces
	local hull = piece "hull"
        local dish = piece "dish"
        local turret = piece "turret"
        local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	--signals
	local SIG_AIM = 2
	--local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	        StartThread(radar_spin)
		return 1
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(gun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end
	
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
	
	function script.FireWeapon1()
	--EmitSfx(flare1, orc_machinegun_flash)
	--EmitSfx(flare1, orc_machinegun_muzzle)	
		Sleep(30)
		StartThread(recoil)
		Sleep(30)
	end

	function recoil()
		Move (barrel, z_axis, -50, 300)
        	WaitForMove (barrel, z_axis)
        	Move (barrel, z_axis, 0, 20)
	end

	function radar_spin()
		Spin (dish, y_axis, 2)
	end

	function script.RockUnit( )
		Turn(hull, z_axis, 0.1, 0.15)
		WaitForTurn(hull, z_axis)
		Turn(hull, z_axis, -0.1, 0.15)
		WaitForTurn(hull, z_axis)
		Turn(hull, z_axis, 0.05, 0.1)
		WaitForTurn(hull, z_axis)
		Turn(hull, z_axis, 0, 0.1)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end