	--Hojo Combat Mech animation script by Sanada
	
	--pieces
	local waist = piece "waist"
	
	local fxflare3 = piece "fxflare3"

	local rightthigh = piece "rightthigh"
	local rightshin = piece "rightshin"
	local rightfoot = piece "rightfoot"

	local leftthigh = piece "leftthigh"
	local leftshin = piece "leftshin"
	local leftfoot = piece "leftfoot"

	local body = piece "body"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"

	local rightarm = piece "rightarm"
	local rightgun = piece "rightgun"
	local flare2 = piece "flare2"

	local leftarm = piece "leftarm"
	local leftgun = piece "leftgun"
	local flare1 = piece "flare1"


	--variables
	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local jumpjet_SIG = 4


	--CEGs
	local ct_machinegun = SFX.CEG
	local ct_jumpjet = SFX.CEG + 1
	local ct_jumpjet_land = SFX.CEG + 2	
	

	--local functions
	local function walk()
		SetSignalMask(walk_go)
		while (true) do

			--left leg backward
	                Turn( leftthigh, x_axis, 0.5, 2 )
	                Turn( leftshin, x_axis, 0, 2 )
	                Turn( leftfoot, x_axis, -0.25, 2 )

			--right leg forward
	                Turn( rightthigh, x_axis, -1, 2 )
	                Turn( rightshin, x_axis, 1, 2 )
	                Turn( rightfoot, x_axis, 0, 2 )

			--left arm forward
	                Turn( leftarm, x_axis, -0.5, 2 )
	                Turn( leftgun, x_axis, -0.5, 2 )

			--right arm backward
	                Turn( rightarm, x_axis, 0.5, 2 )
	                Turn( rightgun, x_axis, -0.5, 2 )

			--body turn right
					Turn( body, z_axis, 0.05, 1 )

			--left leg wait
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftfoot, x_axis )

			--right leg wait
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightfoot, x_axis )

			--left arm wait
	                WaitForTurn( leftarm, x_axis )
	                WaitForTurn( leftgun, x_axis )

			--right arm wait
	                WaitForTurn( rightarm, x_axis )
	                WaitForTurn( rightgun, x_axis )

			--body wait
					WaitForTurn( body, z_axis )
	                Sleep(1)
	               

			--left leg forward
	                Turn( leftthigh, x_axis, -1, 2 )
	                Turn( leftshin, x_axis, 1, 2 )
	                Turn( leftfoot, x_axis, 0, 2 )

			--right leg backward
	                Turn( rightthigh, x_axis, 0.5, 2 )
	                Turn( rightshin, x_axis, 0, 2 )
	                Turn( rightfoot, x_axis, -0.25, 2 )
	               
			--left arm
	                Turn( leftarm, x_axis, 0.5, 2 )
	                Turn( leftgun, x_axis, -0.5, 2 )

			--right arm
	                Turn( rightarm, x_axis, -0.5, 2 )
	                Turn( rightgun, x_axis, -0.5, 2 )

			--body turn left
					Turn( body, z_axis, -0.05, 1 )
	               
			--left leg wait
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftfoot, x_axis )

			--right leg wait
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightfoot, x_axis )

			--left arm wait
	                WaitForTurn( leftarm, x_axis )
	                WaitForTurn( leftgun, x_axis )

			--right arm wait
	                WaitForTurn( rightarm, x_axis )
	                WaitForTurn( rightgun, x_axis )

			--body wait
					WaitForTurn( body, z_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)

		--left leg stop
		Turn( leftthigh, x_axis, 0, 2 )
		Turn( leftshin, x_axis, 0, 2 )
		Turn( leftfoot, x_axis, 0, 2)
	       
		--right leg stop
	        Turn( rightthigh, x_axis, 0, 2 )
	        Turn( rightshin, x_axis, 0, 2 )
		Turn( rightfoot, x_axis, 0, 2)

		--left arm stop
		Turn( leftarm, x_axis, 0, 2 )
		Turn( leftgun, x_axis, -0.5, 2 )

		--right arm stop
	        Turn( rightarm, x_axis, 0, 2 )
	        Turn( rightgun, x_axis, -0.5, 2 )

		--body stop
		Turn( body, z_axis, 0, 2 )
	end

	local function jumpjetaction()
		SetSignalMask(jumpjet_SIG)
		while (true) do
			EmitSfx(fxflare1, ct_jumpjet)
			EmitSfx(fxflare2, ct_jumpjet)
			Sleep(1)
		end
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(200))
        	Turn(leftarm, x_axis, 0, math.rad(160))
        	Turn(leftgun, x_axis, -0.5, math.rad(160))
        	Turn(rightarm, x_axis, 0, math.rad(160))
        	Turn(rightgun, x_axis, -0.5, math.rad(160))
	end


	--script
	function script.Create()
		--guns forward
	        Turn( leftgun, x_axis, -0.5, 2 )
	        Turn( rightgun, x_axis, -0.5, 2 )

		--legs spread
		Turn( leftthigh, y_axis, -0.15, 2 )
		Turn( rightthigh, y_axis, 0.15, 2 )

		--muzzle flare positioning
		Turn( flare1, x_axis, 1.55, 2 )
		Turn( flare2, x_axis, 1.55, 2 )

		--jumpjetsfx positioning
		Turn( fxflare1, x_axis, 2, 2 )
		Turn( fxflare2, x_axis, 2, 2 )
		Turn( fxflare1, y_axis, 0.5, 2 )
		Turn( fxflare2, y_axis, -0.5, 2 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	function beginJump()
		StartThread(jumpjetaction)
		Signal(walk_go)

		--left leg crouch
		Turn( leftthigh, x_axis, -1, 2 )
		Turn( leftthigh, y_axis, -0.5, 2 )
		Turn( leftshin, x_axis, 1, 2 )

		--right leg crouch
		Turn( rightthigh, x_axis, -1, 2 )
		Turn( rightthigh, y_axis, 0.5, 2 )
		Turn( rightshin, x_axis, 1, 2 )

		--arms spread
		Turn( leftarm, z_axis, -0.5, 2 )
		Turn( rightarm, z_axis, 0.5, 2 )

		--body forward
		Turn( body, x_axis, 0.5, 2 )
	end

	function jumping()

	end

	function halfJump()

	end

	function endJump()
		Signal(jumpjet_SIG)

		--left leg stop
		Turn( leftthigh, x_axis, 0, 2 )
		Turn( leftthigh, y_axis, -0.15, 2 )
		Turn( leftshin, x_axis, 0, 2 )

		--right leg stop
		Turn( rightthigh, x_axis, 0, 2 )
		Turn( rightthigh, y_axis, 0.15, 2 )
		Turn( rightshin, x_axis, 0, 2 )

		--arms stop
		Turn( leftarm, z_axis, 0, 2 )
		Turn( rightarm, z_axis, 0, 2 )

		--body stop
		Turn( body, x_axis, 0, 2 )
		
		--dirt poof
		EmitSfx(fxflare3, ct_jumpjet_land)		
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
			EmitSfx(flare2, ct_machinegun)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_machinegun)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end