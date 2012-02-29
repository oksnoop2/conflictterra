	--Anti-Air Missile Turret animation script by Sanada
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	
	--variables
	local currBarrel = 1

	
	--signals
	local SIG_AIM = 1
	
	
	--CEGs
	local ct_missile_smokecloud = SFX.CEG
	
	
	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(barrel, x_axis, 0, math.rad(150))
	end	
	
	
	--script
	function script.Create()
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
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_missile_smokecloud)
		end
		if currBarrel == 2 then
			EmitSfx(flare3, ct_missile_smokecloud)
		end
		if currBarrel == 3 then
			EmitSfx(flare1, ct_missile_smokecloud)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end