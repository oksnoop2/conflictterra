	--Honda Combat Mech MkII animation script by Sanada
	
	--pieces
	local waist = piece "waist"
	
	local fxflare1 = piece "fxflare1"

	local body = piece "body"

	local booster = piece "booster"
	local boosterflare1 = piece "boosterflare1"
	local boosterflare2 = piece "boosterflare2"
	local boosterflare3 = piece "boosterflare3"
	local boosterflare4 = piece "boosterflare4"

	local leftarm = piece "larm"
	local leftgun = piece "lgun"
	local flare1 = piece "flare1"

	local leftlaser = piece "llaser"
	local leftbotarm = piece "lbotarm"
	local leftbotfinger = piece "lbotfinger"
	local lefttoparm = piece "ltoparm"
	local lefttopfinger = piece "ltopfinger"
	local laserflare1 = piece "laserflare1"

	local rightarm = piece "rarm"
	local rightgun = piece "rgun"
	local flare2 = piece "flare2"

	local rightlaser = piece "rlaser"
	local rightbotarm = piece "rbotarm"
	local rightbotfinger = piece "rbotfinger"
	local righttoparm = piece "rtoparm"
	local righttopfinger = piece "rtopfinger"
	local laserflare2 = piece "laserflare2"

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
	local SIG_AIM_2 = 2
	local SIG_AIM_3 = 4
	local walk_go = 8
	local jumpjet_SIG = 16

	--CEGs
	local ct_cannon_narrow = SFX.CEG
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
			EmitSfx(boosterflare1, ct_jumpjet)
			EmitSfx(boosterflare2, ct_jumpjet)
			EmitSfx(boosterflare3, ct_jumpjet)
			EmitSfx(boosterflare4, ct_jumpjet)
			Sleep(1)
		end
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
                Turn(body, y_axis, 0, math.rad(150))
		Turn(leftarm, x_axis, 0, math.rad(100))
        	Turn(leftgun, x_axis, -0.5, math.rad(100))
		Turn(rightarm, x_axis, 0, math.rad(100))
        	Turn(rightgun, x_axis, -0.5, math.rad(100))
		Move(lefttoparm, z_axis, 0, 20)
		Move(leftbotarm, z_axis, 0, 20)
		Move(lefttopfinger, y_axis, 0, 20)
		Move(leftbotfinger, y_axis, 0, 20)
		Move(righttoparm, z_axis, 0, 20)
		Move(rightbotarm, z_axis, 0, 20)
		Move(righttopfinger, y_axis, 0, 20)
		Move(rightbotfinger, y_axis, 0, 20)
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

		--laser forward
		Turn(leftlaser, x_axis, -0.5, 100)
		Turn(rightlaser,x_axis, -0.5, 100)

		--jumpjetsfx positioning
		Turn( boosterflare1, x_axis, 2, 2 )
		Turn( boosterflare2, x_axis, 2, 2 )
		Turn( boosterflare3, x_axis, 2, 2 )
		Turn( boosterflare4, x_axis, 2, 2 )
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
		EmitSfx(fxflare1, ct_jumpjet_land)			
	end

	function script.QueryWeapon1() return laserflare1 end

	function script.QueryWeapon2() return laserflare2 end

	function script.QueryWeapon3()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(leftarm, x_axis, -0.55, math.rad(100))
        	Turn(leftlaser, x_axis, -1, math.rad(100))
		Move(lefttoparm, z_axis, 1, 20)
		Move(leftbotarm, z_axis, -1, 20)
		WaitForMove(lefttoparm, z_axis)
		WaitForMove(leftbotarm, z_axis)
		Move(lefttopfinger, y_axis, -10, 20)
		Move(leftbotfinger, y_axis, -10, 20)
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftlaser, x_axis)
		WaitForMove(lefttoparm, z_axis)
		WaitForMove(leftbotarm, z_axis)
		WaitForMove(lefttopfinger, y_axis)
		WaitForMove(leftbotfinger, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rightarm, x_axis, -0.55, math.rad(100))
        	Turn(rightlaser, x_axis, -1, math.rad(100))
		Move(righttoparm, z_axis, 1, 20)
		Move(rightbotarm, z_axis, -1, 20)
		WaitForMove(righttoparm, z_axis)
		WaitForMove(rightbotarm, z_axis)
		Move(righttopfinger, y_axis, -10, 20)
		Move(rightbotfinger, y_axis, -10, 20)
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightlaser, x_axis)
		WaitForMove(righttoparm, z_axis)
		WaitForMove(rightbotarm, z_axis)
		WaitForMove(righttopfinger, y_axis)
		WaitForMove(rightbotfinger, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_3)
		SetSignalMask(SIG_AIM_3)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(leftarm, x_axis, -0.55, math.rad(100))
        	Turn(leftgun, x_axis, -1, math.rad(100))
        	Turn(rightarm, x_axis, -0.55, math.rad(100))
        	Turn(rightgun, x_axis, -1, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end

	function script.FireWeapon2()
	end

	function script.FireWeapon3()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_narrow)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_narrow)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end