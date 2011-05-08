	-- by KR
	
	--pieces
	local body = piece "body"

	local leftgun = piece "leftgun"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	local rightgun = piece "rightgun"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"

        local tailfin = piece "tailfin"
        local bottomjets = piece "bottomjets"
        local topjets = piece "topjets"

	local leftmissile = piece "leftmissile"
	local leftpod = piece "leftpod"

	local rightmissile = piece "rightmissile"
	local rightpod = piece "rightpod"

	local currBarrel = 1
	local currBarrel2 = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
        local ct_missile_smokecloud = SFX.CEG
	
	function script.Create()
	end

	function script.Activate()
		Turn(body, x_axis, 0.5, 1)
		Turn(tailfin, x_axis, 0.5, 1)
		Turn(topjets, x_axis, 1, 1)
		Turn(bottomjets, x_axis, 1, 1)
	end

	function script.Deactivate()
		Turn(body, x_axis, 0, 1)
		Turn(tailfin, x_axis, 0.5, 1)
		Turn(topjets, x_axis, 0, 1)
		Turn(bottomjets, x_axis, 0, 1)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(leftgun, x_axis, 0, math.rad(150))
        	Turn(rightgun, x_axis, 0, math.rad(150))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		end
		if (currBarrel == 2) then 
			return flare2
		else 
			return flare3
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare4
		end
		if (currBarrel2 == 2) then 
			return flare5
		else 
			return flare6
		end
	end

	function script.QueryWeapon3() return leftpod end

	function script.QueryWeapon4() return rightpod end
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return leftmissile end

	function script.AimFromWeapon4() return rightmissile end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(leftgun, x_axis, -pitch, math.rad(150))
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(rightgun, x_axis, -pitch, math.rad(150))
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(leftmissile, x_axis, -pitch, math.rad(150))
        	Turn(leftpod, y_axis, heading, math.rad(150))
        	WaitForTurn(leftmissile, x_axis)
        	WaitForTurn(leftpod, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rightmissile, x_axis, -pitch, math.rad(150))
        	Turn(rightpod, y_axis, heading, math.rad(150))
        	WaitForTurn(rightmissile, x_axis)
        	WaitForTurn(rightpod, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 3 end
		if currBarrel2 == 4 then currBarrel2 = 1 end
	end

	function script.FireWeapon3()
		EmitSfx(leftpod, ct_missile_smokecloud)
	end

	function script.FireWeapon4()
		EmitSfx(rightpod, ct_missile_smokecloud)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end