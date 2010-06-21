	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local larm = piece "larm"
	local lbarrel = piece "lbarrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local rarm = piece "rarm"
	local rbarrel = piece "rbarrel"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

        local lthigh = piece "lthigh"
        local lshin = piece "lshin"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rshin = piece "rshin"
        local rfoot = piece "rfoot"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local walk_go = 16
	local walk_stop = 32
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		Move (waist, y_axis, 4, 2)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 2 )
	                Turn( lthigh, x_axis, 0.5, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rshin, x_axis, 1, 2 )
	                Turn( rthigh, x_axis, -1, 2 )
			Turn( rfoot, x_axis, 0, 2 )
	               
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 1, 2 )
	                Turn( lthigh, x_axis, -1, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rshin, x_axis, -0.75, 2 )
	                Turn( rthigh, x_axis, 0.5, 2 )
			Turn( rfoot, x_axis, 0, 2 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( waist, y_axis, 0, 4 )

		Turn( lshin, x_axis, 0, 2 )
		Turn( lthigh, x_axis, 0, 2 )
		Turn( lfoot, x_axis, 0, 2 )
	       
	        Turn( rshin, x_axis, 0, 2 )
	        Turn( rthigh, x_axis, 0, 2 )
		Turn( rfoot, x_axis, 0, 2 )

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
        	Turn(larm, x_axis, 0, math.rad(50))
        	Turn(rarm, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return larm end

	function script.AimFromWeapon2() return larm end

	function script.AimFromWeapon3() return rarm end

	function script.AimFromWeapon4() return rarm end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(larm, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(larm, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(rarm, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rarm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(rarm, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rarm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
               Sleep(30)
	end

	function script.FireWeapon2()
	       Sleep(30)
	end

	function script.FireWeapon3()
               Sleep(30)
	end

	function script.FireWeapon4()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end