	--Fuma Aerial Combat Mech animation script by Sanada
	
	--pieces
	local body = piece "body"

	local lgun = piece "lgun"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local rgun = piece "rgun"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

        local tailfin = piece "tailfin"

        local ltopjet = piece "ltopjet"
	local ltopturbine = piece "ltopturbine"
	local fxflare1 = piece "fxflare1"

        local lbottomjet = piece "lbottomjet"
	local lbottomturbine = piece "lbottomturbine"
	local fxflare2 = piece "fxflare2"

        local rtopjet = piece "rtopjet"
	local rtopturbine = piece "rtopturbine"
	local fxflare3 = piece "fxflare3"

        local rbottomjet = piece "rbottomjet"
	local rbottomturbine = piece "rbottomturbine"
	local fxflare4 = piece "fxflare4"

	local flare5 = piece "flare5"

	local flare6 = piece "flare6"


	--variables
	local currBarrel = 1
	local currBarrel2 = 1


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8


	--CEGs
        local ct_missile_smokecloud = SFX.CEG
	

	--local functions
	local function landing_sequence()
		Sleep(2000)

		--turbines stopping
		StopSpin(ltopturbine, y_axis, 5)
		StopSpin(lbottomturbine, y_axis, 5)
		StopSpin(rtopturbine, y_axis, 5)
		StopSpin(rbottomturbine, y_axis, 5)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
        	Turn(lgun, x_axis, 0, math.rad(150))
        	Turn(rgun, x_axis, 0, math.rad(150))
		Turn(flare5, y_axis, 0, math.rad(150))
		Turn(flare5, x_axis, 0, math.rad(150))
		Turn(flare6, y_axis, 0, math.rad(150))
		Turn(flare6, x_axis, 0, math.rad(150))
	end


	--script
	function script.Create()
	end

	function script.Activate()
		--turbines starting
		Spin(ltopturbine, y_axis, 5, 5)
		Spin(lbottomturbine, y_axis, 5, 5)
		Spin(rtopturbine, y_axis, 5, 5)
		Spin(rbottomturbine, y_axis, 5, 5)

		--body turn forward
		Turn(body, x_axis, 0.5, 1)
		Move(body, z_axis, 0, 30)
		Move(body, y_axis, 0, 30)

		--tailfin turn forward
		Turn(tailfin, x_axis, 0.5, 1)
		Move(tailfin, y_axis, 0, 2)
		Move(tailfin, z_axis, 0, 10)

		--jets turn forward
		Turn(ltopjet, x_axis, 1, 1)
		Turn(lbottomjet, x_axis, 1, 1)
		Turn(rtopjet, x_axis, 1, 1)
		Turn(rbottomjet, x_axis, 1, 1)
	end

	function script.Deactivate()
		--body turn down
		Turn(body, x_axis, -1.55, 3)
		Move(body, z_axis, 30, 30)
		Move(body, y_axis, 10, 30)

		--tailfin turn up
		Turn(tailfin, x_axis, 1, 1)
		Move(tailfin, y_axis, 2, 2)
		Move(tailfin, z_axis, 10, 10)

		--jets turn down
		Turn(ltopjet, x_axis, 1.5, 1)
		Turn(lbottomjet, x_axis, 1.5, 1)
		Turn(rtopjet, x_axis, 1.5, 1)
		Turn(rbottomjet, x_axis, 1.5, 1)

		StartThread(landing_sequence)
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare3
		else 
			return flare4
		end
	end

	function script.QueryWeapon3() return flare5 end

	function script.QueryWeapon4() return flare6 end
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end

	function script.AimFromWeapon4() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(lgun, x_axis, pitch, math.rad(150))
        	WaitForTurn(lgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(rgun, x_axis, pitch, math.rad(150))
        	WaitForTurn(rgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(flare5, x_axis, -pitch, math.rad(150))
        	Turn(flare5, y_axis, heading, math.rad(150))
        	WaitForTurn(flare5, x_axis)
        	WaitForTurn(flare5, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(flare6, x_axis, -pitch, math.rad(150))
        	Turn(flare6, y_axis, heading, math.rad(150))
        	WaitForTurn(flare6, x_axis)
        	WaitForTurn(flare6, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end

	function script.FireWeapon3()
		EmitSfx(flare5, ct_missile_smokecloud)
	end

	function script.FireWeapon4()
		EmitSfx(flare6, ct_missile_smokecloud)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end