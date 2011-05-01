	-- by KR
	
	--pieces
	local base = piece "body"
	local bigboom = piece "bigboom"
	local smallboom = piece "smallboom"
	local turret = piece "turret"
	local flare1 = piece "flare1"

	--signals
	local SIG_AIM = 1
	
	function script.Create()
		Turn(bigboom, x_axis, -0.5, 1)
		Turn(smallboom, x_axis, -0.5, 1)
		Turn(turret, x_axis, 0.5, 1)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(turret, x_axis, 0.5, math.rad(50))
		Turn(turret, y_axis, 0, math.rad(50))
		Turn(bigboom, x_axis, -0.5, math.rad(50))
		Turn(smallboom, x_axis, -0.5, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(bigboom, x_axis, 0, 1)
		Turn(smallboom, x_axis, 0, 1)
		Turn(turret, x_axis, 0, 1)
		WaitForTurn(bigboom, x_axis)
		WaitForTurn(smallboom, x_axis)
		WaitForTurn(turret, x_axis)
        	Turn(turret, y_axis, heading, math.rad(90))
           	Turn(turret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end