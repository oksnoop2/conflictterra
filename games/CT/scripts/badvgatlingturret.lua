	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local lmag = piece "lmag"
	local rmag = piece "rmag"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        local ct_machinegun_big = SFX.CEG
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(turret, x_axis, 0, math.rad(160))
		StopSpin(lmag, z_axis, 5)
		StopSpin(rmag, z_axis, 5)
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(300))
        	Turn(turret, x_axis, -pitch, math.rad(160))
		Spin(lmag, z_axis, 5)
		Spin(rmag, z_axis, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_machinegun_big)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_machinegun_big)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
	end