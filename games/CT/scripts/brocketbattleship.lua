	-- by KR
	
	--pieces
	local hull = piece "hull"

	local forturret = piece "forturret"
	local forbarrel = piece "forbarrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local rearturret = piece "rearturret"
	local rearbarrel = piece "rearbarrel"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
        --local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(forturret, y_axis, 0, math.rad(90))
        	Turn(forbarrel, x_axis, 0, math.rad(50))
		Turn(rearturret, y_axis, 0, math.rad(90))
        	Turn(rearbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return forturret end

	function script.AimFromWeapon2() return forturret end

	function script.AimFromWeapon3() return rearturret end

	function script.AimFromWeapon4() return rearturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		--EmitSfx(flare1, orc_machinegun_flash)
		--EmitSfx(flare1, orc_machinegun_muzzle)	
	       Sleep(30)
	end

	function script.FireWeapon2()
		--EmitSfx(flare2, orc_machinegun_flash)
		--EmitSfx(flare2, orc_machinegun_muzzle)	
	       Sleep(30)
	end

	function script.FireWeapon3()
		--EmitSfx(flare3, orc_machinegun_flash)
		--EmitSfx(flare3, orc_machinegun_muzzle)	
	       Sleep(30)
	end

	function script.FireWeapon4()
		--EmitSfx(flare4, orc_machinegun_flash)
		--EmitSfx(flare4, orc_machinegun_muzzle)	
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end