	-- by KR
	
	--pieces
	local hull = piece "hull"

	local forgun = piece "forgun"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local reargun = piece "reargun"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1

	function script.Create()       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Move(hull, y_axis, 0, 45)
		Turn(forgun, y_axis, 0, math.rad(200))
		Turn(forgun, x_axis, 0, math.rad(150))
        	Turn(reargun, y_axis, 0, math.rad(200))
        	Turn(reargun, x_axis, 0, math.rad(150))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return forgun end

	function script.AimFromWeapon2() return forgun end

	function script.AimFromWeapon3() return reargun end

	function script.AimFromWeapon4() return reargun end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Move(hull, y_axis, 30, 45)
        	WaitForMove(hull, y_axis)
        	Turn(forgun, y_axis, heading, math.rad(200))
        	Turn(forgun, x_axis, -pitch, math.rad(150))
        	WaitForTurn(forgun, y_axis)
        	WaitForTurn(forgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		Move(hull, y_axis, 30, 45)
        	WaitForMove(hull, y_axis)
        	Turn(forgun, y_axis, heading, math.rad(200))
        	Turn(forgun, x_axis, -pitch, math.rad(150))
        	WaitForTurn(forgun, y_axis)
        	WaitForTurn(forgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
		Move(hull, y_axis, 30, 45)
        	WaitForMove(hull, y_axis)
        	Turn(reargun, y_axis, heading, math.rad(200))
        	Turn(reargun, x_axis, -pitch, math.rad(150))
        	WaitForTurn(reargun, y_axis)
        	WaitForTurn(reargun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
		Move(hull, y_axis, 30, 45)
        	WaitForMove(hull, y_axis)
        	Turn(reargun, y_axis, heading, math.rad(200))
        	Turn(reargun, x_axis, -pitch, math.rad(150))
        	WaitForTurn(reargun, y_axis)
        	WaitForTurn(reargun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end


	
	function script.FireWeapon2()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	
	function script.FireWeapon3()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end


	
	function script.FireWeapon4()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end