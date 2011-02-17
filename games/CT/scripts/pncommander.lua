	-- by KR
	
	--pieces
        local torso = piece "torso"

	local body = piece "body"

	local larm = piece "larm"
	local lhand = piece "lhand"
	local flare1 = piece "flare1"

	local rarm = piece "rarm"
	local rhand = piece "rhand"
	local flare2 = piece "flare2"

        local lthigh = piece "lthigh"
        local lleg = piece "lleg"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rleg = piece "rleg"
        local rfoot = piece "rfoot"


	--signals
	local SIG_AIM = 1
	local SIG_BUILD = 2
	local walk_go = 4
	local walk_stop = 8
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		Move (torso, y_axis, 4, 2)
		while (true) do
	                Turn( lleg, x_axis, -0.75, 2 )
	                Turn( lthigh, x_axis, 0.5, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rleg, x_axis, 1, 2 )
	                Turn( rthigh, x_axis, -1, 2 )
			Turn( rfoot, x_axis, 0, 2 )
	               
	                WaitForTurn( lleg, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rleg, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lleg, x_axis, 1, 2 )
	                Turn( lthigh, x_axis, -1, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rleg, x_axis, -0.75, 2 )
	                Turn( rthigh, x_axis, 0.5, 2 )
			Turn( rfoot, x_axis, 0, 2 )

	                WaitForTurn( lleg, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rleg, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( torso, y_axis, 0, 4 )

		Turn( lleg, x_axis, 0, 2 )
		Turn( lthigh, x_axis, 0, 2 )
		Turn( lfoot, x_axis, 0, 2 )
	       
	        Turn( rleg, x_axis, 0, 2 )
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
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(larm, x_axis, 0, math.rad(100))
        	Turn(rarm, x_axis, 0, math.rad(100))
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		Turn(body, y_axis, heading, math.rad(90))
        	Turn(rarm, x_axis, -pitch, math.rad(100))
		WaitForTurn(body, y_axis)
		WaitForTurn(rarm, x_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.Querybody() return flare2 end

	function script.AimFromWeapon() return body end

	function script.QueryNanoPiece() return flare2 end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(rarm, x_axis, 0, math.rad(100))
		WaitForTurn(body, y_axis)
		WaitForTurn(rarm, x_axis)
		Sleep(1)
		return 0
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end

	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(larm, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end