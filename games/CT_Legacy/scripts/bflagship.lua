	local body = piece "body"
	local nano = piece "nano"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_BUILD = 16

	function script.Create(unitID)
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.Querybody() return nano end

	function script.AimFromWeapon() return body end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(body, y_axis, 0, math.rad(90))
		WaitForTurn(body, y_axis)
		Sleep(1)
		return 0
	end

	function script.AimFromWeapon() return nano end

	function script.QueryWeapon() return nano end

	function script.QueryNanoPiece() return nano end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
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

	function script.Killed(recentDamage, maxHealth)
		return 0
	end