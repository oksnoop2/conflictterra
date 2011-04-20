	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	--signals
	local SIG_AIM = 1
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(gun, x_axis, 0, math.rad(160))
		StopSpin(barrel, z_axis, 5)
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(300))
        	Turn(gun, x_axis, -pitch, math.rad(160))
		Spin(barrel, z_axis, 5)
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       	       
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end