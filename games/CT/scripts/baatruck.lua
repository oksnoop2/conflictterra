	-- by KR
	
	--pieces
	local body = piece "body"
	local forwheel = piece "forwheel"
	local rearwheel = piece "rearwheel"
	local turret = piece "turret"
	local flare1 = piece "flare1"

	--signals
	local SIG_AIM = 1
		"custom:ct_missile_smokecloud",
	
	function script.Create()
	       
	end

	local function walk()
	        Spin( forwheel, x_axis, 5 )
		Spin( rearwheel, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( forwheel, x_axis, 5 )
		StopSpin( rearwheel, x_axis, 5 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, x_axis, 0, math.rad(200))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(200))
        	Turn(turret, x_axis, -pitch, math.rad(150))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(turret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, ct_missile_smokecloud)      
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end