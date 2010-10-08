	-- by KR
	
	--pieces
	local hull = piece "hull"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	
	function script.Create()       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(hull, y_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return hull end

	function script.AimFromWeapon2() return hull end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(hull, y_axis, heading, math.rad(90))
        	WaitForTurn(hull, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(hull, y_axis, heading, math.rad(90))
        	WaitForTurn(hull, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
               Sleep(30)
	end

	function script.FireWeapon2()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end