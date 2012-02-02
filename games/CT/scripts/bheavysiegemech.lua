	--Shimazu Combat Mech animation script by Sanada
	
	--pieces
	local waist = piece "waist"

	local baclthigh = piece "baclthigh"
	local baclshin = piece "baclshin"
	local baclfoot = piece "baclfoot"

	local bacrthigh = piece "bacrthigh"
	local bacrshin = piece "bacrshin"
	local bacrfoot = piece "bacrfoot"

	local body = piece "body"
	local lgun = piece "lgun"
	local flare1 = piece "flare1"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local rgun = piece "rgun"
	local flare2 = piece "flare2"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"

	local forlthigh = piece "forlthigh"
	local forlshin = piece "forlshin"
	local forlfoot = piece "forlfoot"

	local forrthigh = piece "forrthigh"
	local forrshin = piece "forrshin"
	local forrfoot = piece "forrfoot"


	--variables
	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local walk_go = 2


	--CEGs
	local ct_cannon_artillery = SFX.CEG
	local ct_cannon_artillery_side_small = SFX.CEG + 1
	
	
	--local functions
	local function Walk()
	        SetSignalMask( walk_go )
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 0.5 )
	                Turn( baclthigh, x_axis, 0, 0.5 )

	                Turn( forrshin, x_axis, 0.5, 0.5 )
	                Turn( baclshin, x_axis, -0.5, 0.5 )

   	                Turn( forlthigh, x_axis, -0.5, 0.5 )
        	        Turn( bacrthigh, x_axis, 0.5, 0.5 )

   	                Turn( forlshin, x_axis, 0, 0.5 )
        	        Turn( bacrshin, x_axis, 0, 0.5 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	               
	                Turn( bacrthigh, x_axis, 0, 0.5 )
	                Turn( forlthigh, x_axis, 0, 0.5 )

   	                Turn( forlshin, x_axis, 0.5, 0.5 )
        	        Turn( bacrshin, x_axis, -0.5, 0.5 )

	                Turn( forrthigh, x_axis, -0.5, 0.5 )
	                Turn( baclthigh, x_axis, 0.5, 0.5 )

	                Turn( forrshin, x_axis, 0, 0.5 )
	                Turn( baclshin, x_axis, 0, 0.5 )

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
		Turn( forrthigh, x_axis, 0, 0.5 )
		Turn( baclthigh, x_axis, 0, 0.5 )
	       
	        Turn( forlthigh, x_axis, 0, 0.5 )
	        Turn( bacrthigh, x_axis, 0, 0.5 )

		Turn( forrshin, x_axis, 0, 0.5 )
		Turn( baclshin, x_axis, 0, 0.5 )
	       
	        Turn( forlshin, x_axis, 0, 0.5 )
	        Turn( bacrshin, x_axis, 0, 0.5 )
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(lgun, x_axis, 0, math.rad(100))	
		Turn(rgun, x_axis, 0, math.rad(100))	
	end


	--script
	function script.Create()
	       Turn(fxflare1, x_axis, -1.5, 10)
	       Turn(fxflare2, y_axis, 1.5, 10)
	       Turn(fxflare3, y_axis, -1.5, 10)

	       Turn(fxflare2, x_axis, 0.5, 10)
	       Turn(fxflare3, x_axis, 0.5, 10)

	       Turn(fxflare4, x_axis, -1.5, 10)
	       Turn(fxflare5, y_axis, 1.5, 10)
	       Turn(fxflare6, y_axis, -1.5, 10)

	       Turn(fxflare5, x_axis, 0.5, 10)
	       Turn(fxflare6, x_axis, 0.5, 10)
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
		end
		if (currBarrel == 2) then 
			return flare2
		end
		if (currBarrel == 3) then 
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
			EmitSfx(flare2, ct_cannon_artillery)
			EmitSfx(fxflare4, ct_cannon_artillery_side_small)
			EmitSfx(fxflare5, ct_cannon_artillery_side_small)
			EmitSfx(fxflare6, ct_cannon_artillery_side_small)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_artillery)
			EmitSfx(fxflare1, ct_cannon_artillery_side_small)
			EmitSfx(fxflare2, ct_cannon_artillery_side_small)
			EmitSfx(fxflare3, ct_cannon_artillery_side_small)
		end
		if currBarrel == 3 then
			EmitSfx(flare2, ct_cannon_artillery)
			EmitSfx(fxflare4, ct_cannon_artillery_side_small)
			EmitSfx(fxflare5, ct_cannon_artillery_side_small)
			EmitSfx(fxflare6, ct_cannon_artillery_side_small)	
		end
		if currBarrel == 4 then
			EmitSfx(flare1, ct_cannon_artillery)
			EmitSfx(fxflare1, ct_cannon_artillery_side_small)
			EmitSfx(fxflare2, ct_cannon_artillery_side_small)
			EmitSfx(fxflare3, ct_cannon_artillery_side_small)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 1 end
	end

	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end