	local body = piece "body"

	local ldoor = piece "ldoor"
	local rdoor = piece "rdoor"

	local pad = piece "pad"
	local larm = piece "larm"
	local rarm = piece "rarm"
	local nano = piece "nano"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"

	local currBarrel = 1
	local currBarrel2 = 1

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1

	function script.Create(unitID)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(flare1, y_axis, 0, math.rad(90))
		Turn(flare2, y_axis, 0, math.rad(90))
        	Turn(flare1, x_axis, 0, math.rad(50))
        	Turn(flare2, x_axis, 0, math.rad(50))
	end

	local function RestoreAfterDelay2(unitID)
		Sleep(2500)
		Turn(flare3, y_axis, 0, math.rad(90))
		Turn(flare4, y_axis, 0, math.rad(90))
        	Turn(flare3, x_axis, 0, math.rad(50))
        	Turn(flare4, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare3
		else 
			return flare4
		end
	end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(flare1, y_axis, heading, math.rad(90))
        	Turn(flare2, y_axis, heading, math.rad(90))
        	Turn(flare1, x_axis, -pitch, math.rad(50))
        	Turn(flare2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(flare1, y_axis)
        	WaitForTurn(flare2, y_axis)
        	WaitForTurn(flare1, x_axis)
        	WaitForTurn(flare2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(flare3, y_axis, heading, math.rad(90))
        	Turn(flare4, y_axis, heading, math.rad(90))
        	Turn(flare3, x_axis, -pitch, math.rad(50))
        	Turn(flare4, x_axis, -pitch, math.rad(50))
        	WaitForTurn(flare3, y_axis)
        	WaitForTurn(flare4, y_axis)
        	WaitForTurn(flare3, x_axis)
        	WaitForTurn(flare4, x_axis)
		StartThread(RestoreAfterDelay2)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare2, orc_machinegun_flash)
			EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, orc_machinegun_flash)
			EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		if currBarrel2 == 1 then
			EmitSfx(flare4, orc_machinegun_flash)
			EmitSfx(flare4, orc_machinegun_muzzle)	
		end
		if currBarrel2 == 2 then
			EmitSfx(flare3, orc_machinegun_flash)
			EmitSfx(flare3, orc_machinegun_muzzle)	
		end	
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end