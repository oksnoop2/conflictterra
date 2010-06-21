	-- by KR
	
	--pieces
	local body = piece "body"

	local larm = piece "larm"
	local lturret = piece "lturret"
	local lbarrel = piece "lbarrel"
	local flare1 = piece "flare1"

	local rarm = piece "rarm"
	local rturret = piece "rturret"
	local rbarrel = piece "rbarrel"
	local flare2 = piece "flare2"

	local baclthigh = piece "tblleg"
	local baclshin = piece "bblleg"

	local bacrthigh = piece "trbleg"
	local bacrshin = piece "bbrleg"



	local forlthigh = piece "tflleg"
	local forlshin = piece "bflleg"

	local forrthigh = piece "tfrleg"
	local forrshin = piece "bfrleg"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local walk_stop = 8
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(lturret, y_axis, 0, math.rad(90))
		Turn(rturret, y_axis, 0, math.rad(90))
		Turn(larm, x_axis, 0, math.rad(90))	
		Turn(rarm, x_axis, 0, math.rad(90))	
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 1 )
	                Turn( baclthigh, x_axis, 0, 1 )

	                Turn( forrshin, x_axis, 0.5, 1 )
	                Turn( baclshin, x_axis, -0.5, 1 )

   	                Turn( forlthigh, x_axis, -0.5, 1 )
        	        Turn( bacrthigh, x_axis, 0.5, 1 )

   	                Turn( forlshin, x_axis, 0, 1 )
        	        Turn( bacrshin, x_axis, 0, 1 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	               
	                Turn( bacrthigh, x_axis, 0, 1 )
	                Turn( forlthigh, x_axis, 0, 1 )

   	                Turn( forlshin, x_axis, 0.5, 1 )
        	        Turn( bacrshin, x_axis, -0.5, 1 )

	                Turn( forrthigh, x_axis, -0.5, 1 )
	                Turn( baclthigh, x_axis, 0.5, 1 )

	                Turn( forrshin, x_axis, 0, 1 )
	                Turn( baclshin, x_axis, 0, 1 )

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
		Turn( forrthigh, x_axis, 0, 1 )
		Turn( baclthigh, x_axis, 0, 1 )
	       
	        Turn( forlthigh, x_axis, 0, 1 )
	        Turn( bacrthigh, x_axis, 0, 1 )

		Turn( forrshin, x_axis, 0, 1 )
		Turn( baclshin, x_axis, 0, 1 )
	       
	        Turn( forlshin, x_axis, 0, 1 )
	        Turn( bacrshin, x_axis, 0, 1 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end
	

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return larm end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(lturret, y_axis, heading, math.rad(60))
        	Turn(larm, x_axis, -pitch, math.rad(90))
        	WaitForTurn(lturret, y_axis)
        	WaitForTurn(larm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon2() return rarm end
	
	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(rturret, y_axis, heading, math.rad(60))
        	Turn(rarm, x_axis, -pitch, math.rad(90))
        	WaitForTurn(rturret, y_axis)
        	WaitForTurn(rarm, x_axis)
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