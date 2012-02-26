	-- by KR
	
	--pieces
	local body = piece "body"
	local biggun = piece "biggun"
	local flare2 = piece "flare2"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

        local turret = piece "turret"
        local barrel = piece "barrel"
        local flare = piece "flare"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
    local ct_machinegun = SFX.CEG
	local ct_cannon_artillery = SFX.CEG + 1
	local ct_cannon_artillery_side_long = SFX.CEG + 2	
	
	function script.Create()
		Turn(fxflare1, y_axis, 1.5, 10)
		Turn(fxflare2, y_axis, -1.5, 10)
		Turn(fxflare3, y_axis, 1.5, 10)
		Turn(fxflare4, y_axis, -1.5, 10)

		Turn(fxflare1, x_axis, -0.75, 10)
		Turn(fxflare2, x_axis, -0.75, 10)
		Turn(fxflare3, x_axis, 0.75, 10)
		Turn(fxflare4, x_axis, 0.75, 10)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(biggun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare2 end
	
	function script.AimFromWeapon1() return body end

	function script.QueryWeapon2() return flare end
	
	function script.AimFromWeapon2() return turret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(biggun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(biggun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare2, ct_cannon_artillery)
		EmitSfx(fxflare1, ct_cannon_artillery_side_long)
		EmitSfx(fxflare2, ct_cannon_artillery_side_long)
		EmitSfx(fxflare3, ct_cannon_artillery_side_long)
		EmitSfx(fxflare4, ct_cannon_artillery_side_long)	 
	end

	function script.FireWeapon2()
		EmitSfx(flare, ct_machinegun)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end