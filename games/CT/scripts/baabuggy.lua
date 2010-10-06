	-- by KR
	
	--pieces
	local body = piece "body"
	local fwheels = piece "fwheels"
	local rwheels = piece "rwheels"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flaps = piece "flaps"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	--signals
	local SIG_AIM = 2
	local SIG_AIM_SEC = 4
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end

	local function walk()
	        Spin( fwheels, x_axis, 5 )
		Spin( rwheels, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( fwheels, x_axis, 5 )
		StopSpin( rwheels, x_axis, 5 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, 60)
		Turn(barrel, x_axis, 0, math.rad(60))
		Turn(flaps, x_axis, 0, 5)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
		Turn(flaps, x_axis, -1.5, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		WaitForTurn(flaps, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
		Turn(flaps, x_axis, -1.5, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		WaitForTurn(flaps, x_axis)
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