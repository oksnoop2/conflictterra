	-- by KR
	
	--pieces
	local body = piece "body"
	local lbwheel = piece "lbwheel"
	local lfwheel = piece "lfwheel"
	local rbwheel = piece "rbwheel"
	local rfwheel = piece "rfwheel"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"



	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	
	function script.Create()
	       
	end

	local function walk()
	        Spin( lbwheel, x_axis, 5 )
		Spin( lfwheel, x_axis, 5 )
		Spin( rbwheel, x_axis, 5 )
		Spin( rfwheel, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( lbwheel, x_axis, 5 )
		StopSpin( lfwheel, x_axis, 5 )
		StopSpin( rbwheel, x_axis, 5 )
		StopSpin( rfwheel, x_axis, 5 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(barrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turret end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon2() return turret end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon3() return turret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
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

	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end