	--Warrior Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local body = piece "body"

	local barrel = piece "barrel"
	local flare1 = piece "flare1"

	local lbthigh = piece "lbthigh"
	local lbshin = piece "lbshin"
	local lbfoot = piece "lbfoot"

	local rbthigh = piece "rbthigh"
	local rbshin = piece "rbshin"
	local rbfoot = piece "rbfoot"

	local flare2  = piece "flare2"

	local lfthigh = piece "lfthigh"
	local lfshin = piece "lfshin"
	local lffoot = piece "lffoot"

	local rfthigh = piece "rfthigh"
	local rfshin = piece "rfshin"
	local rffoot = piece "rffoot"


	--signals
	local SIG_AIM = 1
	local walk_go = 2


	--local functions
	local function Walk()
	        SetSignalMask( walk_go )
		Turn( rfthigh, x_axis, -0.25, 2 )
		Turn( lbthigh, x_axis, -0.15, 2 )

		WaitForTurn( rfthigh, x_axis )
		WaitForTurn( lbthigh, x_axis )
                Sleep(1)

	        while ( true ) do
			Turn( lfthigh, x_axis, -0.25, 2)
			Turn( rbthigh, x_axis, -0.15, 2)

			Turn (rfthigh, x_axis, 0.15, 2)
			Turn (lbthigh, x_axis, 0.25, 2)

			WaitForTurn( lfthigh, x_axis )
			WaitForTurn( rbthigh, x_axis )

			WaitForTurn( rfthigh, x_axis )
			WaitForTurn( lbthigh, x_axis )
			Sleep(1)

			Turn( lfthigh, x_axis, 0.15, 2)
			Turn( rbthigh, x_axis, 0.25, 2)

			Turn (rfthigh, x_axis, -0.25, 2)
			Turn (lbthigh, x_axis, -0.15, 2)

			WaitForTurn( lfthigh, x_axis )
			WaitForTurn( rbthigh, x_axis )

			WaitForTurn( rfthigh, x_axis )
			WaitForTurn( lbthigh, x_axis )
			Sleep(1)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
			Turn( lfthigh, x_axis, 0, 2)
			Turn( rbthigh, x_axis, 0, 2)

			Turn (rfthigh, x_axis, 0, 2)
			Turn (lbthigh, x_axis, 0, 2)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(barrel, y_axis, 0, math.rad(150))
		Turn(barrel, x_axis, 0, math.rad(150))
	end


	--script
	function script.Create(unitID)
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end
	
	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(barrel, y_axis, heading, math.rad(150))
        	Turn(barrel, x_axis, -pitch, math.rad(100))
        	WaitForTurn(barrel, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0

	end