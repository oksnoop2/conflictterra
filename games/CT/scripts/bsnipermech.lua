	--Saiga Combat Support Mech animation script by Sanada
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"

        local lthigh = piece "lthigh"
        local lshin = piece "lshin"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rshin = piece "rshin"
        local rfoot = piece "rfoot"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4


	--CEGs
	local ct_cannon_artillery = SFX.CEG
	local ct_cannon_artillery_side = SFX.CEG + 1	
	

	--local functions
	local function walk()
		SetSignalMask(walk_go)
		while (true) do

			--left leg backward
	                Turn( lthigh, x_axis, 1, 4 )
	                Turn( lshin, x_axis, -1, 4 )
			Turn( lfoot, x_axis, 0.5, 4 )
	               
			--right leg forward
	                Turn( rthigh, x_axis, -0.5, 4 )
	                Turn( rshin, x_axis, 1.5, 4 )
			Turn( rfoot, x_axis, -1, 4 )

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

			--body wait
			WaitForTurn( body, z_axis )
	                Sleep(1)

			--cycle
	               
			--left leg forward
	                Turn( lthigh, x_axis, -0.5, 4 )
	                Turn( lshin, x_axis, 1.5, 4 )
			Turn( lfoot, x_axis, -1, 4 )
	               
			--right leg back
	                Turn( rthigh, x_axis, 1, 4 )
	                Turn( rshin, x_axis, -1, 4 )
			Turn( rfoot, x_axis, 0.5, 4 )

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

			--body wait
			WaitForTurn( body, z_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)

		--left leg stop
		Turn( lthigh, x_axis, 0, 4 )
		Turn( lshin, x_axis, 0, 4 )
		Turn( lfoot, x_axis, 0, 4 )

		--right leg stop
	        Turn( rthigh, x_axis, 0, 4 )
	        Turn( rshin, x_axis, 0, 4 )
		Turn( rfoot, x_axis, 0, 4 )

		--body stop
		Turn( body, z_axis, 0, 1 )

	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(barrel, x_axis, 0, math.rad(100))
	end


	--script
	function script.Create()
		--legs spread
		Turn( lthigh, y_axis, -0.2, 2 )
		Turn( rthigh, y_axis, 0.2, 2 )

		--muzzle flares positioning
	       	Turn(fxflare1, y_axis, -1.5, 10)
		Turn(fxflare2, y_axis, 1.5, 10)
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	function script.QueryWeapon1() return flare1 end

	
	function script.AimFromWeapon1() return body end

	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(barrel, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, ct_cannon_artillery)	     
		EmitSfx(fxflare1, ct_cannon_artillery_side)	
		EmitSfx(fxflare2, ct_cannon_artillery_side)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end