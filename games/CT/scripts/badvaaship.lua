	-- by KR
	
	--pieces
	local hull = piece "hull"

	local turret1 = piece "turret1"
	local barrel1 = piece "barrel1"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local turret2 = piece "turret2"
	local barrel2 = piece "barrel2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local turret3 = piece "turret3"
	local barrel3 = piece "barrel3"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"

	local turret4 = piece "turret4"
	local barrel4 = piece "barrel4"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

	local turret5 = piece "turret5"
	local barrel5 = piece "barrel5"
	local flare9 = piece "flare9"
	local flare10 = piece "flare10"

	local turret6 = piece "turret6"
	local barrel6 = piece "barrel6"
	local flare11 = piece "flare11"
	local flare12 = piece "flare12"

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
	local SIG_AIM_TEN = 512
	local SIG_AIM_ELE = 1024
	local SIG_AIM_TWE = 2048
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret1, y_axis, 0, math.rad(200))
        	Turn(barrel1, x_axis, 0, math.rad(150))
		Turn(turret2, y_axis, 0, math.rad(200))
        	Turn(barrel2, x_axis, 0, math.rad(150))
		Turn(turret3, y_axis, 0, math.rad(200))
        	Turn(barrel3, x_axis, 0, math.rad(150))
		Turn(turret4, y_axis, 0, math.rad(200))
        	Turn(barrel4, x_axis, 0, math.rad(150))
		Turn(turret5, y_axis, 0, math.rad(200))
        	Turn(barrel5, x_axis, 0, math.rad(150))
		Turn(turret6, y_axis, 0, math.rad(200))
        	Turn(barrel6, x_axis, 0, math.rad(150))
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

	function script.QueryWeapon10() return flare10 end

	function script.QueryWeapon11() return flare11 end

	function script.QueryWeapon12() return flare12 end
	
	function script.AimFromWeapon1() return turret1 end

	function script.AimFromWeapon2() return turret1 end

	function script.AimFromWeapon3() return turret2 end

	function script.AimFromWeapon4() return turret2 end

	function script.AimFromWeapon5() return turret3 end

	function script.AimFromWeapon6() return turret3 end

	function script.AimFromWeapon7() return turret4 end

	function script.AimFromWeapon8() return turret4 end

	function script.AimFromWeapon9() return turret5 end

	function script.AimFromWeapon10() return turret5 end

	function script.AimFromWeapon11() return turret6 end

	function script.AimFromWeapon12() return turret6 end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret1, y_axis, heading, math.rad(200))
        	Turn(barrel1, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret1, y_axis)
        	WaitForTurn(barrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret1, y_axis, heading, math.rad(200))
        	Turn(barrel1, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret1, y_axis)
        	WaitForTurn(barrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(turret2, y_axis, heading, math.rad(200))
        	Turn(barrel2, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret2, y_axis)
        	WaitForTurn(barrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(turret2, y_axis, heading, math.rad(200))
        	Turn(barrel2, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret2, y_axis)
        	WaitForTurn(barrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(turret3, y_axis, heading, math.rad(200))
        	Turn(barrel3, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret3, y_axis)
        	WaitForTurn(barrel3, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(turret3, y_axis, heading, math.rad(200))
        	Turn(barrel3, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret3, y_axis)
        	WaitForTurn(barrel3, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(turret4, y_axis, heading, math.rad(200))
        	Turn(barrel4, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret4, y_axis)
        	WaitForTurn(barrel4, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(turret4, y_axis, heading, math.rad(200))
        	Turn(barrel4, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret4, y_axis)
        	WaitForTurn(barrel4, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon9( heading, pitch )
		Signal(SIG_AIM_NIN)
		SetSignalMask(SIG_AIM_NIN)
        	Turn(turret5, y_axis, heading, math.rad(200))
        	Turn(barrel5, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret5, y_axis)
        	WaitForTurn(barrel5, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon10( heading, pitch )
		Signal(SIG_AIM_TEN)
		SetSignalMask(SIG_AIM_TEN)
        	Turn(turret5, y_axis, heading, math.rad(00))
        	Turn(barrel5, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret5, y_axis)
        	WaitForTurn(barrel5, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon11( heading, pitch )
		Signal(SIG_AIM_ELE)
		SetSignalMask(SIG_AIM_ELE)
        	Turn(turret6, y_axis, heading, math.rad(200))
        	Turn(barrel6, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret6, y_axis)
        	WaitForTurn(barrel6, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon12( heading, pitch )
		Signal(SIG_AIM_TWE)
		SetSignalMask(SIG_AIM_TWE)
        	Turn(turret6, y_axis, heading, math.rad(200))
        	Turn(barrel6, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret6, y_axis)
        	WaitForTurn(barrel6, x_axis)
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


	
	function script.FireWeapon10()
	EmitSfx(flare10, orc_machinegun_flash)
	EmitSfx(flare10, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	
	function script.FireWeapon11()
	EmitSfx(flare11, orc_machinegun_flash)
	EmitSfx(flare11, orc_machinegun_muzzle)	       
	Sleep(30)
	end
	
	function script.FireWeapon12()
	EmitSfx(flare12, orc_machinegun_flash)
	EmitSfx(flare12, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end