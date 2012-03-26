	--Ueda Combat Support Mech animation script by Sanada
	--Sprint code by CarRepairer
	
	--pieces
	local waist = piece "waist"

	local body = piece "body"

	local lpod = piece "lpod"
	local lpistons = piece "lpistons"
	local lrockets = piece "lrockets"
	local flare1 = piece "flare1"

	local rpod = piece "rpod"
	local rpistons = piece "rpistons"
	local rrockets = piece "rrockets"
	local flare2 = piece "flare2"

	local lthigh = piece "lthigh"
	local lshin = piece "lshin"
	local lfoot = piece "lfoot"

	local rthigh = piece "rthigh"
	local rshin = piece "rshin"
	local rfoot = piece "rfoot"


	--variables
	local speedFactor = 2
	local normalFactor = 2

	--locals
	local myOrigSpeed = UnitDefs[unitDefID].speed
	local myOrigAcc = UnitDefs[unitDefID].maxAcc
	local myOrigTurnRate = UnitDefs[unitDefID].turnRate

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local SIG_SPRINT = 8
	local SIG_SPEED_BOOST = 16
	local SIG_NORMAL_SPEED = 32


	--CEGs
	local ct_missile_smokecloud = SFX.CEG
	

	--Sprint code
	local function SprintEffects()
		Signal(SIG_SPRINT)
		SetSignalMask(SIG_SPRINT)
	end

	function StartSprint()
		Spring.Echo("Goooo!")
		Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {
        		maxSpeed    = myOrigSpeed,
        		accRate     = myOrigAcc,
        		turnRate    = myOrigTurnRate,
        	})
		StartThread(SprintEffects)
	end

	function StopSprint()
		Spring.Echo("Whoooa nessy!")
		Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {
			maxSpeed    = myOrigSpeed/normalFactor,
			accRate     = myOrigAcc/normalFactor,
			turnRate    = myOrigTurnRate/normalFactor,
    		})
    		Signal(SIG_SPRINT)
	end
	--End sprint code


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

			--left leg drop
			Move( lthigh, y_axis, 0, 10 )

			--right leg lift
			Move( rthigh, y_axis, 5, 10 )

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
	                Turn( lthigh, x_axis, -0.5, 4 )
	                Turn( lshin, x_axis, 1.5, 4 )
			Turn( lfoot, x_axis, -1, 4 )
	               
			--right leg back
	                Turn( rthigh, x_axis, 1, 4 )
	                Turn( rshin, x_axis, -1, 4 )
			Turn( rfoot, x_axis, 0.5, 4 )

			--left leg lift
			Move( lthigh, y_axis, 5, 10 )

			--right leg drop
			Move( rthigh, y_axis, 0, 10 )

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
		Turn( lthigh, x_axis, 0, 4 )
		Turn( lshin, x_axis, 0, 4 )
		Turn( lfoot, x_axis, 0, 4 )

		--right leg stop
	        Turn( rthigh, x_axis, 0, 4 )
	        Turn( rshin, x_axis, 0, 4 )
		Turn( rfoot, x_axis, 0, 4 )

		--left leg drop
		Move( lthigh, y_axis, 0, 10 )

		--right leg drop
		Move( rthigh, y_axis, 0, 10 )

		--body stop
		Turn( body, z_axis, 0, 1 )

	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(lpod, x_axis, 0, math.rad(100))
        	Turn(rpod, x_axis, 0, math.rad(100))
	end


	--script
	function script.Create()
		--set "normal" speed
		Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {
        		maxSpeed    = myOrigSpeed/normalFactor,
        		accRate     = myOrigAcc/normalFactor,
        		turnRate    = myOrigTurnRate/normalFactor,
        	})	

		--legs spread
		Turn( lthigh, y_axis, -0.2, 2 )
		Turn( rthigh, y_axis, 0.2, 2 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return lpod end

	function script.AimFromWeapon2() return rpod end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(lpod, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(lpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rpod, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, ct_missile_smokecloud)
		Hide(lrockets)
		Move(lpistons, z_axis, -4.8, 8)
		WaitForMove(lpistons, z_axis)
		Sleep(1000)
		Move(lpistons, z_axis, 0, 8)
		WaitForMove(lpistons, z_axis)
		Show(lrockets)
	end

	function script.FireWeapon2()
		EmitSfx(flare2, ct_missile_smokecloud)
		Hide(rrockets)
		Move(rpistons, z_axis, -4.8, 8)
		WaitForMove(rpistons, z_axis)
		Sleep(1000)
		Move(rpistons, z_axis, 0, 8)
		WaitForMove(rpistons, z_axis)
		Show(rrockets)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end