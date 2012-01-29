	--Hashiba Scout Mech animation script by Sanada
	
	--pieces
	local waist = piece "waist"

	local body = piece "body"
	local camera = piece "camera"
	local nano = piece "nano"

	local lthigh = piece "leftthigh"
	local lshin = piece "leftshin"
	local lfoot = piece "leftfoot"

	local rthigh = piece "rightthigh"
	local rshin = piece "rightshin"
	local rfoot = piece "rightfoot"


	--signals
	local SIG_AIM = 1
	local SIG_BUILD = 2
	local walk_go = 4


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

	local function camera_spins()
		while (true) do
			Turn( camera, z_axis, 1, 1 )
			WaitForTurn( camera, z_axis )
			Sleep(1000)
			Move( camera, z_axis, -2, 5 )
			WaitForMove( camera, z_axis )
			Sleep(1000)
			Turn( camera, z_axis, -1, 1 )
			WaitForTurn( camera, z_axis )
			Sleep(1000)
			Move( camera, z_axis, 0, 5 )
			WaitForMove( camera, z_axis )
			Sleep(1000)
			Turn( camera, z_axis, 0, 1 )
			WaitForTurn( camera, z_axis )
			Sleep(1000)
		end
	end


	--script
	function script.Create(unitID)
		StartThread(camera_spins)

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

	function script.QueryNanoPiece() return nano end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
        	Turn(body, y_axis, heading, math.rad(160))
        	WaitForTurn(body, y_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(body, y_axis, 0, math.rad(160))
		WaitForTurn(body, y_axis)
		Sleep(1)
		return 0
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end