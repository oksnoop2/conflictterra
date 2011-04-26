	-- by KR
	
	--pieces
	local body = piece "body"
	local barrel = piece "barrel"
	local flare = piece "flare"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"

	--signals
	local SIG_AIM = 1
	local ct_cannon_artillery = SFX.CEG
	local ct_cannon_artillery_side = SFX.CEG + 1	

	function script.Create()
		Turn(fxflare1, y_axis, -1.5, 10)
		Turn(fxflare2, y_axis, 1.5, 10)
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
		EmitSfx(flare, ct_cannon_artillery)	     
		EmitSfx(fxflare1, ct_cannon_artillery_side)	
		EmitSfx(fxflare2, ct_cannon_artillery_side)	  
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end