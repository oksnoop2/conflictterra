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

	local currBarrel = 1
	local currBarrel2 = 1
	local currBarrel3 = 1


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
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

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return bflare1
		else 
			return bflare2
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return tflare1
		end
		if (currBarrel2 == 2) then 
			return tflare2
		else 
			return tflare3
		end
	end

	function script.QueryWeapon3()
		if (currBarrel3 == 1) then 
			return tflare4
		end
		if (currBarrel3 == 2) then 
			return tflare5
		else 
			return tflare6
		end
	end
	
	function script.AimFromWeapon1() return body end

	function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end
	
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
        	Turn(tturret, x_axis, -pitch, math.rad(100))
        	WaitForTurn(waist, y_axis)
        	WaitForTurn(tturret, x_axis)
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
	
	function script.FireWeapon1()
	EmitSfx(bflare1, orc_machinegun_flash_big)
	EmitSfx(bflare1, orc_machinegun_muzzle_big)	 
	       Sleep(30)
               StartThread(recoil)
               Sleep(30)
	end

	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(bflare2, orc_machinegun_flash_big)
			EmitSfx(bflare2, orc_machinegun_muzzle_big)	
		end
		if currBarrel == 2 then
			EmitSfx(bflare1, orc_machinegun_flash_big)
			EmitSfx(bflare1, orc_machinegun_muzzle_big)	
		end
		StartThread(recoil)
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		if currBarrel2 == 1 then
			EmitSfx(tflare3, orc_machinegun_flash)
			EmitSfx(tflare3, orc_machinegun_muzzle)	
		end
		if currBarrel2 == 2 then
			EmitSfx(tflare2, orc_machinegun_flash)
			EmitSfx(tflare2, orc_machinegun_muzzle)	
		end
		if currBarrel2 == 3 then
			EmitSfx(tflare1, orc_machinegun_flash)
			EmitSfx(tflare1, orc_machinegun_muzzle)	
		end	
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 3 end
		if currBarrel2 == 4 then currBarrel2 = 1 end
	end

	function script.FireWeapon3()
		if currBarrel3 == 1 then
			EmitSfx(tflare6, orc_machinegun_flash)
			EmitSfx(tflare6, orc_machinegun_muzzle)	
		end
		if currBarrel3 == 2 then
			EmitSfx(tflare5, orc_machinegun_flash)
			EmitSfx(tflare5, orc_machinegun_muzzle)	
		end
		if currBarrel3 == 3 then
			EmitSfx(tflare4, orc_machinegun_flash)
			EmitSfx(tflare4, orc_machinegun_muzzle)	
		end	
		currBarrel3 = currBarrel3 + 1
		if currBarrel3 == 2 then currBarrel3 = 2 end
		if currBarrel3 == 3 then currBarrel3 = 3 end
		if currBarrel3 == 4 then currBarrel3 = 1 end
	end

        function recoil()
               Move (bbarrel, z_axis, -12, 400)
               WaitForMove (bbarrel, z_axis)
               Move (bbarrel, z_axis, 0, 20)
        end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end