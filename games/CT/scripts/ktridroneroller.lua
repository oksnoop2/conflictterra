	-- by KR
	
	--pieces
	local body = piece "body"
	local turret = piece "head"
	local flare = piece "flare"

	local frontwheel = piece "w1"
	local leftwheel = piece "w2"
	local rightwheel = piece "w3"

	--signals
	local SIG_AIM = 1

	function script.Create(unitID)
		Turn(leftwheel, y_axis, 0.75, 10)
		Turn(rightwheel, y_axis, -0.75, 10)
	end

	local function walk()
		Spin( body, y_axis, -2 )
	        Spin( frontwheel, z_axis, 2 )
	        Spin( leftwheel, x_axis, 2 )
		Spin( rightwheel, x_axis, -2 )
	end

	local function stop_walk()
		StopSpin( body, y_axis, 2 )
	        StopSpin( frontwheel, z_axis, 2 )
	        StopSpin( leftwheel, x_axis, 2 )
		StopSpin( rightwheel, x_axis, 2 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Move(turret, y_axis, 0, math.rad(150))
		Turn(turret, y_axis, 0, math.rad(150))
		Turn(turret, x_axis, 0, math.rad(150))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Move(turret, y_axis, 15, 10)
		WaitForMove(turret, y_axis)
        	Turn(turret, y_axis, heading, math.rad(150))
        	Turn(turret, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0

	end