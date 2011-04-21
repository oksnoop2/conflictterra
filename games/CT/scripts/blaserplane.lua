	-- by KR
	
	--pieces
	local fuselage = piece "fuselage"

	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	local fxflare1 = piece "flare1"

	--signals
	local SIG_AIM = 1
	
	function script.Create()
	       
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Move(turret, y_axis, 0, 10)
		Turn(turret, y_axis, 0, math.rad(150))
        	Turn(barrel, x_axis, 0, math.rad(150))
	end

	function script.QueryWeapon1() return flare1
	end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Move(turret, y_axis, -1, 10)
        	Turn(turret, y_axis, heading, math.rad(150))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end