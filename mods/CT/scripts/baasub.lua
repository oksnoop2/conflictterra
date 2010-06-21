	-- by KR
	
	--pieces
	local hull = piece "hull"
	local forhatch = piece "forhatch"
	local midhatch = piece "midhatch"
	local rearhatch = piece "rearhatch"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1	

	function script.Create()       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(hull, y_axis, 0, math.rad(90))
		Move(hull, y_axis, 0, 45)
		Turn(forhatch, z_axis, 0, math.rad(90))
		Turn(midhatch, z_axis, 0, math.rad(90))
		Turn(rearhatch, z_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon1() return hull end

	function script.AimFromWeapon2() return hull end

	function script.AimFromWeapon3() return hull end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(hull, y_axis, heading, math.rad(90))
		Move(hull, y_axis, 38, 45)
        	WaitForTurn(hull, y_axis)
        	WaitForMove(hull, y_axis)
		Turn(forhatch, z_axis, -2, 50)
		WaitForTurn(forhatch, z_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(hull, y_axis, heading, math.rad(90))
		Move(hull, y_axis, 38, 45)
        	WaitForTurn(hull, y_axis)
        	WaitForMove(hull, y_axis)
		Turn(midhatch, z_axis, 2, 50)
		WaitForTurn(midhatch, z_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(hull, y_axis, heading, math.rad(90))
		Move(hull, y_axis, 38, 45)
        	WaitForTurn(hull, y_axis)
        	WaitForMove(hull, y_axis)
		Turn(rearhatch, z_axis, -2, 50)
		WaitForTurn(rearhatch, z_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)       
	Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)       
	Sleep(30)
	end

	function script.FireWeapon3()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)       
	Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end