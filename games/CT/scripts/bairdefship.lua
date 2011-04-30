	-- by KR
	
	--pieces
	local hull = piece "hull"

	local lfturret = piece "lfturret"
	local lfbarrel = piece "lfbarrel"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local lmturret = piece "lmturret"
	local lmbarrel = piece "lmbarrel"

	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local lrturret = piece "lrturret"
	local lrbarrel = piece "lrbarrel"

	local flare5 = piece "flare5"
	local flare6 = piece "flare6"

	local rfturret = piece "rfturret"
	local rfbarrel = piece "rfbarrel"

	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

	local rmturret = piece "rmturret"
	local rmbarrel = piece "rmbarrel"

	local flare9 = piece "flare9"
	local flare10 = piece "flare10"

	local rrturret = piece "rrturret"
	local rrbarrel = piece "rrbarrel"

	local flare11 = piece "flare11"
	local flare12 = piece "flare12"

	local currBarrel = 1
	local currBarrel2 = 1
	local currBarrel3 = 1
	local currBarrel4 = 1
	local currBarrel5 = 1
	local currBarrel6 = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
        local ct_cannon_narrow = SFX.CEG
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(lfbarrel, x_axis, 0, math.rad(50))
        	Turn(lmbarrel, x_axis, 0, math.rad(50))
        	Turn(lrbarrel, x_axis, 0, math.rad(50))
        	Turn(rfbarrel, x_axis, 0, math.rad(50))
        	Turn(rmbarrel, x_axis, 0, math.rad(50))
        	Turn(rrbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare3
		else 
			return flare4
		end
	end

	function script.QueryWeapon3()
		if (currBarrel3 == 1) then 
			return flare5
		else 
			return flare6
		end
	end

	function script.QueryWeapon4()
		if (currBarrel4 == 1) then 
			return flare7
		else 
			return flare8
		end
	end

	function script.QueryWeapon5()
		if (currBarrel5 == 1) then 
			return flare9
		else 
			return flare10
		end
	end

	function script.QueryWeapon6()
		if (currBarrel6 == 1) then 
			return flare11
		else 
			return flare12
		end
	end
	
	function script.AimFromWeapon1() return lfturret end
	
	function script.AimFromWeapon2() return lmturret end
	
	function script.AimFromWeapon3() return lrturret end
	
	function script.AimFromWeapon4() return rfturret end
	
	function script.AimFromWeapon5() return rmturret end
	
	function script.AimFromWeapon6() return rrturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(lfturret, y_axis, heading, math.rad(90))
        	Turn(lfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lfturret, y_axis)
        	WaitForTurn(lfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
                Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(lmturret, y_axis, heading, math.rad(90))
        	Turn(lmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lmturret, y_axis)
        	WaitForTurn(lmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(lrturret, y_axis, heading, math.rad(90))
        	Turn(lrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(lrturret, y_axis)
        	WaitForTurn(lrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(rfturret, y_axis, heading, math.rad(90))
        	Turn(rfbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rfturret, y_axis)
        	WaitForTurn(rfbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(rmturret, y_axis, heading, math.rad(90))
        	Turn(rmbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rmturret, y_axis)
        	WaitForTurn(rmbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(rrturret, y_axis, heading, math.rad(90))
        	Turn(rrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rrturret, y_axis)
        	WaitForTurn(rrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_narrow)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_narrow)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		if currBarrel2 == 1 then
			EmitSfx(flare4, ct_cannon_narrow)
		end
		if currBarrel2 == 2 then
			EmitSfx(flare3, ct_cannon_narrow)
		end	
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end

	function script.FireWeapon3()
		if currBarrel3 == 1 then
			EmitSfx(flare6, ct_cannon_narrow)
		end
		if currBarrel3 == 2 then
			EmitSfx(flare5, ct_cannon_narrow)
		end
		currBarrel3 = currBarrel3 + 1
		if currBarrel3 == 3 then currBarrel3 = 1 end
	end

	function script.FireWeapon4()
		if currBarrel4 == 1 then
			EmitSfx(flare8, ct_cannon_narrow)
		end
		if currBarrel4 == 2 then
			EmitSfx(flare7, ct_cannon_narrow)
		end	
		currBarrel4 = currBarrel4 + 1
		if currBarrel4 == 3 then currBarrel4 = 1 end
	end

	function script.FireWeapon5()
		if currBarrel5 == 1 then
			EmitSfx(flare10, ct_cannon_narrow)
		end
		if currBarrel5 == 2 then
			EmitSfx(flare9, ct_cannon_narrow)
		end
		currBarrel5 = currBarrel5 + 1
		if currBarrel5 == 3 then currBarrel5 = 1 end
	end

	function script.FireWeapon6()
		if currBarrel6 == 1 then
			EmitSfx(flare12, ct_cannon_narrow)
		end
		if currBarrel6 == 2 then
			EmitSfx(flare11, ct_cannon_narrow)
		end	
		currBarrel6 = currBarrel6 + 1
		if currBarrel6 == 3 then currBarrel6 = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end