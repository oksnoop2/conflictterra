	--Anti-Air Flak Turret animation script by Sanada
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	
	--variables
	local currBarrel = 1
	local currBarrel2 = 1

	
	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	
	
	--CEGs
	local ct_cannon_narrow = SFX.CEG
	
	
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
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end
	
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

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_narrow)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_narrow)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		if currBarrel2 == 1 then
			EmitSfx(flare4, ct_cannon_narrow)
		end
		if currBarrel2 == 2 then
			EmitSfx(flare3, ct_cannon_narrow)
		end	
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end