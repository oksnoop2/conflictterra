	-- by KR
	
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
	local rgun = piece "rgun"
	local flare2 = piece "flare2"

	local forlthigh = piece "forlthigh"
	local forlshin = piece "forlshin"
	local forlfoot = piece "forlfoot"

	local forrthigh = piece "forrthigh"
	local forrshin = piece "forrshin"
	local forrfoot = piece "forrfoot"

	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
        local orc_machinegun_flash_big = SFX.CEG
        local orc_machinegun_muzzle_big = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(lgun, x_axis, 0, math.rad(100))	
		Turn(rgun, x_axis, 0, math.rad(100))	
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
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
			EmitSfx(flare2, orc_machinegun_flash_big)
			EmitSfx(flare2, orc_machinegun_muzzle_big)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, orc_machinegun_flash_big)
			EmitSfx(flare1, orc_machinegun_muzzle_big)	
		end
		if currBarrel == 3 then
			EmitSfx(flare2, orc_machinegun_flash_big)
			EmitSfx(flare2, orc_machinegun_muzzle_big)	
		end
		if currBarrel == 4 then
			EmitSfx(flare1, orc_machinegun_flash_big)
			EmitSfx(flare1, orc_machinegun_muzzle_big)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 1 end
	end

	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end