	--Enkei Combat Mech animation script by Sanada
	
	--pieces
	local waist = piece "waist"

	local body = piece "body"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	
	local minelayer = piece "minelayer"
	local mine1 = piece "mine1"
	local mine2 = piece "mine2"
	local mine3 = piece "mine3"
	local mine4 = piece "mine4"
	local minelayerarm = piece "minelayerarm"
	local minelayerspike = piece "minelayerspike"
	local fxflare1 = piece "fxflare1"

	local lfrontthigh = piece "lfrontthigh"
	local lfrontshin = piece "lfrontshin"
	local lfrontfoot = piece "lfrontfoot"

	local rfrontthigh = piece "rfrontthigh"
	local rfrontshin = piece "rfrontshin"
	local rfrontfoot = piece "rfrontfoot"
	
	local lrearthigh = piece "lrearthigh"
	local lrearshin = piece "lrearshin"
	local lrearfoot = piece "lrearfoot"

	local rrearthigh = piece "rrearthigh"
	local rrearshin = piece "rrearshin"
	local rrearfoot = piece "rrearfoot"


	--signals
	local SIG_AIM = 1
	local walk_go = 2


	--CEGs
	local ct_cannon_narrow = SFX.CEG
	

	--local functions
	local function Walk()
	        SetSignalMask( walk_go )
	        while ( true ) do
					--Legs move Y axis one step
					Turn(lfrontthigh, y_axis, 1.3, 2)  --Retract
					Turn(rfrontthigh, y_axis, -0.3, 2)  --Extend
					
					Turn(lrearthigh, y_axis, -1.3, 2)  --Extend
					Turn(rrearthigh, y_axis, 0.3, 2)  --Retract
					
					--Legs move X axis one step
					Turn(lfrontthigh, x_axis, -0.45, 2)  --Retract
					Turn(rfrontthigh, x_axis, -0.65, 2)  --Extend
					
					Turn(lrearthigh, x_axis, 0.65, 2)  --Extend
					Turn(rrearthigh, x_axis, 0.45, 2)  --Retract
					
					--Shins move X axis one step
					Turn(lfrontshin, x_axis, 0, 2)  --Retract
					Turn(rfrontshin, x_axis, -0.45, 2)  --Extend
					
					Turn(lrearshin, x_axis, 0.45, 2)  --Extend
					Turn(rrearshin, x_axis, 0, 2)  --Retract
					
					--Legs wait Y axis one step
					WaitForTurn( lfrontthigh, y_axis )
					WaitForTurn( rfrontthigh, y_axis )
					
					WaitForTurn( lrearthigh, y_axis )
					WaitForTurn( rrearthigh, y_axis )
					Sleep(1)
					
					--Legs move Y axis one more step
					Turn(lfrontthigh, y_axis, 0.3, 2)  --Extend
					Turn(rfrontthigh, y_axis, -1.3, 2)  --Retract
					
					Turn(lrearthigh, y_axis, -0.3, 2)  --Retract
					Turn(rrearthigh, y_axis, 1.3, 2)  --Extend
					
					--Legs move X axis one more step
					Turn(lfrontthigh, x_axis, -0.65, 2)  --Extend
					Turn(rfrontthigh, x_axis, -0.45, 2)  --Retract
					
					Turn(lrearthigh, x_axis, 0.45, 2)  --Retract
					Turn(rrearthigh, x_axis, 0.65, 2)  --Extend
					
					--Shins move X axis one more step
					Turn(lfrontshin, x_axis, -0.45, 2)  --Extend
					Turn(rfrontshin, x_axis, 0, 2)  --Retract
					
					Turn(lrearshin, x_axis, 0, 2)  --Retract
					Turn(rrearshin, x_axis, 0.45, 2)  --Extend
					
					--Legs wait Y axis one more step
					WaitForTurn( lfrontthigh, y_axis )
					WaitForTurn( rfrontthigh, y_axis )
					
					WaitForTurn( lrearthigh, y_axis )
					WaitForTurn( rrearthigh, y_axis )
	                Sleep(1)
	        end
	end
	
	local function StopWalk()
	    Signal( walk_go )
		--Leg angles X axis return to idle
		Turn(lfrontthigh, x_axis, -0.45, 2)
		Turn(rfrontthigh, x_axis, -0.45, 2)
		
		Turn(lrearthigh, x_axis, 0.45, 2)
		Turn(rrearthigh, x_axis, 0.45, 2)
		
		--Shin angles X axis return to idle
		Turn(lfrontshin, x_axis, 0, 2)
		Turn(rfrontshin, x_axis, 0, 2)
		
		Turn(lrearshin, x_axis, 0, 2)
		Turn(rrearshin, x_axis, 0, 2)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(barrel, x_axis, 0, math.rad(100))		
	end


	--script
	function script.Create()
		--Raise Body
		Move(waist, y_axis, 2.25)
		
		--Leg angles Y axis
		Turn(lfrontthigh, y_axis, 0.8)
		Turn(rfrontthigh, y_axis, -0.8)
		
		Turn(lrearthigh, y_axis, -0.8)
		Turn(rrearthigh, y_axis, 0.8)
		
		--Leg angles X axis
		Turn(lfrontthigh, x_axis, -0.45)
		Turn(rfrontthigh, x_axis, -0.45)
		
		Turn(lrearthigh, x_axis, 0.45)
		Turn(rrearthigh, x_axis, 0.45)
		
		--Feet angles X axis
		Turn(lfrontfoot, x_axis, 0.45)
		Turn(rfrontfoot, x_axis, 0.45)
		
		Turn(lrearfoot, x_axis, -0.45)
		Turn(rrearfoot, x_axis, -0.45)
	end
		
	function script.StartMoving()
	    StartThread( Walk )
	end
	
	function script.StopMoving()
	    StartThread( StopWalk )
	end

	function script.QueryWeapon1()
		return flare1
	end
	
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
	
	function script.Shot1()
		EmitSfx(flare1, ct_cannon_narrow)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end