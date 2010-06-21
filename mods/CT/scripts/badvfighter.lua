	-- by KR
	
	--pieces
	local fighter = piece "fighter"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(fighter, y_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

        function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return fighter end

        function script.AimFromWeapon2() return fighter end

	function script.AimFromWeapon3() return fighter end

        function script.AimFromWeapon4() return fighter end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(fighter, y_axis, 0, math.rad(90))
        	Turn(fighter, x_axis, 0, math.rad(60))
        	WaitForTurn(fighter, y_axis)
        	WaitForTurn(fighter, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(fighter, y_axis, 0, math.rad(90))
        	Turn(fighter, x_axis, 0, math.rad(60))
        	WaitForTurn(fighter, y_axis)
        	WaitForTurn(fighter, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(fighter, y_axis, 0, math.rad(90))
        	Turn(fighter, x_axis, 0, math.rad(60))
        	WaitForTurn(fighter, y_axis)
        	WaitForTurn(fighter, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(fighter, y_axis, 0, math.rad(90))
        	Turn(fighter, x_axis, 0, math.rad(60))
        	WaitForTurn(fighter, y_axis)
        	WaitForTurn(fighter, x_axis)
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
		Sleep(30)
	end