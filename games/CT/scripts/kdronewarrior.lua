	-- by KR
	
	--pieces
	local body = piece "body"

	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	local baclthigh = piece "lbthigh"
	local lbshin = piece "lbshin"
	local baclfoot = piece "lbfoot"

	local bacrthigh = piece "rbthigh"
	local rbshin = piece "rbshin"
	local bacrfoot = piece "rbfoot"

	local flare2  = piece "flare2"

	local forlthigh = piece "lfthigh"
	local lfshin = piece "lfshin"
	local forlfoot = piece "lffoot"

	local forrthigh = piece "rfthigh"
	local rfshin = piece "rfshin"
	local forrfoot = piece "rffoot"


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
	local SIG_BUILD = 8

	function script.Create(unitID)
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.Querybody() return flare2 end

	function script.AimFromWeapon() return body end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(body, y_axis, 0, math.rad(90))
		WaitForTurn(body, y_axis)
		Sleep(1)
		return 0
	end

	function script.AimFromWeapon() return flare2 end

	function script.QueryWeapon() return flare2 end

	function script.QueryNanoPiece() return flare2 end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(barrel, x_axis, 0, math.rad(150))
	end
	
	local function standup()
		Move( body, y_axis, 0, 30 )
		Turn( rfshin, x_axis, 0, 2)
		Turn( lfshin, x_axis, 0, 2)
		Turn( rbshin, x_axis, 0, 2)
		Turn( lbshin, x_axis, 0, 2)
		Turn( forrfoot, x_axis, 0, 2)
		Turn( forlfoot, x_axis, 0, 2)
		Turn( bacrfoot, x_axis, 0, 2)
		Turn( baclfoot, x_axis, 0, 2)
	end
	
	local function sitdown()
		Move( body, y_axis, -25, 30 )
		Turn( rfshin, x_axis, -1, 2)
		Turn( lfshin, x_axis, -1, 2)
		Turn( rbshin, x_axis, 1, 2)
		Turn( lbshin, x_axis, 1, 2)
		Turn( forrfoot, x_axis, 1, 2)
		Turn( forlfoot, x_axis, 1, 2)
		Turn( bacrfoot, x_axis, -1, 2)
		Turn( baclfoot, x_axis, -1, 2)
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
			StartThread(standup)
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 2 )
	                Turn( baclthigh, x_axis, 0, 2 )
	                Turn( rfshin, x_axis, 0.5, 2 )
	                Turn( lbshin, x_axis, -0.5, 2 )
   	                Turn( forlthigh, x_axis, -0.5, 2 )
        	        Turn( bacrthigh, x_axis, 0.5, 2 )
   	                Turn( lfshin, x_axis, 0, 2 )
        	        Turn( rbshin, x_axis, 0, 2 )
	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                    WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )
	                WaitForTurn( rbshin, x_axis )
	                WaitForTurn( lfshin, x_axis )
                    WaitForTurn( rfshin, x_axis )
   	                WaitForTurn( lbshin, x_axis )
	                Sleep(30)
	                Turn( bacrthigh, x_axis, 0, 2 )
	                Turn( forlthigh, x_axis, 0, 2 )
   	                Turn( lfshin, x_axis, 0.5, 2 )
        	        Turn( rbshin, x_axis, -0.5, 2 )
	                Turn( forrthigh, x_axis, -0.5, 2 )
	                Turn( baclthigh, x_axis, 0.5, 2 )
	                Turn( rfshin, x_axis, 0, 2 )
	                Turn( lbshin, x_axis, 0, 2 )
	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                    WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )
	                WaitForTurn( rbshin, x_axis )
	                WaitForTurn( lfshin, x_axis )
                    WaitForTurn( rfshin, x_axis )
   	                WaitForTurn( lbshin, x_axis )
	                Sleep(30)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
		StartThread(sitdown)
		Turn( forrthigh, x_axis, 0, 2 )
		Turn( baclthigh, x_axis, 0, 2 )
	    Turn( forlthigh, x_axis, 0, 2 )
	    Turn( bacrthigh, x_axis, 0, 2 )
		Turn( rfshin, x_axis, 0, 2 )
		Turn( lbshin, x_axis, 0, 2 )
	    Turn( lfshin, x_axis, 0, 2 )
	    Turn( rbshin, x_axis, 0, 2 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
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