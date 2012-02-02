	--Izanagi Assault Mech animation script by Sanada
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local bturret = piece "bturret"
	local bbarrel = piece "bbarrel"
	local bflare1 = piece "bflare1"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
        local bflare2 = piece "bflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

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


	--variables
	local currBarrel = 1
	local currBarrel2 = 1
	local currBarrel3 = 1


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local walk_go = 8


	--CEGs
        local ct_cannon_tank = SFX.CEG
	local ct_cannon_artillery = SFX.CEG + 1
	local ct_cannon_artillery_side = SFX.CEG + 2	
	

	--local functions
	local function walk()
		SetSignalMask(walk_go)
		--Move (waist, y_axis, 15, 10)
		while (true) do

			--left leg backward
	                Turn( lthigh, x_axis, 1, 3 )
	                Turn( lshin, x_axis, -1, 3 )
			Turn( lfoot, x_axis, 0.5, 3 )
	               
			--right leg forward
	                Turn( rthigh, x_axis, -0.5, 3 )
	                Turn( rshin, x_axis, 1.5, 3 )
			Turn( rfoot, x_axis, -0.5, 3 )

			--left leg drop
			Move( lthigh, y_axis, 0, 15 )

			--right leg lift
			Move( rthigh, y_axis, 10, 15 )

			--body turn
			Turn( body, z_axis, -0.05, 1 )
	               
			--left leg wait
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lfoot, x_axis )

			--right leg wait
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rfoot, x_axis )

			--left leg drop wait
			WaitForMove( lthigh, y_axis )

			--right leg lift wait
			WaitForMove( rthigh, y_axis )

			--body wait
			WaitForTurn( body, z_axis )
	                Sleep(1)

			--cycle
	               
			--left leg forward
	                Turn( lthigh, x_axis, -0.5, 3 )
	                Turn( lshin, x_axis, 1.5, 3 )
			Turn( lfoot, x_axis, -0.5, 3 )
	               
			--right leg back
	                Turn( rthigh, x_axis, 1, 3 )
	                Turn( rshin, x_axis, -1, 3 )
			Turn( rfoot, x_axis, 0.5, 3 )

			--left leg lift
			Move( lthigh, y_axis, 10, 15 )

			--right leg drop
			Move( rthigh, y_axis, 0, 15 )

			--body turn
			Turn( body, z_axis, 0.05, 1 )

			--left leg wait
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lfoot, x_axis )

			--right leg wait
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rfoot, x_axis )

			--left leg lift wait
			WaitForMove( lthigh, y_axis )

			--right leg drop wait
			WaitForMove( rthigh, y_axis )

			--body wait
			WaitForTurn( body, z_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)

		--left leg stop
		Turn( lthigh, x_axis, 0, 3 )
		Turn( lshin, x_axis, 0, 3 )
		Turn( lfoot, x_axis, 0, 3 )

		--right leg stop
	        Turn( rthigh, x_axis, 0, 3 )
	        Turn( rshin, x_axis, 0, 3 )
		Turn( rfoot, x_axis, 0, 3 )

		--left leg drop
		Move( lthigh, y_axis, 0, 15 )

		--right leg drop
		Move( rthigh, y_axis, 0, 15 )

		--body stop
		Turn( body, z_axis, 0, 1 )

	end

        local function recoil()
               Move (bbarrel, z_axis, -12, 400)
               WaitForMove (bbarrel, z_axis)
               Move (bbarrel, z_axis, 0, 20)
        end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(bturret, x_axis, 0, math.rad(100))
        	Turn(tturret, x_axis, 0, math.rad(100))
	end


	--script
	function script.Create()
		--legs spread
		Turn( lthigh, y_axis, -0.2, 2 )
		Turn( rthigh, y_axis, 0.2, 2 )

		--muzzle flares positioning
		Turn(fxflare1, y_axis, -1.5, 10)
		Turn(fxflare2, y_axis, 1.5, 10)
		Turn(fxflare3, y_axis, -1.5, 10)
		Turn(fxflare4, y_axis, 1.5, 10)
	end

	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
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

	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(bflare2, ct_cannon_artillery)
			EmitSfx(fxflare3, ct_cannon_artillery_side)	
			EmitSfx(fxflare4, ct_cannon_artillery_side)
		end
		if currBarrel == 2 then
			EmitSfx(bflare1, ct_cannon_artillery)
			EmitSfx(fxflare1, ct_cannon_artillery_side)	
			EmitSfx(fxflare2, ct_cannon_artillery_side)
		StartThread(recoil)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		if currBarrel2 == 1 then
			EmitSfx(tflare3, ct_cannon_tank)
		end
		if currBarrel2 == 2 then
			EmitSfx(tflare2, ct_cannon_tank)
		end
		if currBarrel2 == 3 then
			EmitSfx(tflare1, ct_cannon_tank)
		end	
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 3 end
		if currBarrel2 == 4 then currBarrel2 = 1 end
	end

	function script.FireWeapon3()
		if currBarrel3 == 1 then
			EmitSfx(tflare6, ct_cannon_tank)
		end
		if currBarrel3 == 2 then
			EmitSfx(tflare5, ct_cannon_tank)
		end
		if currBarrel3 == 3 then
			EmitSfx(tflare4, ct_cannon_tank)
		end	
		currBarrel3 = currBarrel3 + 1
		if currBarrel3 == 2 then currBarrel3 = 2 end
		if currBarrel3 == 3 then currBarrel3 = 3 end
		if currBarrel3 == 4 then currBarrel3 = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end