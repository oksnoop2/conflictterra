	-- by KR
	
	--pieces
	local body = piece "body"

	local lbarrel = piece "lbarrel"
	local flare1 = piece "flare1"
	local rbarrel = piece "rbarrel"
	local flare2 = piece "flare2"

	local flpad = piece "flpad"

	local frpad = piece "frpad"

	local blpad = piece "blpad"

	local brpad = piece "brpad"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_go = 4
	local SIG_stop = 8
	
	function script.Create()
		Turn(flpad, x_axis, 0.25, 1)
		Turn(frpad, x_axis, 0.25, 1)
		Turn(blpad, x_axis, -0.25, 1)
		Turn(brpad, x_axis, -0.25, 1)

		Turn(flpad, y_axis, -0.25, 1)
		Turn(frpad, y_axis, 0.25, 1)
		Turn(blpad, y_axis, 0.25, 1)
		Turn(brpad, y_axis, -0.25, 1)

		WaitForTurn(flpad, x_axis)
		WaitForTurn(frpad, x_axis)
		WaitForTurn(blpad, x_axis)
		WaitForTurn(brpad, x_axis)

		WaitForTurn(flpad, y_axis)
		WaitForTurn(frpad, y_axis)
		WaitForTurn(blpad, y_axis)
		WaitForTurn(brpad, y_axis)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
	end

	local function go()
		SetSignalMask(SIG_go)
		Turn(flpad, x_axis, 0, 1)
		Turn(frpad, x_axis, 0, 1)
		Turn(blpad, x_axis, 0, 1)
		Turn(brpad, x_axis, 0, 1)

		WaitForTurn(flpad, x_axis)
		WaitForTurn(frpad, x_axis)
		WaitForTurn(blpad, x_axis)
		WaitForTurn(brpad, x_axis)
	end

	local function stop()
		Signal(SIG_go)
		Turn(flpad, x_axis, 0.25, 1)
		Turn(frpad, x_axis, 0.25, 1)
		Turn(blpad, x_axis, -0.25, 1)
		Turn(brpad, x_axis, -0.25, 1)
	end

	function script.StartMoving()
		StartThread(go)
	end

	function script.StopMoving()
		StartThread(stop)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return lbarrel end

	function script.AimFromWeapon2() return rbarrel end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end

	function script.FireWeapon2()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end