	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local larm = piece "larm"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local lpod = piece "lpod"
	local flare1 = piece "flare1"

	local rarm = piece "rarm"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local rpod = piece "rpod"
	local flare2 = piece "flare2"

        local leftthigh = piece "lthigh"
        local leftshin = piece "lshin"
        local leftfoot = piece "lfoot"

	local llpod = piece "llpod"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

        local rightthigh = piece "rthigh"
        local rightshin = piece "rshin"
        local rightfoot = piece "rfoot"

	local rlpod = piece "rlpod"
	local flare9 = piece "flare9"
	local flare10 = piece "flare10"


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
	local walk_go = 1028
	local walk_stop = 2056
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		while (true) do
	                Turn( leftshin, x_axis, 0.5, 2 )
	                Turn( leftthigh, x_axis, 0.5, 2 )
	                Turn( leftfoot, x_axis, 0.5, 2 )
	               
	                Turn( rightshin, x_axis, 1, 2 )
	                Turn( rightthigh, x_axis, -1, 2 )
	                Turn( rightfoot, x_axis, 0, 2 )

	                Turn( larm, x_axis, -0.5, 2 )
	               
	                Turn( rarm, x_axis, 0.5, 2 )
	               
	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( larm, x_axis )
	                WaitForTurn( rarm, x_axis )
	                Sleep(1)
	               
	                Turn( leftshin, x_axis, 1, 2 )
	                Turn( leftthigh, x_axis, -1, 2 )
	                Turn( leftfoot, x_axis, 0, 2 )
	               
	                Turn( rightshin, x_axis, 0.5, 2 )
	                Turn( rightthigh, x_axis, 0.5, 2 )
	                Turn( rightfoot, x_axis, 0.5, 2 )

	                Turn( larm, x_axis, 0.5, 2 )
	               
	                Turn( rarm, x_axis, -0.5, 2 )

	                WaitForTurn( leftshin, x_axis )
	                WaitForTurn( leftthigh, x_axis )
	                WaitForTurn( leftfoot, x_axis )
	                WaitForTurn( rightshin, x_axis )
	                WaitForTurn( rightthigh, x_axis )
	                WaitForTurn( rightfoot, x_axis )

	                WaitForTurn( larm, x_axis )
	                WaitForTurn( rarm, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Turn( leftshin, x_axis, 0, 2 )
		Turn( leftthigh, x_axis, 0, 2 )
		Turn( leftfoot, x_axis, 0, 2)
	       
	        Turn( rightshin, x_axis, 0, 2 )
	        Turn( rightthigh, x_axis, 0, 2 )
		Turn( rightfoot, x_axis, 0, 2)

		Turn( lpod, x_axis, 0, 2 )
		Turn( larm, x_axis, 0, 2 )
	       
	        Turn( rpod, x_axis, 0, 2 )
	        Turn( rarm, x_axis, 0, 2 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(lpod, x_axis, 0, math.rad(50))
        	Turn(rpod, x_axis, 0, math.rad(50))
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
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end

	function script.AimFromWeapon4() return body end

	function script.AimFromWeapon5() return body end

	function script.AimFromWeapon6() return body end

	function script.AimFromWeapon7() return body end

	function script.AimFromWeapon8() return body end

	function script.AimFromWeapon9() return body end

	function script.AimFromWeapon10() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(lpod, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(lpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(rpod, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
                Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
                Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
		return true
	end

	function script.AimWeapon9( heading, pitch )
                Signal(SIG_AIM_NIN)
		SetSignalMask(SIG_AIM_NIN)
		return true
	end

	function script.AimWeapon10( heading, pitch )
		Signal(SIG_AIM_TEN)
		SetSignalMask(SIG_AIM_TEN)
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
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end