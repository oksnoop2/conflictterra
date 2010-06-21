	-- by KR
	
	--pieces
	local hull = piece "hull"
	local lfturret = piece "lfturret"
	local lfbarrel = piece "lfbarrel"
	local flare1 = piece "flare1"
	local lmturret = piece "lmturret"
	local lmbarrel = piece "lmbarrel"
	local flare2 = piece "flare2"
	local lrturret = piece "lrturret"
	local lrbarrel = piece "lrbarrel"
	local flare3 = piece "flare3"
	local rfturret = piece "rfturret"
	local rfbarrel = piece "rfbarrel"
	local flare4 = piece "flare4"
	local rmturret = piece "rmturret"
	local rmbarrel = piece "rmbarrel"
	local flare5 = piece "flare5"
	local rrturret = piece "rrturret"
	local rrbarrel = piece "rrbarrel"
	local flare6 = piece "flare6"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(lfbarrel, x_axis, 0, math.rad(50))
        	Turn(lmbarrel, x_axis, 0, math.rad(50))
        	Turn(lrbarrel, x_axis, 0, math.rad(50))
        	Turn(rfbarrel, x_axis, 0, math.rad(50))
        	Turn(rmbarrel, x_axis, 0, math.rad(50))
        	Turn(rrbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return lfturret end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon2() return lmturret end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon3() return lrturret end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon4() return rfturret end

	function script.QueryWeapon5() return flare5 end
	
	function script.AimFromWeapon5() return rmturret end

	function script.QueryWeapon6() return flare6 end
	
	function script.AimFromWeapon6() return rrturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(lfturret, y_axis, heading, math.rad(90))
        	Turn(lfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lfturret, y_axis)
        	WaitForTurn(lfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(lmturret, y_axis, heading, math.rad(90))
        	Turn(lmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lmturret, y_axis)
        	WaitForTurn(lmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(lrturret, y_axis, heading, math.rad(90))
        	Turn(lrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lrturret, y_axis)
        	WaitForTurn(lrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rfturret, y_axis, heading, math.rad(90))
        	Turn(rfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rfturret, y_axis)
        	WaitForTurn(rfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(rmturret, y_axis, heading, math.rad(90))
        	Turn(rmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rmturret, y_axis)
        	WaitForTurn(rmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(rrturret, y_axis, heading, math.rad(90))
        	Turn(rrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rrturret, y_axis)
        	WaitForTurn(rrbarrel, x_axis)
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

	function script.FireWeapon5()
	       Sleep(30)
	end

	function script.FireWeapon6()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end