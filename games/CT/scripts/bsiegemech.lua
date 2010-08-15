	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local larm = piece "larm"
	local lgun = piece "lgun"
	local flare2 = piece "flare2"

	local pivot = piece "pivot"
	local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	local rarm = piece "rarm"
	local rgun = piece "rgun"
        local flare3 = piece "flare3"

        local leftthigh = piece "lthigh"
        local leftshin = piece "lshin"
        local leftfoot = piece "lfoot"

        local rightthigh = piece "rthigh"
        local rightshin = piece "rshin"
        local rightfoot = piece "rfoot"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local walk_go = 8
	local walk_stop = 16
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	Turn( flare1, x_axis, -90, 2 )
	Turn( flare2, x_axis, 90, 2 )
	Turn( flare3, x_axis, 90, 2 )
	       
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

	                Turn( lgun, x_axis, -0.5, 2 )
	                Turn( larm, x_axis, -0.5, 2 )
	               
	                Turn( rgun, x_axis, -0.5, 2 )
	                Turn( rarm, x_axis, 0.5, 2 )
	               
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
	               
	                Turn( leftshin, x_axis, 1, 2 )
	                Turn( leftthigh, x_axis, -1, 2 )
	                Turn( leftfoot, x_axis, 0, 2 )
	               
	                Turn( rightshin, x_axis, 0.5, 2 )
	                Turn( rightthigh, x_axis, 0.5, 2 )
	                Turn( rightfoot, x_axis, 0.5, 2 )

	                Turn( lgun, x_axis, -0.5, 2 )
	                Turn( larm, x_axis, 0.5, 2 )
	               
	                Turn( rgun, x_axis, -0.5, 2 )
	                Turn( rarm, x_axis, -0.5, 2 )

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
		Turn( leftshin, x_axis, 0, 2 )
		Turn( leftthigh, x_axis, 0, 2 )
		Turn( leftfoot, x_axis, 0, 2)
	       
	        Turn( rightshin, x_axis, 0, 2 )
	        Turn( rightthigh, x_axis, 0, 2 )
		Turn( rightfoot, x_axis, 0, 2)

		Turn( lgun, x_axis, 0, 2 )
		Turn( larm, x_axis, 0, 2 )
	       
	        Turn( rgun, x_axis, 0, 2 )
	        Turn( rarm, x_axis, 0, 2 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
		Turn(pivot, x_axis, 0, math.rad(50))
        	Turn(larm, x_axis, 0, math.rad(50))
        	Turn(lgun, x_axis, 0, math.rad(50))
        	Turn(rarm, x_axis, 0, math.rad(50))
        	Turn(rgun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

        function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end

        function script.AimFromWeapon3() return body end
	
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
        	Turn(larm, x_axis, -0.75, math.rad(100))
                Turn(lgun, x_axis, -0.85, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
        	WaitForTurn(lgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rarm, x_axis, -0.75, math.rad(100))
                Turn(rgun, x_axis, -0.85, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rarm, x_axis)
        	WaitForTurn(rgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)
		StartThread(recoil)
		Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)
		Sleep(30)
	end

	function script.FireWeapon3()
	EmitSfx(flare3, orc_machinegun_flash)
	EmitSfx(flare3, orc_machinegun_muzzle)
		Sleep(30)
	end

	function recoil()
		Move (gun, y_axis, -10, 100)
		Move (barrel, y_axis, -25, 200)
		WaitForMove (gun, y_axis)
		Move (gun, y_axis, 0, 20)
		WaitForMove (barrel, y_axis)
		Move (barrel, y_axis, 0, 50)
        end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end