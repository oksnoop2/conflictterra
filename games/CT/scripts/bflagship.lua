
	local body = piece "body"

	local dturret = piece "dturret"
	local dbarrel = piece "dbarrel"
	local flare1 = piece "flare1"

	local lturret = piece "lturret"
	local lbarrel = piece "lbarrel"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local rturret = piece "rturret"
	local rbarrel = piece "rbarrel"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local flare7 = piece "flare7"

	local currBarrel = 1
	local currBarrel2 = 1

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4

	function script.Create(unitID)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(dturret, y_axis, 0, math.rad(90))
		Turn(dbarrel, x_axis, 0, math.rad(60))
		Turn(lturret, y_axis, 0, math.rad(90))
		Turn(lturret, x_axis, 0, math.rad(60))
		Turn(rturret, y_axis, 0, math.rad(90))
		Turn(rturret, x_axis, 0, math.rad(60))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2()
		if (currBarrel == 1) then 
			return flare2
		end
		if (currBarrel == 2) then 
			return flare3
		else 
			return flare4
		end
	end

	function script.QueryWeapon3()
		if (currBarrel2 == 1) then 
			return flare5
		end
		if (currBarrel2 == 2) then 
			return flare6
		else 
			return flare7
		end
	end
	
	function script.AimFromWeapon1() return dturret end

        function script.AimFromWeapon2() return lturret end

	function script.AimFromWeapon3() return rturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(dturret, y_axis, heading, math.rad(90))
        	Turn(dbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(dturret, y_axis)
        	WaitForTurn(dbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		Turn(lturret, y_axis, heading, math.rad(90))
        	Turn(lturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lturret, y_axis)
        	WaitForTurn(lturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
		Turn(rturret, y_axis, heading, math.rad(90))
        	Turn(rturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rturret, y_axis)
        	WaitForTurn(rturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
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

	function script.Killed(recentDamage, maxHealth)
		return 0
	end