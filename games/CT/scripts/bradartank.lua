	-- by KR
	
	--pieces
	local body = piece "body"
	local dish = piece "dish"

	--signals
	local SIG_AIM = 2
	
	function script.Create()
		StartThread(dish_animation)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(barrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return turret end
	
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
	
	function script.FireWeapon1()
	       Sleep(30)
	end

	function dish_animation()
        	while (true) do
			Turn (dish, y_axis, 1, 1)
			WaitForTurn (dish, y_axis)
			Sleep(30)
			Turn (dish, y_axis, -1, 1)
			WaitForTurn (dish, y_axis)
			Sleep(30)
		end
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end