	-- by KR
	
	--pieces
	local body = piece "body"

	local lwheel = piece "lwheel"
	local rwheel = piece "rwheel"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	--signals
	local SIG_AIM = 1

	function script.Create(unitID)
	end

	local function walk()
	        Spin( lwheel, x_axis, 5 )
		Spin( rwheel, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( lwheel, x_axis, 5 )
		StopSpin( rwheel, x_axis, 5 )
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
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	WaitForTurn(body, y_axis)
--		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end