	-- by KR
	
	--pieces
	local body = piece "body"

	local baclthigh = piece "lbleg"
	local baclshin = piece "lbfoot"

	local bacrthigh = piece "rbleg"
	local bacrshin = piece "rbfoot"

	local flare  = piece "flare"

	local forlthigh = piece "lfleg"
	local forlshin = piece "lffoot"

	local forrthigh = piece "rfleg"
	local forrshin = piece "rffoot"


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
	local SIG_BUILD = 8

	function script.Create(unitID)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 2 )
	                Turn( baclthigh, x_axis, 0, 2 )

	                Turn( forrshin, x_axis, 0.5, 2 )
	                Turn( baclshin, x_axis, -0.5, 2 )

   	                Turn( forlthigh, x_axis, -0.5, 2 )
        	        Turn( bacrthigh, x_axis, 0.5, 2 )

   	                Turn( forlshin, x_axis, 0, 2 )
        	        Turn( bacrshin, x_axis, 0, 2 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	               
	                Turn( bacrthigh, x_axis, 0, 2 )
	                Turn( forlthigh, x_axis, 0, 2 )

   	                Turn( forlshin, x_axis, 0.5, 2 )
        	        Turn( bacrshin, x_axis, -0.5, 2 )

	                Turn( forrthigh, x_axis, -0.5, 2 )
	                Turn( baclthigh, x_axis, 0.5, 2 )

	                Turn( forrshin, x_axis, 0, 2 )
	                Turn( baclshin, x_axis, 0, 2 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
		Turn( forrthigh, x_axis, 0, 2 )
		Turn( baclthigh, x_axis, 0, 2 )
	       
	        Turn( forlthigh, x_axis, 0, 2 )
	        Turn( bacrthigh, x_axis, 0, 2 )

		Turn( forrshin, x_axis, 0, 2 )
		Turn( baclshin, x_axis, 0, 2 )
	       
	        Turn( forlshin, x_axis, 0, 2 )
	        Turn( bacrshin, x_axis, 0, 2 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end