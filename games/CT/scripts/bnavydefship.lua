	-- by KR
	
	--pieces
	local body = piece "body"
	local fbarrel1 = piece "fbarrel1"
	local flare1 = piece "flare1"
	local fbarrel2 = piece "fbarrel2"
	local flare2 = piece "flare2"

	local lbarrel1 = piece "lbarrel1"
	local flare3 = piece "flare3"
	local lbarrel2 = piece "lbarrel2"
	local flare4 = piece "flare4"

	local rbarrel1 = piece "rbarrel1"
	local flare5 = piece "flare5"
	local rbarrel2 = piece "rbarrel2"
	local flare6 = piece "flare6"

	local bbarrel1 = piece "bbarrel1"
	local flare7 = piece "flare7"
	local bbarrel2 = piece "bbarrel2"
	local flare8 = piece "flare8"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128
	
	function script.Create()
	       
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return fbarrel1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon2() return fbarrel2 end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon3() return lbarrel1 end

	function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon4() return lbarrel2 end

	function script.QueryWeapon5() return flare5 end
	
	function script.AimFromWeapon5() return rbarrel1 end

	function script.QueryWeapon6() return flare6 end
	
	function script.AimFromWeapon6() return rbarrel2 end

	function script.QueryWeapon7() return flare7 end
	
	function script.AimFromWeapon7() return bbarrel1 end

	function script.QueryWeapon8() return flare8 end
	
	function script.AimFromWeapon8() return bbarrel2 end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(fbarrel1, y_axis, heading, math.rad(90))
        	WaitForTurn(fbarrel1, y_axis)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(fbarrel2, y_axis, heading, math.rad(90))
        	WaitForTurn(fbarrel2, y_axis)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(lbarrel1, y_axis, heading, math.rad(90))
        	WaitForTurn(lbarrel1, y_axis)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(lbarrel2, y_axis, heading, math.rad(90))
        	WaitForTurn(lbarrel2, y_axis)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(rbarrel1, y_axis, heading, math.rad(90))
        	WaitForTurn(rbarrel1, y_axis)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(rbarrel2, y_axis, heading, math.rad(90))
        	WaitForTurn(rbarrel2, y_axis)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(bbarrel1, y_axis, heading, math.rad(90))
        	WaitForTurn(bbarrel1, y_axis)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(bbarrel2, y_axis, heading, math.rad(90))
        	WaitForTurn(bbarrel2, y_axis)
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
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end