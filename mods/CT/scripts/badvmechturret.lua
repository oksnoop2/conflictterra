	-- by KR
	
	--pieces
	local base = piece "base"
	local frontdoor = piece "frontdoor"
	local reardoor = piece "reardoor"
	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8


	function script.Create()
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(frontdoor, x_axis, 0, math.rad(90))
        	Turn(reardoor, x_axis, 0, math.rad(90))
        	Turn(leftdoor, z_axis, 0, math.rad(90))
        	Turn(rightdoor, z_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return base end

	function script.AimFromWeapon2() return base end

	function script.AimFromWeapon3() return base end

	function script.AimFromWeapon4() return base end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(frontdoor, x_axis, 1.55, math.rad(90))
        	WaitForTurn(frontdoor, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(reardoor, x_axis, -1.55, math.rad(90))
        	WaitForTurn(reardoor, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(leftdoor, z_axis, 1.55, math.rad(90))
        	WaitForTurn(leftdoor, z_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rightdoor, z_axis, -1.55, math.rad(90))
        	WaitForTurn(rightdoor, z_axis)
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