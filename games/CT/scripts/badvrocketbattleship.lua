	-- by KR
	
	--pieces
	local hull = piece "hull"

	local froturret = piece "froturret"
	local frobarrel = piece "frobarrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	local midturret = piece "midturret"
	local midbarrel = piece "midbarrel"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"

	local rearturret = piece "rearturret"
	local rearbarrel = piece "rearbarrel"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"
	local flare9 = piece "flare9"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128
	local SIG_AIM_NIN = 256
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(froturret, y_axis, 0, math.rad(90))
        	Turn(frobarrel, x_axis, 0, math.rad(50))
		Turn(midturret, y_axis, 0, math.rad(90))
        	Turn(midbarrel, x_axis, 0, math.rad(50))
		Turn(rearturret, y_axis, 0, math.rad(90))
        	Turn(rearbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end

	function script.QueryWeapon5() return flare5 end

	function script.QueryWeapon6() return flare6 end

	function script.QueryWeapon7() return flare7 end

	function script.QueryWeapon8() return flare8 end

	function script.QueryWeapon9() return flare9 end
	
	function script.AimFromWeapon1() return froturret end

	function script.AimFromWeapon2() return froturret end

	function script.AimFromWeapon3() return froturret end

	function script.AimFromWeapon4() return midturret end

	function script.AimFromWeapon5() return midturret end

	function script.AimFromWeapon6() return midturret end

	function script.AimFromWeapon7() return rearturret end

	function script.AimFromWeapon8() return rearturret end

	function script.AimFromWeapon9() return rearturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(froturret, y_axis, heading, math.rad(90))
        	Turn(frobarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(froturret, y_axis)
        	WaitForTurn(frobarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(froturret, y_axis, heading, math.rad(90))
        	Turn(frobarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(froturret, y_axis)
        	WaitForTurn(frobarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(froturret, y_axis, heading, math.rad(90))
        	Turn(frobarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(froturret, y_axis)
        	WaitForTurn(frobarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon9( heading, pitch )
		Signal(SIG_AIM_NIN)
		SetSignalMask(SIG_AIM_NIN)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel, x_axis)
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
		EmitSfx(flare3, orc_machinegun_flash)
		EmitSfx(flare3, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon4()
		EmitSfx(flare4, orc_machinegun_flash)
		EmitSfx(flare4, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon5()
		EmitSfx(flare5, orc_machinegun_flash)
		EmitSfx(flare5, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon6()
		EmitSfx(flare6, orc_machinegun_flash)
		EmitSfx(flare6, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon7()
		EmitSfx(flare7, orc_machinegun_flash)
		EmitSfx(flare7, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon8()
		EmitSfx(flare8, orc_machinegun_flash)
		EmitSfx(flare8, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon9()
		EmitSfx(flare9, orc_machinegun_flash)
		EmitSfx(flare9, orc_machinegun_muzzle)
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end