	-- by KR
	
	--pieces
        local waist = piece "waist"

        local leftthigh = piece "lthigh"
        local leftshin = piece "lshin"
        local leftfoot = piece "lfoot"

        local rightthigh = piece "rthigh"
        local rightshin = piece "rshin"
        local rightfoot = piece "rfoot"

	local body = piece "body"
	local flare1 = piece "flare1"

	local leftarm = piece "larm"
	local leftgun = piece "lforearm"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"

	local rightarm = piece "rarm"
	local rightgun = piece "rforearm"
        local nano = piece "nano"

	--signals
	local SIG_AIM = 1
	local SIG_BUILD = 2
	local walk_go = 4
	local walk_stop = 8
	
	function script.Create()
	       
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(rightarm, x_axis, -0.75, math.rad(60))
                Turn(rightgun, x_axis, -0.85, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightgun, x_axis)
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
        	Turn(rightarm, x_axis, 0, math.rad(60))
                Turn(rightgun, x_axis, 0, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightgun, x_axis)
	   Sleep(1)
	   return 0
	end

	function script.AimFromWeapon() return nano end

	function script.QueryWeapon() return nano end

	function script.QueryNanoPiece() return nano end

	local function walk()
		SetSignalMask(walk_go)
		while (true) do
	                Turn( leftshin, x_axis, 0.5, 2 )
	                Turn( leftthigh, x_axis, 0.5, 2 )
	                Turn( leftfoot, x_axis, 0.5, 2 )
	               
	                Turn( rightshin, x_axis, 1, 2 )
	                Turn( rightthigh, x_axis, -1, 2 )
	                Turn( rightfoot, x_axis, 0, 2 )

	                Turn( leftgun, x_axis, -0.5, 2 )
	                Turn( leftarm, x_axis, -0.5, 2 )
	               
	                Turn( rightgun, x_axis, -0.5, 2 )
	                Turn( rightarm, x_axis, 0.5, 2 )
	               
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( leftgun, x_axis )
	                WaitForTurn( leftarm, x_axis )
	                WaitForTurn( rightgun, x_axis )
	                WaitForTurn( rightarm, x_axis )
	                Sleep(1)
	               
	                Turn( leftshin, x_axis, 1, 2 )
	                Turn( leftthigh, x_axis, -1, 2 )
	                Turn( leftfoot, x_axis, 0, 2 )
	               
	                Turn( rightshin, x_axis, 0.5, 2 )
	                Turn( rightthigh, x_axis, 0.5, 2 )
	                Turn( rightfoot, x_axis, 0.5, 2 )

	                Turn( leftgun, x_axis, -0.5, 2 )
	                Turn( leftarm, x_axis, 0.5, 2 )
	               
	                Turn( rightgun, x_axis, -0.5, 2 )
	                Turn( rightarm, x_axis, -0.5, 2 )

	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( leftgun, x_axis )
	                WaitForTurn( leftarm, x_axis )
	                WaitForTurn( rightgun, x_axis )
	                WaitForTurn( rightarm, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Turn( leftshin, x_axis, 0, 2 )
		Turn( leftthigh, x_axis, 0, 2 )
		Turn( leftfoot, x_axis, 0, 2)
	       
	        Turn( rightshin, x_axis, 0, 2 )
	        Turn( rightthigh, x_axis, 0, 2 )
		Turn( rightfoot, x_axis, 0, 2)

		Turn( leftgun, x_axis, 0, 2 )
		Turn( leftarm, x_axis, 0, 2 )
	       
	        Turn( rightgun, x_axis, 0, 2 )
	        Turn( rightarm, x_axis, 0, 2 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(leftarm, x_axis, 0, math.rad(50))
        	Turn(leftgun, x_axis, 0, math.rad(50))
        	Turn(rightarm, x_axis, 0, math.rad(50))
        	Turn(rightgun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

        function script.QueryWeapon4() return flare4 end

        function script.QueryWeapon5() return flare5 end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end

        function script.AimFromWeapon3() return body end

        function script.AimFromWeapon4() return body end

        function script.AimFromWeapon5() return body end
	
	function script.AimWeapon1( heading, pitch )
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(leftarm, x_axis, -0.75, math.rad(60))
                Turn(leftgun, x_axis, -0.85, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(leftarm, x_axis, -0.75, math.rad(60))
                Turn(leftgun, x_axis, -0.85, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(leftarm, x_axis, -0.75, math.rad(60))
                Turn(leftgun, x_axis, -0.85, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(leftarm, x_axis, -0.75, math.rad(60))
                Turn(leftgun, x_axis, -0.85, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
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
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end