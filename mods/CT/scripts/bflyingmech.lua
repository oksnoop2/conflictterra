	-- by KR
	
	--pieces
	local body = piece "body"
	local leftgun = piece "leftgun"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local rightgun = piece "rightgun"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
        local tailfin = piece "tailfin"
        local bottomjets = piece "bottomjets"
        local topjets = piece "topjets"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(leftgun, x_axis, 0, math.rad(50))
        	Turn(rightgun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end

	function script.QueryWeapon5() return flare5 end

	function script.QueryWeapon6() return flare6 end
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end

	function script.AimFromWeapon4() return body end

	function script.AimFromWeapon5() return body end

	function script.AimFromWeapon6() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(leftgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(leftgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(leftgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rightgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(rightgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(rightgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end
	function script.FireWeapon1()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

	function script.FireWeapon1()
	EmitSfx(flare3, orc_machinegun_flash)
	EmitSfx(flare3, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end
	
	function script.FireWeapon1()
	EmitSfx(flare4, orc_machinegun_flash)
	EmitSfx(flare4, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

	function script.FireWeapon1()
	EmitSfx(flare5, orc_machinegun_flash)
	EmitSfx(flare5, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

	function script.FireWeapon1()
	EmitSfx(flare6, orc_machinegun_flash)
	EmitSfx(flare6, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end