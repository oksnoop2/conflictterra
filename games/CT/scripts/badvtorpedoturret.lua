	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	
	function script.Create()     
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(barrel, x_axis, 0, 50)

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
		else 
			return flare4
		end
	end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end