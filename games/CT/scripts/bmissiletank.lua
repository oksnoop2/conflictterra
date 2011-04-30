	-- by KR
	
	--pieces
	local body = piece "body"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
        local ct_missile_smokecloud = SFX.CEG
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(barrel, x_axis, 0, math.rad(50))
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
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_missile_smokecloud)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_missile_smokecloud)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end