	-- by KR
	
	--pieces
	local body = piece "body"
	local flare = piece "flare"

	--signals
	local SIG_AIM = 2
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
        	Turn(body, y_axis, 0, math.rad(90))
        	Turn(body, x_axis, 0, math.rad(60))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(body, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end	
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end