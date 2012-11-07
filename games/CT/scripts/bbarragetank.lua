	--Okuma Type Tank animation script by Sanada
	
	--pieces
	local body = piece "body"
	
	local turret = piece "turret"
	local barrel = piece "barrel"
	local lchamber = piece "lchamber"
	local rchamber = piece "rchamber"
	
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	
	local lwheel1 = piece "lwheel1"
	local lwheel2 = piece "lwheel2"
	local lwheel3 = piece "lwheel3"
	local lwheel4 = piece "lwheel4"
	
	local rwheel1 = piece "rwheel1"
	local rwheel2 = piece "rwheel2"
	local rwheel3 = piece "rwheel3"
	local rwheel4 = piece "rwheel4"	

	--variables
	local currBarrel = 1
	
	
	--signals
	local SIG_AIM = 1
	
	
	--CEGs
	local ct_missile_smokecloud = SFX.CEG
	
	
	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(turret, y_axis, 0, math.rad(90))
		Turn(barrel, x_axis, 0, math.rad(50))
		StopSpin(lchamber, z_axis, 5)
		StopSpin(rchamber, z_axis, 5)
	end
	
	local function walk()
		Spin( lwheel1, x_axis, 5 )
		Spin( lwheel2, x_axis, 5 )
		Spin( lwheel3, x_axis, 5 )
		Spin( lwheel4, x_axis, 5 )
		
		Spin( rwheel1, x_axis, 5 )
		Spin( rwheel2, x_axis, 5 )
		Spin( rwheel3, x_axis, 5 )
		Spin( rwheel4, x_axis, 5 )
		
	end

	local function stop_walk()
		StopSpin( lwheel1, x_axis, 5 )
		StopSpin( lwheel2, x_axis, 5 )
		StopSpin( lwheel3, x_axis, 5 )
		StopSpin( lwheel4, x_axis, 5 )
		
		StopSpin( rwheel1, x_axis, 5 )
		StopSpin( rwheel2, x_axis, 5 )
		StopSpin( rwheel3, x_axis, 5 )
		StopSpin( rwheel4, x_axis, 5 )
	end	
	
	
	--script
	function script.Create()
		Turn(fxflare1, y_axis, 3)
		Turn(fxflare2, y_axis, 3)
	end
	
	function script.StartMoving()
		StartThread(walk)
	end
	
	function script.StopMoving()
		StartThread(stop_walk)
	end	
	
	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return barrel end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Spin(lchamber, z_axis, 5)
		Spin(rchamber, z_axis, 5)
		Turn(turret, y_axis, heading, math.rad(90))
		Turn(barrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(turret, y_axis)
		WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(fxflare2, ct_missile_smokecloud)
		end
		if currBarrel == 2 then
			EmitSfx(fxflare1, ct_missile_smokecloud)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end