	--Drone Mining Tower animation script by Oksnoop2 and Sanada
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"


	--signals
	local SIG_AIM = 1


	--CEGs
	local ct_mininglaser_green = SFX.CEG
	

	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(turret, x_axis, 0, math.rad(50))
	end

	--script
	function script.Create()
	end

	function script.QueryWeapon1() return barrel end
	
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
		EmitSfx(barrel, ct_mininglaser_green)	
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end