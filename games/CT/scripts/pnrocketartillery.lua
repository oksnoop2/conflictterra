	-- by KR
	
	--pieces
	local body = piece "body"

	local wheel1 = piece "wheel1"
	local wheel2 = piece "wheel2"
	local wheel3 = piece "wheel3"
	local wheel4 = piece "wheel4"

	local turret = piece "turret"
	local pod = piece "pod"
	local cap = piece "cap"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
        --local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	end

	local function walk()
	        Spin( wheel1, x_axis, 5 )
		Spin( wheel2, x_axis, 5 )
	        Spin( wheel3, x_axis, 5 )
		Spin( wheel4, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( wheel1, x_axis, 5 )
		StopSpin( wheel2, x_axis, 5 )
	        StopSpin( wheel3, x_axis, 5 )
		StopSpin( wheel4, x_axis, 5 )
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
		Turn(pod, x_axis, 0, math.rad(60))
		Turn(cap, x_axis, 0, 5)
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		end
		if (currBarrel == 2) then 
			return flare2
		end
		if (currBarrel == 3) then 
			return flare3
		end
		if (currBarrel == 4) then 
			return flare4
		end
		if (currBarrel == 5) then 
			return flare5
		end
		if (currBarrel == 6) then 
			return flare1
		end
		if (currBarrel == 7) then 
			return flare2
		end
		if (currBarrel == 8) then 
			return flare3
		end
		if (currBarrel == 9) then 
			return flare4
		else 
			return flare5
		end
	end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(200))
        	Turn(pod, x_axis, -pitch, math.rad(150))
		Turn(cap, x_axis, -3, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(pod, x_axis)
		WaitForTurn(cap, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			--EmitSfx(flare5, orc_machinegun_flash)
			--EmitSfx(flare5, orc_machinegun_muzzle)	
		end
		if currBarrel == 2 then
			--EmitSfx(flare4, orc_machinegun_flash)
			--EmitSfx(flare4, orc_machinegun_muzzle)	
		end
		if currBarrel == 3 then
			--EmitSfx(flare3, orc_machinegun_flash)
			--EmitSfx(flare3, orc_machinegun_muzzle)	
		end
		if currBarrel == 4 then
			--EmitSfx(flare2, orc_machinegun_flash)
			--EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 5 then
			--EmitSfx(flare2, orc_machinegun_flash)
			--EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		if currBarrel == 6 then
			--EmitSfx(flare5, orc_machinegun_flash)
			--EmitSfx(flare5, orc_machinegun_muzzle)	
		end
		if currBarrel == 7 then
			--EmitSfx(flare4, orc_machinegun_flash)
			--EmitSfx(flare4, orc_machinegun_muzzle)	
		end
		if currBarrel == 8 then
			--EmitSfx(flare3, orc_machinegun_flash)
			--EmitSfx(flare3, orc_machinegun_muzzle)	
		end
		if currBarrel == 9 then
			--EmitSfx(flare2, orc_machinegun_flash)
			--EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 10 then
			--EmitSfx(flare1, orc_machinegun_flash)
			--EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 5 end
		if currBarrel == 6 then currBarrel = 6 end
		if currBarrel == 7 then currBarrel = 7 end
		if currBarrel == 8 then currBarrel = 8 end
		if currBarrel == 9 then currBarrel = 9 end
		if currBarrel == 10 then currBarrel = 10 end
		if currBarrel == 11 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
	end