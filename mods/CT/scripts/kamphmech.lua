	-- by KR
	
	--pieces
	local body = piece "body"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

        local lthigh = piece "lthigh"
        local lshin = piece "lshin"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rshin = piece "rshin"
        local rfoot = piece "rfoot"


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 2 )
	                Turn( lthigh, x_axis, 0.5, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rshin, x_axis, 1.5, 2 )
	                Turn( rthigh, x_axis, -1, 2 )
			Turn( rfoot, x_axis, 0, 2 )
	               
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 1.5, 2 )
	                Turn( lthigh, x_axis, -1, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rshin, x_axis, -0.75, 2 )
	                Turn( rthigh, x_axis, 0.5, 2 )
			Turn( rfoot, x_axis, 0, 2 )

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
		Turn( lshin, x_axis, 0, 2 )
		Turn( lthigh, x_axis, 0, 2 )
		Turn( lfoot, x_axis, 0, 2 )
	       
	        Turn( rshin, x_axis, 0, 2 )
	        Turn( rthigh, x_axis, 0, 2 )
		Turn( rfoot, x_axis, 0, 2 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(barrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	
	function script.AimFromWeapon1() return turret end

	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
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