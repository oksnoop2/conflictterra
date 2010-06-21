	-- by KR
	
	--pieces
	local hull = piece "hull"

	local bigturret = piece "bigturret"
	local bigbarrel = piece "bigbarrel"
	local bigflare = piece "bigflare"

	local forturret = piece "forturret"
	local forbarrel1 = piece "forbarrel1"
	local flare1 = piece "flare1"

	local forbarrel2 = piece "forbarrel2"
	local flare2 = piece "flare2"

	local forbarrel3 = piece "forbarrel3"
	local flare3 = piece "flare3"

	local forbarrel4 = piece "forbarrel4"
	local flare4 = piece "flare4"

	local forbarrel5 = piece "forbarrel5"
	local flare5 = piece "flare5"

	local midturret = piece "midturret"
	local midbarrel1 = piece "midbarrel1"
	local flare6 = piece "flare6"

	local midbarrel2 = piece "midbarrel2"
	local flare7 = piece "flare7"

	local midbarrel3 = piece "midbarrel3"
	local flare8 = piece "flare8"

	local midbarrel4 = piece "midbarrel4"
	local flare9 = piece "flare9"

	local midbarrel5 = piece "midbarrel5"
	local flare10 = piece "flare10"

	local rearturret = piece "rearturret"
	local rearbarrel1 = piece "rearbarre1"
	local flare11 = piece "flare11"

	local rearbarrel2 = piece "rearbarre2"
	local flare12 = piece "flare12"

	local rearbarrel3 = piece "rearbarre3"
	local flare13 = piece "flare13"

	local rearbarrel4 = piece "rearbarre4"
	local flare14 = piece "flare14"

	local rearbarrel5 = piece "rearbarre5"
	local flare15 = piece "flare15"

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
	local SIG_AIM_THI = 4096
	local SIG_AIM_FOR = 8192
	local SIG_AIM_FIF = 16384
	local SIG_AIM_SIXT = 32768
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(bigturret, y_axis, 0, math.rad(90))
        	Turn(bigbarrel, x_axis, 0, math.rad(50))

		Turn(forturret, y_axis, 0, math.rad(90))
        	Turn(forbarrel1, x_axis, 0, math.rad(50))
        	Turn(forbarrel2, x_axis, 0, math.rad(50))
        	Turn(forbarrel3, x_axis, 0, math.rad(50))
        	Turn(forbarrel4, x_axis, 0, math.rad(50))
        	Turn(forbarrel5, x_axis, 0, math.rad(50))

		Turn(midturret, y_axis, 0, math.rad(90))
        	Turn(midbarrel1, x_axis, 0, math.rad(50))
        	Turn(midbarrel2, x_axis, 0, math.rad(50))
        	Turn(midbarrel3, x_axis, 0, math.rad(50))
        	Turn(midbarrel4, x_axis, 0, math.rad(50))
        	Turn(midbarrel5, x_axis, 0, math.rad(50))

		Turn(rearturret, y_axis, 0, math.rad(90))
        	Turn(rearbarrel1, x_axis, 0, math.rad(50))
        	Turn(rearbarrel2, x_axis, 0, math.rad(50))
        	Turn(rearbarrel3, x_axis, 0, math.rad(50))
        	Turn(rearbarrel4, x_axis, 0, math.rad(50))
        	Turn(rearbarrel5, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return bigflare end

	function script.QueryWeapon2() return flare1 end

	function script.QueryWeapon3() return flare2 end

	function script.QueryWeapon4() return flare3 end

	function script.QueryWeapon5() return flare4 end

	function script.QueryWeapon6() return flare5 end

	function script.QueryWeapon7() return flare6 end

	function script.QueryWeapon8() return flare7 end

	function script.QueryWeapon9() return flare8 end

	function script.QueryWeapon10() return flare9 end

	function script.QueryWeapon11() return flare10 end

	function script.QueryWeapon12() return flare11 end

	function script.QueryWeapon13() return flare12 end

	function script.QueryWeapon14() return flare13 end

	function script.QueryWeapon15() return flare14 end

	function script.QueryWeapon16() return flare15 end

	
	function script.AimFromWeapon1() return bigturret end

	function script.AimFromWeapon2() return forturret end

	function script.AimFromWeapon3() return forturret end

	function script.AimFromWeapon4() return forturret end

	function script.AimFromWeapon5() return forturret end

	function script.AimFromWeapon6() return forturret end

	function script.AimFromWeapon7() return midturret end

	function script.AimFromWeapon8() return midturret end

	function script.AimFromWeapon9() return midturret end

	function script.AimFromWeapon10() return midturret end

	function script.AimFromWeapon11() return midturret end

	function script.AimFromWeapon12() return rearturret end

	function script.AimFromWeapon13() return rearturret end

	function script.AimFromWeapon14() return rearturret end

	function script.AimFromWeapon15() return rearturret end

	function script.AimFromWeapon16() return rearturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(bigturret, y_axis, heading, math.rad(90))
        	Turn(bigbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(bigturret, y_axis)
        	WaitForTurn(bigbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel3, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel3, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel4, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel4, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(forturret, y_axis, heading, math.rad(90))
        	Turn(forbarrel5, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forturret, y_axis)
        	WaitForTurn(forbarrel5, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon9( heading, pitch )
		Signal(SIG_AIM_NIN)
		SetSignalMask(SIG_AIM_NIN)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel3, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel3, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon10( heading, pitch )
		Signal(SIG_AIM_TEN)
		SetSignalMask(SIG_AIM_TEN)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel4, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel4, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon11( heading, pitch )
		Signal(SIG_AIM_ELE)
		SetSignalMask(SIG_AIM_ELE)
        	Turn(midturret, y_axis, heading, math.rad(90))
        	Turn(midbarrel5, x_axis, -pitch, math.rad(50))
        	WaitForTurn(midturret, y_axis)
        	WaitForTurn(midbarrel5, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon12( heading, pitch )
		Signal(SIG_AIM_TWE)
		SetSignalMask(SIG_AIM_TWE)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel1, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon13( heading, pitch )
		Signal(SIG_AIM_THI)
		SetSignalMask(SIG_AIM_THI)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel2, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel2, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon14( heading, pitch )
		Signal(SIG_AIM_FOR)
		SetSignalMask(SIG_AIM_FOR)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel3, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel3, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon15( heading, pitch )
		Signal(SIG_AIM_FIF)
		SetSignalMask(SIG_AIM_FIF)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel4, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel4, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon16( heading, pitch )
		Signal(SIG_AIM_SIXT)
		SetSignalMask(SIG_AIM_SIXT)
        	Turn(rearturret, y_axis, heading, math.rad(90))
        	Turn(rearbarrel5, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearturret, y_axis)
        	WaitForTurn(rearbarrel5, x_axis)
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

	function script.FireWeapon13()
	       Sleep(30)
	end

	function script.FireWeapon14()
	       Sleep(30)
	end

	function script.FireWeapon15()
	       Sleep(30)
	end

	function script.FireWeapon16()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end