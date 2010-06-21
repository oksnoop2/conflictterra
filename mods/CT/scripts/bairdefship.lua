	-- by KR
	
	--pieces
	local hull = piece "hull"
	local lfturret = piece "lfturret"
	local lfbarrel = piece "lfbarrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local lmturret = piece "lmturret"
	local lmbarrel = piece "lmbarrel"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local lrturret = piece "lrturret"
	local lrbarrel = piece "lrbarrel"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local rfturret = piece "rfturret"
	local rfbarrel = piece "rfbarrel"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"
	local rmturret = piece "rmturret"
	local rmbarrel = piece "rmbarrel"
	local flare9 = piece "flare9"
	local flare10 = piece "flare10"
	local rrturret = piece "rrturret"
	local rrbarrel = piece "rrbarrel"
	local flare11 = piece "flare11"
	local flare12 = piece "flare12"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128
	local SIG_AIM_NIN = 256
	local SIG_AIM_TEN = 512
	local SIG_AIM_ELE = 1024
	local SIG_AIM_TWE = 2048
	
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

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end

	function script.QueryWeapon5() return flare5 end

	function script.QueryWeapon6() return flare6 end

	function script.QueryWeapon7() return flare7 end

	function script.QueryWeapon8() return flare8 end

	function script.QueryWeapon9() return flare9 end

	function script.QueryWeapon10() return flare10 end

	function script.QueryWeapon11() return flare11 end

	function script.QueryWeapon12() return flare12 end
	
	function script.AimFromWeapon1() return lfturret end
	
	function script.AimFromWeapon2() return lfturret end
	
	function script.AimFromWeapon3() return lmturret end
	
	function script.AimFromWeapon4() return lmturret end
	
	function script.AimFromWeapon5() return lrturret end
	
	function script.AimFromWeapon6() return lrturret end

	function script.AimFromWeapon7() return rfturret end
	
	function script.AimFromWeapon8() return rfturret end
	
	function script.AimFromWeapon9() return rmturret end
	
	function script.AimFromWeapon10() return rmturret end
	
	function script.AimFromWeapon11() return rrturret end
	
	function script.AimFromWeapon12() return rrturret end
	
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
        	Turn(lfturret, y_axis, heading, math.rad(90))
        	Turn(lfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lfturret, y_axis)
        	WaitForTurn(lfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(lmturret, y_axis, heading, math.rad(90))
        	Turn(lmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lmturret, y_axis)
        	WaitForTurn(lmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(lmturret, y_axis, heading, math.rad(90))
        	Turn(lmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lmturret, y_axis)
        	WaitForTurn(lmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(lrturret, y_axis, heading, math.rad(90))
        	Turn(lrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lrturret, y_axis)
        	WaitForTurn(lrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(lrturret, y_axis, heading, math.rad(90))
        	Turn(lrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lrturret, y_axis)
        	WaitForTurn(lrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(rfturret, y_axis, heading, math.rad(90))
        	Turn(rfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rfturret, y_axis)
        	WaitForTurn(rfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(rfturret, y_axis, heading, math.rad(90))
        	Turn(rfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rfturret, y_axis)
        	WaitForTurn(rfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon9( heading, pitch )
		Signal(SIG_AIM_NIN)
		SetSignalMask(SIG_AIM_NIN)
        	Turn(rmturret, y_axis, heading, math.rad(90))
        	Turn(rmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rmturret, y_axis)
        	WaitForTurn(rmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon10( heading, pitch )
		Signal(SIG_AIM_TEN)
		SetSignalMask(SIG_AIM_TEN)
        	Turn(rmturret, y_axis, heading, math.rad(90))
        	Turn(rmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rmturret, y_axis)
        	WaitForTurn(rmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon11( heading, pitch )
		Signal(SIG_AIM_ELE)
		SetSignalMask(SIG_AIM_ELE)
        	Turn(rrturret, y_axis, heading, math.rad(90))
        	Turn(rrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rrturret, y_axis)
        	WaitForTurn(rrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon12( heading, pitch )
		Signal(SIG_AIM_TWE)
		SetSignalMask(SIG_AIM_TWE)
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

	function script.FireWeapon7()
	       Sleep(30)
	end

	function script.FireWeapon8()
	       Sleep(30)
	end

	function script.FireWeapon9()
	       Sleep(30)
	end

	function script.FireWeapon10()
	       Sleep(30)
	end

	function script.FireWeapon11()
	       Sleep(30)
	end

	function script.FireWeapon12()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end