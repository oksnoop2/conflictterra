	-- by KR
	
	--pieces
	local base = piece "base"

	local lbleg = piece "lbleg"
	local lbknee = piece "lbknee"
	local lbfoot = piece "lbfoot"

	local lfleg = piece "lfleg"
	local lfknee = piece "lfknee"
	local lffoot = piece "lffoot"

	local rbleg = piece "rbleg"
	local rbknee = piece "rbknee"
	local rbfoot = piece "rbfoot"

	local rfleg = piece "rfleg"
	local rfknee = piece "rfknee"
	local rffoot = piece "rffoot"

	local turret = piece "turret"
	local lbbarrel = piece "lbbarrel"
	local flare1 = piece "flare1"
	local rbbarrel = piece "rbbarrel"
	local flare2 = piece "flare2"

	local rfbarrel = piece "rfbarrel"
	local flare3 = piece "flare3"

	local lfbarrel = piece "lfbarrel"
	local flare4 = piece "flare4"



	--signals
	local SIG_AIM = 2
	local SIG_AIM2 = 3
	local walk_go = 4
	local walk_stop = 5
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(lfbarrel, y_axis, 0, math.rad(90))
		Turn(rfbarrel, y_axis, 0, math.rad(90))	
		Turn(turret, y_axis, 0, math.rad(90))
		Turn(lbbarrel, x_axis, 0, math.rad(90))	
		Turn(rbbarrel, x_axis, 0, math.rad(90))	
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Turn( rfleg, y_axis, 1, 2 )
                Turn( lbleg, y_axis, -1, 2 )          

                WaitForTurn( rfleg, y_axis )
                WaitForTurn( lbleg, y_axis )
                Sleep(30)
	        while ( true ) do
	                Turn( rbleg, y_axis, 1, 2 )
	                Turn( lfleg, y_axis, -1, 2 )

   	                Turn( rfleg, y_axis, 1, 2 )
        	        Turn( lbleg, y_axis, -1, 2 )           

	                WaitForTurn( rbleg, y_axis )
	                WaitForTurn( lfleg, y_axis )
                        WaitForTurn( rfleg, y_axis )
   	                WaitForTurn( lbleg, y_axis )
	                Sleep(30)
	               
	                Turn( rbleg, y_axis, -1, 2 )
	                Turn( lfleg, y_axis, 1, 2 )

	                Turn( rfleg, y_axis, -1, 2 )
	                Turn( lbleg, y_axis, 1, 2 )  

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
	
	function script.QueryWeapon1() return flare3 end
	
	function script.AimFromWeapon1() return base end
	
	function script.AimWeapon1( heading, pitch )
        	Turn(lfbarrel, y_axis, -pitch, math.rad(90))
        	WaitForTurn(lfbarrel, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.QueryWeapon2() return flare4 end
	
	function script.AimFromWeapon2() return base end
	
	function script.AimWeapon2( heading, pitch )
        	Turn(rfbarrel, y_axis, -pitch, math.rad(90))
        	WaitForTurn(rfbarrel, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.QueryWeapon3() return flare1 end
	
	function script.AimFromWeapon3() return turret end
	
	function script.AimWeapon1( heading, pitch )
        	Turn(turret, y_axis, -heading, math.rad(60))
        	Turn(lbbarrel, x_axis, -pitch, math.rad(90))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(lbbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.QueryWeapon4() return flare2 end
	
	function script.AimFromWeapon4() return turret end
	
	function script.AimWeapon2( heading, pitch )
        	Turn(turret, y_axis, -heading, math.rad(60))
        	Turn(rbbarrel, x_axis, -pitch, math.rad(90))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(rbbarrel, x_axis)
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
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end