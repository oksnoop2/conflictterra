
	local body = piece "body"
	local door = piece "door"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare4 = piece "flare3"
	local flare3 = piece "flare4"
	local link = piece "link"

	local AttachUnit = Spring.UnitScript.AttachUnit

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8


	function script.Create(unitID)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
	end

	local function open_door()
		Turn (door, x_axis, -0.5, 2)
		Sleep(2500)
		Turn (door, x_axis, 0, 5)
	end

	local function close_door()
		Turn (door, x_axis, -0.5, 2)
		Sleep(2500)
		Turn (door, x_axis, 0, 5)
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

        function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end

        function script.AimFromWeapon4() return body end
	
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

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(body, x_axis, 0, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(body, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
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

	function script.FireWeapon3()
		Sleep(30)
	end

	function script.FireWeapon4()
		Sleep(30)
	end

	function script.BeginTransport(passengerID)
		StartThread(open_door)
		Spring.SetUnitNoDraw(passengerID, true)
	end

	function script.QueryTransport(passengerID)
		return link
	end

	function script.TransportDrop(passengerID)
		Spring.SetUnitNoDraw(passengerID, false)
	end

	function script.EndTransport(each, passengerID)
		StartThread(close_door)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
