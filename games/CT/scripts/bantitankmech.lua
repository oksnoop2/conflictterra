	--Enkei Combat Support Mech animation script by Sanada
	
	--pieces
	local waist = piece "waist"

	local baclthigh = piece "lbthigh"
	local baclshin = piece "lbshin"

	local bacrthigh = piece "rbthigh"
	local bacrshin = piece "rbshin"

	local body = piece "body"
	local lgun = piece "larm"
	local flare1 = piece "flare1"
	local rgun = piece "rarm"
	local flare2 = piece "flare2"

	local forlthigh = piece "lfthigh"
	local forlshin = piece "lfshin"

	local forrthigh = piece "rfthigh"
	local forrshin = piece "rfshin"


	--variables
	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local walk_go = 2


	--CEGs
	local ct_cannon_narrow = SFX.CEG
	

	--local functions
	local function Walk()
	        SetSignalMask( walk_go )
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
	                Sleep(1)
	               
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
	                Sleep(1)
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

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(lgun, x_axis, 0, math.rad(100))	
		Turn(rgun, x_axis, 0, math.rad(100))	
	end


	--script
	function script.Create()
	       
	end
		
	function script.StartMoving()
	    StartThread( Walk )
	end
	
	function script.StopMoving()
	    StartThread( StopWalk )
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
        Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        Turn(body, y_axis, heading, math.rad(150))
        Turn(lgun, x_axis, -pitch, math.rad(100))
        Turn(rgun, x_axis, -pitch, math.rad(100))
        WaitForTurn(body, y_axis)
        WaitForTurn(lgun, x_axis)
        WaitForTurn(rgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_narrow)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_narrow)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end