	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

        local lthigh = piece "lthigh"
        local lshin = piece "lshin"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rshin = piece "rshin"
        local rfoot = piece "rfoot"


	--signals
	local SIG_AIM = 2
	local SIG_AIM_SEC = 3
	local walk_go = 4
	local walk_stop = 5
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		Move (waist, y_axis, 4, 2)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 3 )
	                Turn( lthigh, x_axis, 0.5, 3 )
			Turn( lfoot, x_axis, -0.5, 3 )
	               
	                Turn( rshin, x_axis, 2, 3 )
	                Turn( rthigh, x_axis, -1, 3 )
			Turn( rfoot, x_axis, 0.5, 3 )
	               
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 2, 3 )
	                Turn( lthigh, x_axis, -1, 3 )
			Turn( lfoot, x_axis, 0.5, 3 )
	               
	                Turn( rshin, x_axis, -0.75, 3 )
	                Turn( rthigh, x_axis, 0.5, 3 )
			Turn( rfoot, x_axis, -0.5, 3 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( waist, y_axis, 0, 4 )

		Turn( lshin, x_axis, 0, 3 )
		Turn( lthigh, x_axis, 0, 3 )
		Turn( lfoot, x_axis, 0, 3 )
	       
	        Turn( rshin, x_axis, 0, 3 )
	        Turn( rthigh, x_axis, 0, 3 )
		Turn( rfoot, x_axis, 0, 3 )

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
        	Turn(barrel, x_axis, 0, math.rad(100))
	end

	function script.QueryWeapon1() return flare1 end

	
	function script.AimFromWeapon1() return body end

	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(barrel, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
               Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end