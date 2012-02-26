	-- by KR
	
	--pieces
	local body = piece "body"

	local turret1 = piece "turret1"
	local turretbev1 = piece "turretbev1"
	local tbarrel = piece "tbarrel"
	local flare1 = piece "flare1"
	local bbarrel = piece "bbarrel"
	local flare2 = piece "flare2"

	local turret2 = piece "turret2"
	local turretbev2 = piece "turretbev2"
	local ex1 = piece "ex1"
	local ex2 = piece "ex2"
	local ex3 = piece "ex3"
	local ex4 = piece "ex4"
	local ex5 = piece "ex5"
	local bit = piece "bit"
	local flare3 = piece "flare3"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	--local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret2, y_axis, 0, math.rad(90))
        	Turn(turretbev2, x_axis, 0, math.rad(50))
		Move(ex1, z_axis, 0, 10)
		Move(ex2, z_axis, 0, 10)
		Move(ex3, z_axis, 0, 10)
		Move(ex4, z_axis, 0, 10)
		StopSpin(ex5, z_axis, 1)
		Turn(ex5, z_axis, 0, 10)
	end

	function script.QueryWeapon1() return flare3 end

	function script.QueryWeapon2()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return turret2 end

	function script.AimFromWeapon2() return turret1 end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret2, y_axis, heading, math.rad(90))
        	Turn(turretbev2, x_axis, -pitch, math.rad(50))
		Move(ex1, z_axis, 5, 5)
		Move(ex2, z_axis, 5, 5)
		Move(ex3, z_axis, 4.5, 5)
		Move(ex4, z_axis, 3.5, 5)
		Spin(ex5, z_axis, 5, 5)
        	WaitForTurn(turret2, y_axis)
        	WaitForTurn(turretbev2, x_axis)
		WaitForMove(ex1, z_axis)
		WaitForMove(ex2, z_axis)
		WaitForMove(ex3, z_axis)
		WaitForMove(ex4, z_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret1, y_axis, heading, math.rad(300))
        	Turn(turretbev1, x_axis, -pitch, math.rad(160))
        	WaitForTurn(turret1, y_axis)
        	WaitForTurn(turretbev1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()      
	end

	function script.FireWeapon2()      
		if currBarrel == 1 then
			--EmitSfx(flare2, orc_machinegun_flash)
			--EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 2 then
			--EmitSfx(flare1, orc_machinegun_flash)
			--EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
	end