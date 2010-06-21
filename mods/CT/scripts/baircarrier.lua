
	local body = piece "body"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local nano = piece "nano"
	local link = piece "link"

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2


	function script.Create(unitID)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(body, x_axis, 0, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(body, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(body, x_axis, 0, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(body, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end

	function script.FireWeapon2()
	       Sleep(30)
	end

	function script.BeginTransport(passengerID)
	end

	function script.QueryTransport(passengerID)
		return link
	end

	function script.EndTransport(each)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
