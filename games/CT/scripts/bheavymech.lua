	-- by KR
	
	--pieces
	local waist = piece "waist"

        local body = piece "body"
        local head = piece "head"

	local leftshoulder = piece "leftshould"
	local leftgun = piece "leftgun"
	local flare = piece "flare"

        local rightshoulder = piece "rightshoul"
        local rightshield = piece "rightshiel"

        local leftthigh = piece "leftthigh"
        local leftshin = piece "leftshin"
        local leftfoot = piece "leftfoot"

        local rightthigh = piece "rightthigh"
        local rightshin = piece "rightshin"
        local rightfoot = piece "rightfoot"
        

	--signals
	local SIG_AIM = 2
	local walk_go = 4
	local walk_stop = 8
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		while (true) do
	                Turn( leftshin, x_axis, 0.5, 1.5 )
	                Turn( leftthigh, x_axis, 0.5, 1.5 )
	                Turn( leftfoot, x_axis, 0.5, 1.5 )
	               
	                Turn( rightshin, x_axis, 1, 1.5 )
	                Turn( rightthigh, x_axis, -1, 1.5 )
	                Turn( rightfoot, x_axis, 0, 1.5 )

	                Turn( leftgun, x_axis, -0.25, 1.5 )
	                Turn( leftshoulder, x_axis, -0.25, 1.5 )
	               
	                Turn( rightshield, x_axis, -0.25, 1.5 )
	                Turn( rightshoulder, x_axis, 0.25, 1.5 )
	               
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( leftgun, x_axis )
	                WaitForTurn( leftshoulder, x_axis )
	                WaitForTurn( rightshield, x_axis )
	                WaitForTurn( rightshoulder, x_axis )
	                Sleep(1)
	               
	                Turn( leftshin, x_axis, 1, 1.5 )
	                Turn( leftthigh, x_axis, -1, 1.5 )
	                Turn( leftfoot, x_axis, 0, 1.5 )
	               
	                Turn( rightshin, x_axis, 0.5, 1.5 )
	                Turn( rightthigh, x_axis, 0.5, 1.5 )
	                Turn( rightfoot, x_axis, 0.5, 1.5 )

	                Turn( leftgun, x_axis, -0.25, 1.5 )
	                Turn( leftshoulder, x_axis, 0.25, 1.5 )
	               
	                Turn( rightshield, x_axis, -0.25, 1.5 )
	                Turn( rightshoulder, x_axis, -0.25, 1.5 )

	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( leftgun, x_axis )
	                WaitForTurn( leftshoulder, x_axis )
	                WaitForTurn( rightshield, x_axis )
	                WaitForTurn( rightshoulder, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Turn( leftshin, x_axis, 0, 1.5 )
		Turn( leftthigh, x_axis, 0, 1.5 )
		Turn( leftfoot, x_axis, 0, 1.5)
	       
	        Turn( rightshin, x_axis, 0, 1.5 )
	        Turn( rightthigh, x_axis, 0, 1.5 )
		Turn( rightfoot, x_axis, 0, 1.5)

		Turn( leftgun, x_axis, 0, 1.5 )
		Turn( leftshoulder, x_axis, 0, 1.5 )
	       
	        Turn( rightshield, x_axis, 0, 1.5 )
	        Turn( rightshoulder, x_axis, 0, 1.5 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
                Turn(body, y_axis, 0, math.rad(150))
		Turn(leftshoulder, x_axis, 0, math.rad(100))
        	Turn(leftgun, x_axis, 0, math.rad(100))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(leftshoulder, x_axis, -0.55, math.rad(100))
        	Turn(leftgun, x_axis, 0, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftshoulder, x_axis)
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end