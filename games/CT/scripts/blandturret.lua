	--Dual Cannon Turret animation script by Sanada
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	
	--local variables
	local currBarrel = 1

	
	--signals
	local SIG_AIM = 1
	
	
	--CEGs
	local ct_cannon_tank = SFX.CEG
	local ct_dust_big = SFX.CEG + 1


	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(turret, x_axis, 0, math.rad(50))
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
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_tank)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_tank)
			EmitSfx(base, ct_dust_big)
			StartThread(recoil)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function recoil()
		Move (barrel, z_axis, -10, 200)
		WaitForMove (barrel, z_axis)
		Move (barrel, z_axis, 0, 20)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end