	--Yumi Type Jeep animation script by Sanada
	
	--pieces
	local center = piece "center"
	
	local body = piece "body"
	
	local laserturret = piece "laserturret"
	local laserbarrel = piece "laserbarrel"
	local flare1 = piece "flare1"
	
	local missileturret = piece "missileturret"
	local missilebarrel = piece "missilebarrel"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	
	local rbackwheel = piece "rbackwheel"
	local lbackwheel = piece "lbackwheel"
	
	local suspension = piece "suspension"
	local lfrontwheel = piece "lfrontwheel"
	local rfrontwheel = piece "rfrontwheel"

	
	--variables
	local currBarrel = 1

	
	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	
	
	--CEGs
	local ct_missile_smokecloud = SFX.CEG
	
	
	--local functions
	local function walk()
		Spin( rbackwheel, x_axis, 5 )
		Spin( lbackwheel, x_axis, 5 )
		Spin( rfrontwheel, x_axis, 5 )
		Spin( lfrontwheel, x_axis, 5 )		
	end

	local function stop_walk()
		StopSpin( rbackwheel, x_axis, 5 )
		StopSpin( lbackwheel, x_axis, 5 )
		StopSpin( rfrontwheel, x_axis, 5 )
		StopSpin( lfrontwheel, x_axis, 5 )	
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(laserturret, y_axis, 0, math.rad(60))
		Turn(laserbarrel, x_axis, 0, math.rad(60))
	end

	local function RestoreAfterDelay2(unitID)
		Sleep(1000)
		Turn(missileturret, y_axis, 0, math.rad(60))
		Turn(missilebarrel, x_axis, 0, math.rad(60))
	end	
	
	
	--script
	function script.Create()
		Turn(fxflare2, y_axis, 3)
		Turn(fxflare3, y_axis, 3)
		Turn(fxflare4, y_axis, 3)
		Turn(fxflare5, y_axis, 3)
	end

	function script.StartMoving()
		StartThread(walk)
	end
	
	function script.StopMoving()
		StartThread(stop_walk)
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.QueryWeapon2()
		if (currBarrel == 1) then 
			return flare2
		end
		if (currBarrel == 2) then 
			return flare3
		end
		if (currBarrel == 3) then 
			return flare4
		else 
			return flare5
		end
	end	
	
	function script.AimFromWeapon1() return laserturret end

	function script.AimFromWeapon2() return missileturret end	
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(laserturret, y_axis, heading, math.rad(200))
		Turn(laserbarrel, x_axis, -pitch, math.rad(150))
		WaitForTurn(laserturret, y_axis)
		WaitForTurn(laserbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
		Turn(missileturret, y_axis, heading, math.rad(200))
		Turn(missilebarrel, x_axis, -pitch, math.rad(150))
		WaitForTurn(missileturret, y_axis)
		WaitForTurn(missilebarrel, x_axis)
		StartThread(RestoreAfterDelay2)
		return true
	end	
	
	function script.FireWeapon1()
	end
	
	function script.FireWeapon2()
		if currBarrel == 1 then
			EmitSfx(fxflare3, ct_missile_smokecloud)
		end
		if currBarrel == 2 then
			EmitSfx(fxflare4, ct_missile_smokecloud)
		end
		if currBarrel == 3 then
			EmitSfx(fxflare5, ct_missile_smokecloud)
		end
		if currBarrel == 4 then
			EmitSfx(fxflare2, ct_missile_smokecloud)
		end		
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end		
		if currBarrel == 5 then currBarrel = 1 end
	end	
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end