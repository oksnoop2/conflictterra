	-- by KR
	
	--pieces
	local body = piece "body"

	local leftarm = piece "lpod"
	local flare1 = piece "flare1"

	local leftthigh = piece "lthigh"	
	local leftfoot = piece "lfoot"

	local rightarm = piece "rpod"
	local flare2 = piece "flare2"

	local rightthigh = piece "rthigh"
	local rightfoot = piece "rfoot"



	--signals
	local SIG_AIM = 2
	local SIG_AIM2 = 3
	local walk_go = 4
	local walk_stop = 5
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(rightarm, z_axis, 0, math.rad(90))
		Turn(leftarm, z_axis, 0, math.rad(90))	
	end

	local function Walk()
	        SetSignalMask( walk_go )
	        while ( true ) do
	                Turn( leftfoot, x_axis, -1, 2 )
	                Turn( leftthigh, x_axis, 1, 2 )
	               
	                Turn( rightfoot, x_axis, 1, 2 )
	                Turn( rightthigh, x_axis, -1, 2 )
	               

	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                Sleep(30)
	               
	                Turn( leftfoot, x_axis, 1, 2 )
	                Turn( leftthigh, x_axis, -1, 2 )
	               
	                Turn( rightfoot, x_axis, -1, 2 )
	                Turn( rightthigh, x_axis, 1, 2 )
	               

	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                Sleep(30)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
		Turn( leftfoot, x_axis, 0, 2 )
		Turn( leftthigh, x_axis, 0, 2 )
	       
	        Turn( rightfoot, x_axis, 0, 2 )
	        Turn( rightthigh, x_axis, 0, 2 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end
	
	function script.QueryWeapon1() return flare2 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
        	Turn(rightarm, x_axis, -pitch, math.rad(90))
        	WaitForTurn(rightarm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.QueryWeapon2() return flare1 end
	
	function script.AimFromWeapon2() return body end
	
	function script.AimWeapon2( heading, pitch )
        	Turn(leftarm, x_axis, -pitch, math.rad(90))
        	WaitForTurn(leftarm, x_axis)
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