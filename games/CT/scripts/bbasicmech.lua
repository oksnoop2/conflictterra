	-- by KR
	
	--pieces
        local waist = piece "waist"

        local rightthigh = piece "rightthigh"
        local rightshin = piece "rightshin"
        local rightfoot = piece "rightfoot"

        local leftthigh = piece "leftthigh"
        local leftshin = piece "leftshin"
        local leftfoot = piece "leftfoot"

	local body = piece "body"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"

        local head = piece "head"

	local rightarm = piece "rightarm"
	local rightgun = piece "rightgun"
        local flare2 = piece "flare2"

	local leftarm = piece "leftarm"
	local leftgun = piece "leftgun"
	local flare1 = piece "flare1"

	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
	local jumpjet_SIG = 8
        local orc_machinegun_muzzle = SFX.CEG
	local jumpjetsfx = SFX.CEG + 1
	
	function script.Create()
	Turn( flare1, x_axis, 1.55, 2 )
	Turn( flare2, x_axis, 1.55, 2 )
     
	end

	local function walk()
		SetSignalMask(walk_go)
		while (true) do
	                Turn( leftshin, x_axis, 0.5, 2 )
	                Turn( leftthigh, x_axis, 0.5, 2 )
	                Turn( leftfoot, x_axis, 0.5, 2 )
	               
	                Turn( rightshin, x_axis, 1, 2 )
	                Turn( rightthigh, x_axis, -1, 2 )
	                Turn( rightfoot, x_axis, 0, 2 )

	                Turn( leftgun, x_axis, -0.5, 2 )
	                Turn( leftarm, x_axis, -0.5, 2 )
	               
	                Turn( rightgun, x_axis, -0.5, 2 )
	                Turn( rightarm, x_axis, 0.5, 2 )
	               
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( leftgun, x_axis )
	                WaitForTurn( leftarm, x_axis )
	                WaitForTurn( rightgun, x_axis )
	                WaitForTurn( rightarm, x_axis )
	                Sleep(1)
	               
	                Turn( leftshin, x_axis, 1, 2 )
	                Turn( leftthigh, x_axis, -1, 2 )
	                Turn( leftfoot, x_axis, 0, 2 )
	               
	                Turn( rightshin, x_axis, 0.5, 2 )
	                Turn( rightthigh, x_axis, 0.5, 2 )
	                Turn( rightfoot, x_axis, 0.5, 2 )

	                Turn( leftgun, x_axis, -0.5, 2 )
	                Turn( leftarm, x_axis, 0.5, 2 )
	               
	                Turn( rightgun, x_axis, -0.5, 2 )
	                Turn( rightarm, x_axis, -0.5, 2 )

	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( leftgun, x_axis )
	                WaitForTurn( leftarm, x_axis )
	                WaitForTurn( rightgun, x_axis )
	                WaitForTurn( rightarm, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Turn( leftshin, x_axis, 0, 2 )
		Turn( leftthigh, x_axis, 0, 2 )
		Turn( leftfoot, x_axis, 0, 2)
	       
	        Turn( rightshin, x_axis, 0, 2 )
	        Turn( rightthigh, x_axis, 0, 2 )
		Turn( rightfoot, x_axis, 0, 2)

		Turn( leftgun, x_axis, 0, 2 )
		Turn( leftarm, x_axis, 0, 2 )
	       
	        Turn( rightgun, x_axis, 0, 2 )
	        Turn( rightarm, x_axis, 0, 2 )

	end

	local function jumpjetaction()
		SetSignalMask(jumpjet_SIG)
		while (true) do
			EmitSfx(fxflare1, jumpjetsfx)
			EmitSfx(fxflare2, jumpjetsfx)
			Sleep(1)
		end
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	function script.BeginJump()
		StartThread(jumpjetaction)
		Turn(leftfoot, x_axis, 1, 2)
		Turn(rightfoot, x_axis, 1, 2)

		Turn(leftthigh, x_axis, 1, 2)

		Turn(leftarm, x_axis, 1, 2)
		Turn(rightarm, x_axis, 1, 2)

		Turn(leftgun, x_axis, -1, 2)
		Turn(rightgun, x_axis, -1, 2)
	end

	function script.Jumping()

	end

	function script.HalfJump()

	end

	function script.EndJump()
		Signal(jumpjet_SIG)
		Turn(leftfoot, x_axis, 0, 2)
		Turn(rightfoot, x_axis, 0, 2)

		Turn(leftthigh, x_axis, 0, 2)

		Turn(leftarm, x_axis, 0, 2)
		Turn(rightarm, x_axis, 0, 2)

		Turn(leftgun, x_axis, 0, 2)
		Turn(rightgun, x_axis, 0, 2)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(200))
        	Turn(leftarm, x_axis, 0, math.rad(160))
        	Turn(leftgun, x_axis, 0, math.rad(160))
        	Turn(rightarm, x_axis, 0, math.rad(160))
        	Turn(rightgun, x_axis, 0, math.rad(160))
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
        	Turn(body, y_axis, heading, math.rad(200))
        	Turn(leftarm, x_axis, -0.75, math.rad(160))
                Turn(leftgun, x_axis, -0.85, math.rad(160))
        	Turn(rightarm, x_axis, -0.75, math.rad(160))
                Turn(rightgun, x_axis, -0.85, math.rad(160))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end