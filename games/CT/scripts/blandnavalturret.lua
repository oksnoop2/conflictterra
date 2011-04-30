	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
        local ct_cannon_narrow = SFX.CEG
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(gun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		end
		if (currBarrel == 2) then 
			return flare2
		else 
			return flare3
		end
	end
	
	function script.AimFromWeapon1() return gun end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(gun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare1, ct_cannon_narrow)
		end
		if currBarrel == 2 then
			EmitSfx(flare2, ct_cannon_narrow)
		end
		if currBarrel == 3 then
			EmitSfx(flare3, ct_cannon_narrow)
		end
		Move (barrel, z_axis, -10, 150)
		WaitForMove (barrel, z_axis)
		Move (barrel, z_axis, 0, 20)
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end