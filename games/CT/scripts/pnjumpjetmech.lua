	-- by KR
	
	--pieces
        local torso = piece "torso"

	local body = piece "body"

	local rarm = piece "rarm"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local larm = piece "larm"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

        local lthigh = piece "lthigh"
        local lleg = piece "lleg"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rleg = piece "rleg"
        local rfoot = piece "rfoot"

	local currBarrel = 1
	local currBarrel2 = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local walk_stop = 8
        --local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		Move (torso, y_axis, 4, 2)
		while (true) do
	                Turn( lleg, x_axis, -0.75, 3 )
	                Turn( lthigh, x_axis, 0.5, 3 )
			Turn( lfoot, x_axis, 0, 3 )
	               
	                Turn( rleg, x_axis, 2, 3 )
	                Turn( rthigh, x_axis, -1, 3 )
			Turn( rfoot, x_axis, 0, 2 )
	               
	                WaitForTurn( lleg, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rleg, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lleg, x_axis, 2, 3 )
	                Turn( lthigh, x_axis, -1, 3 )
			Turn( lfoot, x_axis, 0, 3 )
	               
	                Turn( rleg, x_axis, -0.75, 3 )
	                Turn( rthigh, x_axis, 0.5, 3 )
			Turn( rfoot, x_axis, 0, 3 )

	                WaitForTurn( lleg, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rleg, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( torso, y_axis, 0, 4 )

		Turn( lleg, x_axis, 0, 3 )
		Turn( lthigh, x_axis, 0, 3 )
		Turn( lfoot, x_axis, 0, 3 )
	       
	        Turn( rleg, x_axis, 0, 3 )
	        Turn( rthigh, x_axis, 0, 3 )
		Turn( rfoot, x_axis, 0, 3 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(larm, x_axis, 0, math.rad(100))
        	Turn(rarm, x_axis, 0, math.rad(100))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare3
		else 
			return flare4
		end
	end
	
	function script.AimFromWeapon1() return rarm end

	function script.AimFromWeapon2() return larm end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rarm, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rarm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(larm, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			--EmitSfx(flare2, orc_machinegun_flash)
			--EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 2 then
			--EmitSfx(flare1, orc_machinegun_flash)
			--EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.Shot2()
		if currBarrel2 == 1 then
			--EmitSfx(flare3, orc_machinegun_flash)
			--EmitSfx(flare3, orc_machinegun_muzzle)	
		end
		if currBarrel2 == 2 then
			--EmitSfx(flare4, orc_machinegun_flash)
			--EmitSfx(flare4, orc_machinegun_muzzle)	
		end
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
	end