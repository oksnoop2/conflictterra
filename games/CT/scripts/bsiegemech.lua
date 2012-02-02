	--Ishida Combat Mech animation script by Sanada
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local leftarm = piece "larm"
	local leftgun = piece "lgun"
	local flare2 = piece "flare2"

	local pivot = piece "pivot"
	local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	local rightarm = piece "rarm"
	local rightgun = piece "rgun"
        local flare3 = piece "flare3"

        local leftthigh = piece "lthigh"
        local leftshin = piece "lshin"
        local leftfoot = piece "lfoot"

        local rightthigh = piece "rthigh"
        local rightshin = piece "rshin"
        local rightfoot = piece "rfoot"


	--variables
	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4


	--CEGs
	local ct_cannon_artillery = SFX.CEG
	local ct_cannon_artillery_side = SFX.CEG + 1
        local ct_machinegun = SFX.CEG + 2
	

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

	--local function recoil()
		--Move (gun, y_axis, -10, 100)
		--Move (barrel, y_axis, -25, 200)
		--WaitForMove (gun, y_axis)
		--WaitForMove (barrel, y_axis)
		--Move (gun, y_axis, 0, 20)
		--Move (barrel, y_axis, 0, 50)
        --end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(90))
		Turn(pivot, x_axis, 0, math.rad(50))
        	Turn(leftarm, x_axis, 0, math.rad(50))
        	Turn(leftgun, x_axis, 0, math.rad(50))
        	Turn(rightarm, x_axis, 0, math.rad(50))
        	Turn(rightgun, x_axis, 0, math.rad(50))
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

		--muzzle flare positioning
		Turn( flare1, x_axis, -1.55, 2 )
		Turn( flare2, x_axis, 1.55, 2 )
		Turn( flare3, x_axis, 1.55, 2 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2()
		if (currBarrel == 1) then 
			return flare2
		else 
			return flare3
		end
	end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(pivot, x_axis, 1, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(pivot, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(leftarm, x_axis, -0.75, math.rad(100))
                Turn(leftgun, x_axis, -0.85, math.rad(100))
        	Turn(rightarm, x_axis, -0.75, math.rad(100))
                Turn(rightgun, x_axis, -0.85, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, ct_cannon_artillery)	     
		EmitSfx(flare1, ct_cannon_artillery_side)
		--StartThread(recoil)
	end

	function script.Shot2()
		if currBarrel == 1 then
			EmitSfx(flare3, ct_machinegun)
		end
		if currBarrel == 2 then
			EmitSfx(flare2, ct_machinegun)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end