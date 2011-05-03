	-- by KR
	
	--pieces
	local body = piece "body"

	local topgun = piece "topgun"
	local flare1 = piece "flare1"

	local leftgun = piece "leftgun"
	local flare2 = piece "flare2"

	local botgun = piece "botgun"
	local flare3 = piece "flare3"

	local rightgun = piece "rightgun"
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
        	Turn(topgun, y_axis, 0, math.rad(90))
        	Turn(topgun, x_axis, 0, math.rad(60))
        	Turn(leftgun, y_axis, 0, math.rad(90))
        	Turn(leftgun, x_axis, 0, math.rad(60))
        	Turn(botgun, y_axis, 0, math.rad(90))
        	Turn(botgun, x_axis, 0, math.rad(60))
        	Turn(rightgun, y_axis, 0, math.rad(90))
        	Turn(rightgun, x_axis, 0, math.rad(60))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

        function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return topgun end

        function script.AimFromWeapon2() return leftgun end

	function script.AimFromWeapon3() return botgun end

        function script.AimFromWeapon4() return rightgun end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(topgun, y_axis, heading, math.rad(90))
        	Turn(topgun, x_axis, -pitch, math.rad(60))
        	WaitForTurn(topgun, y_axis)
        	WaitForTurn(topgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(leftgun, y_axis, heading, math.rad(90))
        	Turn(leftgun, x_axis, -pitch, math.rad(60))
        	WaitForTurn(leftgun, y_axis)
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(botgun, y_axis, heading, math.rad(90))
        	Turn(botgun, x_axis, -pitch, math.rad(60))
        	WaitForTurn(botgun, y_axis)
        	WaitForTurn(botgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rightgun, y_axis, heading, math.rad(90))
        	Turn(rightgun, x_axis, -pitch, math.rad(60))
        	WaitForTurn(rightgun, y_axis)
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end

	function script.FireWeapon2()
	end

	function script.FireWeapon3()
	end

	function script.FireWeapon4()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end