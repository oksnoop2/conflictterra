	-- by KR
	
	--pieces
	local waist = piece "waist"

        local body = piece "body"

	local booster = piece "booster"
	local boosterflare1 = piece "boosterflare1"
	local boosterflare2 = piece "boosterflare2"
	local boosterflare3 = piece "boosterflare3"
	local boosterflare4 = piece "boosterflare4"

	local larm = piece "larm"
	local lgun = piece "lgun"
	local flare1 = piece "flare1"

	local llaser = piece "llaser"
	local lbotarm = piece "lbotarm"
	local lbotfinger = piece "lbotfinger"
	local ltoparm = piece "ltoparm"
	local ltopfinger = piece "ltopfinger"
	local laserflare1 = piece "laserflare1"

	local rarm = piece "rarm"
	local rgun = piece "rgun"
	local flare2 = piece "flare2"

	local rlaser = piece "rlaser"
	local rbotarm = piece "rbotarm"
	local rbotfinger = piece "rbotfinger"
	local rtoparm = piece "rtoparm"
	local rtopfinger = piece "rtopfinger"
	local laserflare2 = piece "laserflare2"

        local leftthigh = piece "lthigh"
        local leftshin = piece "lshin"
        local leftfoot = piece "lfoot"

        local rightthigh = piece "rthigh"
        local rightshin = piece "rshin"
        local rightfoot = piece "rfoot"
        
	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	local SIG_AIM_3 = 4
	local walk_go = 8
	local walk_stop = 16
	local jumpjet_SIG = 32

        local ct_cannon_narrow = SFX.CEG
	local jumpjetsfx = SFX.CEG + 1
	
	function script.Create()
		Turn(llaser, x_axis, -0.5, 100)
		Turn(rlaser,x_axis, -0.5, 100)
		Turn( flare1, x_axis, 90, 2 )
		Turn( flare2, x_axis, 90, 2 )

		Turn( boosterflare1, x_axis, 2, 2 )
		Turn( boosterflare2, x_axis, 2, 2 )
		Turn( boosterflare3, x_axis, 2, 2 )
		Turn( boosterflare4, x_axis, 2, 2 )
	end

	local function walk()
		SetSignalMask(walk_go)
		while (true) do
	                Turn( leftshin, x_axis, 0.5, 1.5 )
	                Turn( leftthigh, x_axis, 0.5, 1.5 )
	                Turn( leftfoot, x_axis, 0.5, 1.5 )
	               
	                Turn( rightshin, x_axis, 1, 1.5 )
	                Turn( rightthigh, x_axis, -1, 1.5 )
	                Turn( rightfoot, x_axis, 0, 1.5 )

	                Turn( lgun, x_axis, -0.25, 1.5 )
	                Turn( larm, x_axis, -0.25, 1.5 )
	               
	                Turn( rgun, x_axis, -0.25, 1.5 )
	                Turn( rarm, x_axis, 0.25, 1.5 )
	               
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( lgun, x_axis )
	                WaitForTurn( larm, x_axis )
	                WaitForTurn( rgun, x_axis )
	                WaitForTurn( rarm, x_axis )
	                Sleep(1)
	               
	                Turn( leftshin, x_axis, 1, 1.5 )
	                Turn( leftthigh, x_axis, -1, 1.5 )
	                Turn( leftfoot, x_axis, 0, 1.5 )
	               
	                Turn( rightshin, x_axis, 0.5, 1.5 )
	                Turn( rightthigh, x_axis, 0.5, 1.5 )
	                Turn( rightfoot, x_axis, 0.5, 1.5 )

	                Turn( lgun, x_axis, -0.25, 1.5 )
	                Turn( larm, x_axis, 0.25, 1.5 )
	               
	                Turn( rgun, x_axis, -0.25, 1.5 )
	                Turn( rarm, x_axis, -0.25, 1.5 )

	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( lgun, x_axis )
	                WaitForTurn( larm, x_axis )
	                WaitForTurn( rgun, x_axis )
	                WaitForTurn( rarm, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Turn( leftshin, x_axis, 0, 1.5 )
		Turn( leftthigh, x_axis, 0, 1.5 )
		Turn( leftfoot, x_axis, 0, 1.5)
	       
	        Turn( rightshin, x_axis, 0, 1.5 )
	        Turn( rightthigh, x_axis, 0, 1.5 )
		Turn( rightfoot, x_axis, 0, 1.5)

		Turn( lgun, x_axis, 0, 1.5 )
		Turn( larm, x_axis, 0, 1.5 )
	       
	        Turn( rgun, x_axis, 0, 1.5 )
	        Turn( rarm, x_axis, 0, 1.5 )

	end

	local function jumpjetaction()
		SetSignalMask(jumpjet_SIG)
		while (true) do
			EmitSfx(boosterflare1, jumpjetsfx)
			EmitSfx(boosterflare2, jumpjetsfx)
			EmitSfx(boosterflare3, jumpjetsfx)
			EmitSfx(boosterflare4, jumpjetsfx)
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
		Turn(booster, x_axis, 1, 2)
		Turn(leftfoot, x_axis, 1, 2)
		Turn(rightfoot, x_axis, 1, 2)

		Turn(leftthigh, x_axis, 1, 2)

		Turn(larm, x_axis, 1, 2)
		Turn(rarm, x_axis, 1, 2)

		Turn(lgun, x_axis, -1, 2)
		Turn(rgun, x_axis, -1, 2)
	end

	function script.Jumping()

	end

	function script.HalfJump()

	end

	function script.EndJump()
		Signal(jumpjet_SIG)
		Turn(booster, x_axis, 0, 2)
		Turn(leftfoot, x_axis, 0, 2)
		Turn(rightfoot, x_axis, 0, 2)

		Turn(leftthigh, x_axis, 0, 2)

		Turn(larm, x_axis, 0, 2)
		Turn(rarm, x_axis, 0, 2)

		Turn(lgun, x_axis, 0, 2)
		Turn(rgun, x_axis, 0, 2)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
                Turn(body, y_axis, 0, math.rad(150))
		Turn(larm, x_axis, 0, math.rad(100))
        	Turn(lgun, x_axis, 0, math.rad(100))
		Turn(rarm, x_axis, 0, math.rad(100))
        	Turn(rgun, x_axis, 0, math.rad(100))
		Move(ltoparm, z_axis, 0, 20)
		Move(lbotarm, z_axis, 0, 20)
		Move(ltopfinger, y_axis, 0, 20)
		Move(lbotfinger, y_axis, 0, 20)
		Move(rtoparm, z_axis, 0, 20)
		Move(rbotarm, z_axis, 0, 20)
		Move(rtopfinger, y_axis, 0, 20)
		Move(rbotfinger, y_axis, 0, 20)
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
        	Turn(larm, x_axis, -0.55, math.rad(100))
        	Turn(llaser, x_axis, -1, math.rad(100))
		Move(ltoparm, z_axis, 1, 20)
		Move(lbotarm, z_axis, -1, 20)
		WaitForMove(ltoparm, z_axis)
		WaitForMove(lbotarm, z_axis)
		Move(ltopfinger, y_axis, -10, 20)
		Move(lbotfinger, y_axis, -10, 20)
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
        	WaitForTurn(llaser, x_axis)
		WaitForMove(ltoparm, z_axis)
		WaitForMove(lbotarm, z_axis)
		WaitForMove(ltopfinger, y_axis)
		WaitForMove(lbotfinger, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rarm, x_axis, -0.55, math.rad(100))
        	Turn(rlaser, x_axis, -1, math.rad(100))
		Move(rtoparm, z_axis, 1, 20)
		Move(rbotarm, z_axis, -1, 20)
		WaitForMove(rtoparm, z_axis)
		WaitForMove(rbotarm, z_axis)
		Move(rtopfinger, y_axis, -10, 20)
		Move(rbotfinger, y_axis, -10, 20)
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rarm, x_axis)
        	WaitForTurn(rlaser, x_axis)
		WaitForMove(rtoparm, z_axis)
		WaitForMove(rbotarm, z_axis)
		WaitForMove(rtopfinger, y_axis)
		WaitForMove(rbotfinger, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_3)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(larm, x_axis, -0.55, math.rad(100))
        	Turn(lgun, x_axis, -1, math.rad(100))
        	Turn(rarm, x_axis, -0.55, math.rad(100))
        	Turn(rgun, x_axis, -1, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
        	WaitForTurn(lgun, x_axis)
        	WaitForTurn(rarm, x_axis)
        	WaitForTurn(rgun, x_axis)
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