	-- by KR
	
	--pieces
	local body = piece "body"

	local lbleg = piece "blthigh"
	local lbfoot = piece "blshin"

	local lfleg = piece "flthigh"
	local lffoot = piece "flshin"

	local rbleg = piece "brthigh"
	local rbfoot = piece "brshin"

	local rfleg = piece "frthigh"
	local rffoot = piece "frshin"

	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
		Turn(barrel, x_axis, 0, math.rad(50))	
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Turn( lfleg, y_axis, 0.25, 2 )
                Turn( rbleg, y_axis, -0.25, 2 )          

                WaitForTurn( rfleg, y_axis )
                WaitForTurn( lbleg, y_axis )
                Sleep(30)
	        while ( true ) do
	                Turn( rbleg, y_axis, -0.25, 2 )
	                Turn( lfleg, y_axis, 0.25, 2 )

   	                Turn( rfleg, y_axis, 0.25, 2 )
        	        Turn( lbleg, y_axis, -0.25, 2 )           

	                WaitForTurn( rbleg, y_axis )
	                WaitForTurn( lfleg, y_axis )
                        WaitForTurn( rfleg, y_axis )
   	                WaitForTurn( lbleg, y_axis )
	                Sleep(30)
	               
	                Turn( rbleg, y_axis, 0.25, 2 )
	                Turn( lfleg, y_axis, -0.25, 2 )

	                Turn( rfleg, y_axis, -0.25, 2 )
	                Turn( lbleg, y_axis, 0.25, 2 )  

	                WaitForTurn( rbleg, y_axis )
	                WaitForTurn( lfleg, y_axis )
                        WaitForTurn( rfleg, y_axis )
   	                WaitForTurn( lbleg, y_axis )
	                Sleep(30)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
		Turn( rfleg, y_axis, 0, 2 )
		Turn( lbleg, y_axis, 0, 2 )
	       
	        Turn( lfleg, y_axis, 0, 2 )
	        Turn( rbleg, y_axis, 0, 2 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(60))
        	Turn(barrel, x_axis, -pitch, math.rad(90))
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