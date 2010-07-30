	-- by KR
	
	--pieces
	local base = piece "base"
	local turret = piece "turret"
	local leftpod = piece "leftpod"
	local flare1 = piece "flare1"
	local leftdoor = piece "leftdoor"

	local rightpod = piece "rightpod"
	local rightdoor = piece "rightdoor"
	local flare2 = piece "flare2"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	
	function script.Create()
	       
	end

	local function left_door()
		Turn( leftdoor, x_axis, -1.55, 10)
	end

	local function right_door()
		Turn( rightdoor, x_axis, -1.55, 10)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(leftdoor, x_axis, 0, 10)
		Turn(rightdoor, x_axis, 0, 10)
        	Turn(leftpod, x_axis, 0, math.rad(50))
        	Turn(rightpod, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		StartThread(left_door)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(leftpod, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(leftpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		StartThread(right_door)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(rightpod, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(rightpod, x_axis)
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