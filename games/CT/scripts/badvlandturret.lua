	--High-Powered Beam Turret animation script by Sanada
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local flare1 = piece "flare1"

	
	--signals
	local SIG_AIM = 1
	
	
	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, x_axis, 0, math.rad(50))
	end
	
	
	--script
	function script.Create()
	       
	end
	
	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
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