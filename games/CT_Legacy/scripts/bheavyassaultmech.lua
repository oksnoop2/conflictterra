	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local bturret = piece "bturret"
	local bbarrel = piece "bbarrel"
	local bflare1 = piece "bflare1"
        local bflare2 = piece "bflare2"

        local lthigh = piece "lthigh"
        local lshin = piece "lshin"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rshin = piece "rshin"
        local rfoot = piece "rfoot"

	local tturret = piece "tturret"
	local tbarrel = piece "tbarrel"
	local tflare1 = piece "tflare1"
        local tflare2 = piece "tflare2"
	local tflare3 = piece "tflare3"
        local tflare4 = piece "tflare4"
	local tflare5 = piece "tflare5"
        local tflare6 = piece "tflare6"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128
	local walk_go = 256
	local walk_stop = 512
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
        local orc_machinegun_flash_big = SFX.CEG + 2
        local orc_machinegun_muzzle_big = SFX.CEG + 3
	
	function script.Create()
	       
	end

	local function walk()
		SetSignalMask(walk_go)
		Move (waist, y_axis, 15, 10)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 2 )
	                Turn( lthigh, x_axis, 0.5, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rshin, x_axis, 1.5, 2 )
	                Turn( rthigh, x_axis, -1, 2 )
			Turn( rfoot, x_axis, 0, 2 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 1.5, 2 )
	                Turn( lthigh, x_axis, -1, 2 )
			Turn( lfoot, x_axis, 0, 2 )
	               
	                Turn( rshin, x_axis, -0.75, 2 )
	                Turn( rthigh, x_axis, 0.5, 2 )
			Turn( rfoot, x_axis, 0, 2 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( waist, y_axis, 0, 10 )

		Turn( lshin, x_axis, 0, 2 )
		Turn( lthigh, x_axis, 0, 2 )
		Turn( lfoot, x_axis, 0, 2 )
	       
	        Turn( rshin, x_axis, 0, 2 )
	        Turn( rthigh, x_axis, 0, 2 )
		Turn( rfoot, x_axis, 0, 2 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(bturret, x_axis, 0, math.rad(100))
        	Turn(tturret, x_axis, 0, math.rad(100))
	end

	function script.QueryWeapon1() return bflare1 end

	function script.QueryWeapon2() return bflare2 end

	function script.QueryWeapon3() return tflare1 end

	function script.QueryWeapon4() return tflare2 end

	function script.QueryWeapon5() return tflare3 end

	function script.QueryWeapon6() return tflare4 end

	function script.QueryWeapon7() return tflare5 end

	function script.QueryWeapon8() return tflare6 end
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end

	function script.AimFromWeapon4() return body end

	function script.AimFromWeapon5() return body end

	function script.AimFromWeapon6() return body end

	function script.AimFromWeapon7() return body end

	function script.AimFromWeapon8() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(bturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(bturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(bturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(bturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(bflare1, orc_machinegun_flash_big)
	EmitSfx(bflare1, orc_machinegun_muzzle_big)	 
	       Sleep(30)
               StartThread(recoil)
               Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(bflare2, orc_machinegun_flash_big)
	EmitSfx(bflare2, orc_machinegun_muzzle_big)	       	       
	Sleep(30)
	end
	
	function script.FireWeapon3()
	EmitSfx(tflare1, orc_machinegun_flash)
	EmitSfx(tflare1, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

		
	function script.FireWeapon4()
	EmitSfx(tflare2, orc_machinegun_flash)
	EmitSfx(tflare2, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

		
	function script.FireWeapon5()
	EmitSfx(tflare3, orc_machinegun_flash)
	EmitSfx(tflare3, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

		
	function script.FireWeapon6()
	EmitSfx(tflare4, orc_machinegun_flash)
	EmitSfx(tflare4, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end
		
	function script.FireWeapon7()
	EmitSfx(tflare5, orc_machinegun_flash)
	EmitSfx(tflare5, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

	function script.FireWeapon8()
	EmitSfx(tflare6, orc_machinegun_flash)
	EmitSfx(tflare6, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end

        function recoil()
               Move (bbarrel, z_axis, -12, 400)
               WaitForMove (bbarrel, z_axis)
               Move (bbarrel, z_axis, 0, 20)
        end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end