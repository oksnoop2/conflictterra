	--Ume Type Vehicle animation script by Sanada
	
	--pieces
	local center = piece "center"
	
	local body = piece "body"
	
	local turret = piece "turret"
	local bigbarrel = piece "bigbarrel"
	local midbarrel = piece "midbarrel"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	
	local lfrontwheel = piece "lfrontwheel"
	local lmidwheel = piece "lmidwheel"
	local lrearwheel = piece "lrearwheel"
	
	local rfrontwheel = piece "rfrontwheel"
	local rmidwheel = piece "rmidwheel"
	local rrearwheel = piece "rrearwheel"
	
	
	--signals
	local SIG_AIM = 1
	
	
	--CEGs
	local ct_cannon_artillery = SFX.CEG
	local ct_cannon_artillery_side = SFX.CEG + 1	

	
	--local functions
	local function walk()
		Spin( rrearwheel, x_axis, 5 )
		Spin( lrearwheel, x_axis, 5 )
		Spin( rmidwheel, x_axis, 5 )
		Spin( lmidwheel, x_axis, 5 )
		Spin( rfrontwheel, x_axis, 5 )
		Spin( lfrontwheel, x_axis, 5 )		
	end

	local function stop_walk()
		StopSpin( rrearwheel, x_axis, 5 )
		StopSpin( lrearwheel, x_axis, 5 )
		StopSpin( rmidwheel, x_axis, 5 )
		StopSpin( lmidwheel, x_axis, 5 )
		StopSpin( rfrontwheel, x_axis, 5 )
		StopSpin( lfrontwheel, x_axis, 5 )	
	end	
	
	local function recoil()
		Move(midbarrel, z_axis, -3.5, 50)
		Move(barrel, z_axis, -10, 50)
		
		WaitForMove(midbarrel, z_axis)
		WaitForMove(barrel, z_axis)
		
		Move(midbarrel, z_axis, 0, 10)
		Move(barrel, z_axis, 0, 10)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(turret, y_axis, 0, math.rad(90))
		Turn(bigbarrel, x_axis, 0, math.rad(50))
	end	
	
	
	--script
	function script.Create()
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
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(turret, y_axis, heading, math.rad(90))
		Turn(bigbarrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(turret, y_axis)
		WaitForTurn(bigbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		StartThread(recoil)
		EmitSfx(flare1, ct_cannon_artillery)	     
		EmitSfx(fxflare1, ct_cannon_artillery_side)	
		EmitSfx(fxflare2, ct_cannon_artillery_side)	  
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end