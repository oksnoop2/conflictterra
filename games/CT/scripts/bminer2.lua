	local base = piece "base"
	local body = piece "body"
	local bed = piece "bed"

	local lnozzle = piece "lnozzle"
	local flare1 = piece "flare1"

	local rnozzle = piece "rnozzle"
	local flare2 = piece "flare2"

	local currBarrel = 1

	local SIG_AIM = 1
	local ct_mininglaser_blue = SFX.CEG

	function script.Create(unitID)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(90))
		Turn(lnozzle, y_axis, 0, math.rad(90))
		Turn(rnozzle, y_axis, 0, math.rad(90))
		Turn(lnozzle, x_axis, 0, math.rad(90))
		Turn(rnozzle, x_axis, 0, math.rad(90))
	end

		function script.QueryWeapon1()
			if (currBarrel == 1) then 
				return flare1
			else 
				return flare2
			end
		end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(body, y_axis, heading, math.rad(200))
		Turn(lnozzle, y_axis, -0.05, math.rad(200))
		Turn(rnozzle, y_axis, 0.05, math.rad(200))
		Turn(lnozzle, x_axis, -pitch, math.rad(200))
		Turn(rnozzle, x_axis, -pitch, math.rad(200))
		WaitForTurn(body, y_axis)
		WaitForTurn(lnozzle, y_axis)
		WaitForTurn(rnozzle, y_axis)
		WaitForTurn(lnozzle, x_axis)
		WaitForTurn(rnozzle, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_mininglaser_blue)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_mininglaser_blue)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end