	-- by KR
	
	--pieces
	local body = piece "body"

	local topgun = piece "topgun"
	local flare1 = piece "flare1"

	local botgun = piece "botgun"
	local flare2 = piece "flare2"

	local forbarrel = piece "forbarrel"
	local flare3 = piece "flare3"

	local lbarrel = piece "lbarrel"
	local flare4 = piece "flare4"

	local rearbarrel = piece "rearbarrel"
	local flare5 = piece "flare5"

	local rbarrel = piece "rbarrel"
	local flare6 = piece "flare6"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(forbarrel, y_axis, 0, math.rad(90))
        	Turn(forbarrel, x_axis, 0, math.rad(50))
        	Turn(lbarrel, y_axis, 0, math.rad(90))
        	Turn(lbarrel, x_axis, 0, math.rad(50))
        	Turn(rearbarrel, y_axis, 0, math.rad(90))
        	Turn(rearbarrel, x_axis, 0, math.rad(50))
        	Turn(rbarrel, y_axis, 0, math.rad(90))
        	Turn(rbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return topgun end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon2() return botgun end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon3() return forbarrel end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon4() return lbarrel end

	function script.QueryWeapon5() return flare5 end
	
	function script.AimFromWeapon5() return rearbarrel end

	function script.QueryWeapon6() return flare6 end
	
	function script.AimFromWeapon6() return rbarrel end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(topgun, y_axis, heading, math.rad(90))
        	WaitForTurn(topgun, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(botgun, y_axis, heading, math.rad(90))
        	WaitForTurn(botgun, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(forbarrel, y_axis, heading, math.rad(90))
        	Turn(forbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forbarrel, y_axis)
        	WaitForTurn(forbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(lbarrel, y_axis, heading, math.rad(90))
        	Turn(lbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lbarrel, y_axis)
        	WaitForTurn(lbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(rearbarrel, y_axis, heading, math.rad(90))
        	Turn(rearbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearbarrel, y_axis)
        	WaitForTurn(rearbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(rbarrel, y_axis, heading, math.rad(90))
        	Turn(rbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rbarrel, y_axis)
        	WaitForTurn(rbarrel, x_axis)
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
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end