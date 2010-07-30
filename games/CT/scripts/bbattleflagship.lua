
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

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64

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

        function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

        function script.QueryWeapon4() return flare4 end

        function script.QueryWeapon5() return flare5 end

	function script.QueryWeapon6() return flare6 end

        function script.QueryWeapon7() return flare7 end
	
	function script.AimFromWeapon1() return dturret end

        function script.AimFromWeapon2() return lturret end

	function script.AimFromWeapon3() return lturret end

        function script.AimFromWeapon4() return lturret end

        function script.AimFromWeapon5() return rturret end

	function script.AimFromWeapon6() return rturret end

        function script.AimFromWeapon7() return rturret end
	
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
		Turn(lturret, y_axis, heading, math.rad(90))
        	Turn(lturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lturret, y_axis)
        	WaitForTurn(lturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
		Turn(lturret, y_axis, heading, math.rad(90))
        	Turn(lturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lturret, y_axis)
        	WaitForTurn(lturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
		Turn(rturret, y_axis, heading, math.rad(90))
        	Turn(rturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rturret, y_axis)
        	WaitForTurn(rturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
                Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
		Turn(rturret, y_axis, heading, math.rad(90))
        	Turn(rturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rturret, y_axis)
        	WaitForTurn(rturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
		Turn(rturret, y_axis, heading, math.rad(90))
        	Turn(rturret, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rturret, y_axis)
        	WaitForTurn(rturret, x_axis)
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

	function script.FireWeapon5()
	       Sleep(30)
	end

	function script.FireWeapon6()
	       Sleep(30)
	end

	function script.FireWeapon7()
	       Sleep(30)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end