	-- by KR
	
	--pieces
	local body = piece "body"
	local biggun = piece "biggun"
	local flare2 = piece "flare2"
        local turret = piece "turret"
        local barrel = piece "barrel"
        local flare = piece "flare"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
        local orc_machinegun_flash_big = SFX.CEG + 2
        local orc_machinegun_muzzle_big = SFX.CEG + 3
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(biggun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare2 end
	
	function script.AimFromWeapon1() return body end

	function script.QueryWeapon2() return flare end
	
	function script.AimFromWeapon2() return turret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(biggun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(biggun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare2, orc_machinegun_flash_big)
	EmitSfx(flare2, orc_machinegun_muzzle_big)	 
	       Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(flare, orc_machinegun_flash)
	EmitSfx(flare, orc_machinegun_muzzle)	 
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end