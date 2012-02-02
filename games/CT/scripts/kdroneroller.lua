	--Roller Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local body = piece "body"

	local lwheel = piece "lwheel"
	local rwheel = piece "rwheel"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"


	--signals
	local SIG_AIM = 1


	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(body, x_axis, 0, math.rad(150))
	end


	--script
	function script.Create(unitID)
	end

	function script.StartMoving()
	        Spin( lwheel, x_axis, 5 )
		Spin( rwheel, x_axis, 5 )
	end
	
	function script.StopMoving()
	        StopSpin( lwheel, x_axis, 5 )
		StopSpin( rwheel, x_axis, 5 )
	end
	
	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(body, x_axis, -pitch, math.rad(150))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(body, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0

	end