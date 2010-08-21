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

        local head = piece "head"

	local rightarm = piece "rightarm"
	local rightgun = piece "rightgun"
        local flare2 = piece "flare2"

	local leftarm = piece "leftarm"
	local leftgun = piece "leftgun"
	local flare1 = piece "flare1"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local walk_stop = 8
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	Turn( flare1, x_axis, 90, 2 )
	Turn( flare2, x_axis, 90, 2 )
     
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
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	function script.BeginJump()
	end

	function script.Jumping()
	end

	function script.HalfJump()
	end

	function script.EndJump()
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(200))
        	Turn(leftarm, x_axis, 0, math.rad(160))
        	Turn(leftgun, x_axis, 0, math.rad(160))
        	Turn(rightarm, x_axis, 0, math.rad(160))
        	Turn(rightgun, x_axis, 0, math.rad(160))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(200))
        	Turn(leftarm, x_axis, -0.75, math.rad(160))
                Turn(leftgun, x_axis, -0.85, math.rad(160))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(leftarm, x_axis)
        	WaitForTurn(leftgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(200))
        	Turn(rightarm, x_axis, -0.75, math.rad(160))
                Turn(rightgun, x_axis, -0.85, math.rad(160))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rightarm, x_axis)
        	WaitForTurn(rightgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)       
	Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end