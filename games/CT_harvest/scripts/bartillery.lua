	-- by KR
	
	--pieces
	local body = piece "body"
	local barrel = piece "barrel"
	local flare = piece "flare"

	--signals
	local SIG_AIM = 2
	local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1	

	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(barrel, y_axis, 0, math.rad(90))
        	Turn(barrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return barrel end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(barrel, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(barrel, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare, orc_machinegun_flash)
	EmitSfx(flare, orc_machinegun_muzzle)	       
	Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end