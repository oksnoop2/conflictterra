	--Ieyasu Class Cruiser animation script by Sanada

	--pieces
	local body = piece "body"
	
	local lbottombase = piece "lbottombase"
	local lbottomcone = piece "lbottomcone"
	local lfrontfoot = piece "lfrontfoot"
	local lfrontstrut1 = piece "lfrontstrut1"
	local lfrontstrut2 = piece "lfrontstrut2"
	local fxflare6 = piece "fxflare6"
	
	local lbottomturret = piece "lbottomturret"
	local lbottombarrel = piece "lbottombarrel"
	local flare3 = piece "flare3"
	
	local lbottomwing = piece "lbottomwing"
	
	local lrearfoot = piece "lrearfoot"
	
	local ltopbase = piece "ltopbase"
	local ltopcone = piece "ltopcone"
	
	local ltopturret = piece "ltopturret"
	local ltopbarrel = piece "ltopbarrel"
	local flare2 = piece "flare2"
	
	local ltopwing = piece "ltopwing"

	local maingun = piece "maingun"
	local flare1 = piece "flare1"
	
	local rbottombase = piece "rbottombase"
	local rbottomcone = piece "rbottomcone"
	local rfrontfoot = piece "rfrontfoot"
	local rfrontstrut1 = piece "rfrontstrut1"
	local rfrontstrut2 = piece "rfrontstrut2"
	local fxflare7 = piece "fxflare7"
	
	local rbottomturret = piece "rbottomturret"
	local rbottombarrel = piece "rbottombarrel"
	local flare5 = piece "flare5"
	
	local rbottomwing = piece "rbottomwing"
	
	local rrearfoot = piece "rrearfoot"
	
	local rtopbase = piece "rtopbase"
	local rtopcone = piece "rtopcone"
	
	local rtopturret = piece "rtopturret"
	local rtopbarrel = piece "rtopbarrel"
	local flare4 = piece "flare4"
	
	local rtopwing = piece "rtopwing"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	
	local fxflaredamage1 = piece "fxflaredamage1"
	local fxflaredamage2 = piece "fxflaredamage2"
	local fxflaredamage3 = piece "fxflaredamage3"
	
	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	local SIG_AIM_3 = 4
	local SIG_AIM_4 = 8
	local SIG_AIM_4 = 16
	
	--CEGs
	local ct_damage_fire = SFX.CEG

	
	--local functions
	local function RestoreAfterDelayMainGun(unitID)
		Sleep(4000)
		--Base Move Back
		Move(ltopbase, z_axis, 0, 5)
		Move(lbottombase, z_axis, 0, 5)
		Move(rtopbase, z_axis, 0, 5)
		Move(rbottombase, z_axis, 0, 5)
		--Cone Move Forward
		Move(ltopcone, y_axis, 0, 10)
		Move(lbottomcone, y_axis, 0, 10)
		Move(rtopcone, y_axis, 0, 10)
		Move(rbottomcone, y_axis, 0, 10)
		
		Move(ltopcone, x_axis, 0, 10)
		Move(lbottomcone, x_axis, 0, 10)
		Move(rtopcone, x_axis, 0, 10)
		Move(rbottomcone, x_axis, 0, 10)
		
		Move(ltopcone, z_axis, 0, 5)
		Move(lbottomcone, z_axis, 0, 5)
		Move(rtopcone, z_axis, 0, 5)
		Move(rbottomcone, z_axis, 0, 5)
		
		Turn(maingun, y_axis, 0, math.rad(90))
		Turn(maingun, x_axis, 0, math.rad(60))
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(ltopturret, y_axis, 0, math.rad(90))
		Turn(ltopbarrel, x_axis, 0, math.rad(60))
		Turn(lbottomturret, y_axis, 0, math.rad(90))
		Turn(lbottombarrel, x_axis, 0, math.rad(60))
		Turn(rtopturret, y_axis, 0, math.rad(90))
		Turn(rtopbarrel, x_axis, 0, math.rad(60))
		Turn(rbottomturret, y_axis, 0, math.rad(90))
		Turn(rbottombarrel, x_axis, 0, math.rad(60))
	end
	
	local function DamagedSmoke()
		while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
			Sleep(1000)
		end
		while true do
			local health = GetUnitValue(COB.HEALTH)
			if (health <= 75) then
				EmitSfx(fxflaredamage1, ct_damage_fire)
			end
			if (health <= 50) then
				EmitSfx(fxflaredamage2, ct_damage_fire)
			end
			if (health <= 25) then
				EmitSfx(fxflaredamage3, ct_damage_fire)
			end
			Sleep(100)
		end
	end
	
	
	--script
	function script.Create(unitID)
		StartThread(DamagedSmoke)
	end
	
	function script.Activate()
		--Wings Extend
		Move(ltopwing, x_axis, 8, 8)
		Move(rtopwing, x_axis, -8, 8)
		
		Move(lbottomwing, x_axis, 8, 8)
		Move(rbottomwing, x_axis, -8, 8)
		
		Move(ltopwing, y_axis, 8, 8)
		Move(rtopwing, y_axis, 8, 8)
		
		Move(lbottomwing, y_axis, -8, 8)
		Move(rbottomwing, y_axis, -8, 8)
		
		--Landing Gear retract
		Move(lrearfoot, y_axis, 0, 8)
		Move(rrearfoot, y_axis, 0, 8)
		
		Move(lfrontfoot, y_axis, 0, 10)
		Move(rfrontfoot, y_axis, 0, 10)
		
		Turn(lfrontfoot, x_axis, 0, 0.3)
		Turn(rfrontfoot, x_axis, 0, 0.3)
		
		Turn(lfrontstrut1, x_axis, 0, 0.3)
		Turn(lfrontstrut2, x_axis, 0, 0.3)
		Turn(rfrontstrut1, x_axis, 0, 0.3)
		Turn(rfrontstrut2, x_axis, 0, 0.3)
	end
	
	function script.Deactivate()
		--Wings Retract
		Move(ltopwing, x_axis, 0, 8)
		Move(rtopwing, x_axis, 0, 8)
		
		Move(lbottomwing, x_axis, 0, 8)
		Move(rbottomwing, x_axis, 0, 8)
		
		Move(ltopwing, y_axis, 0, 8)
		Move(rtopwing, y_axis, 0, 8)
		
		Move(lbottomwing, y_axis, 0, 8)
		Move(rbottomwing, y_axis, 0, 8)
		
		--Landing Gear extend
		Move(lrearfoot, y_axis, -8, 8)
		Move(rrearfoot, y_axis, -8, 8)
		
		Move(lfrontfoot, y_axis, -10, 10)
		Move(rfrontfoot, y_axis, -10, 10)
		
		Turn(lfrontfoot, x_axis, 0.3, 0.3)
		Turn(rfrontfoot, x_axis, 0.3, 0.3)
		
		Turn(lfrontstrut1, x_axis, -0.3, 0.3)
		Turn(lfrontstrut2, x_axis, -0.3, 0.3)
		Turn(rfrontstrut1, x_axis, -0.3, 0.3)
		Turn(rfrontstrut2, x_axis, -0.3, 0.3)
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.QueryWeapon3() return flare3 end
	
	function script.QueryWeapon4() return flare4 end
	
	function script.QueryWeapon5() return flare5 end
	
	function script.AimFromWeapon1() return maingun end

	function script.AimFromWeapon2() return ltopturret end

	function script.AimFromWeapon3() return lbottomturret end
	
	function script.AimFromWeapon4() return rtopturret end

	function script.AimFromWeapon5() return rbottomturret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		--Base Move Back
		Move(ltopbase, z_axis, -10, 5)
		Move(lbottombase, z_axis, -10, 5)
		Move(rtopbase, z_axis, -10, 5)
		Move(rbottombase, z_axis, -10, 5)
		--Cone Move Back
		Move(ltopcone, y_axis, 20, 10)
		Move(lbottomcone, y_axis, -20, 10)
		Move(rtopcone, y_axis, 20, 10)
		Move(rbottomcone, y_axis, -20, 10)
		
		Move(ltopcone, x_axis, 20, 10)
		Move(lbottomcone, x_axis, 20, 10)
		Move(rtopcone, x_axis, -20, 10)
		Move(rbottomcone, x_axis, -20, 10)
		
		Move(ltopcone, z_axis, -10, 5)
		Move(lbottomcone, z_axis, -10, 5)
		Move(rtopcone, z_axis, -10, 5)
		Move(rbottomcone, z_axis, -10, 5)
		--Wait for Cones
		WaitForMove(ltopcone, z_axis)
		WaitForMove(lbottomcone, z_axis)
		WaitForMove(rtopcone, z_axis)
		WaitForMove(rbottomcone, z_axis)
		
		Turn(maingun, y_axis, heading, math.rad(90))
		Turn(maingun, x_axis, -pitch, math.rad(50))
		WaitForTurn(maingun, y_axis)
		WaitForTurn(maingun, x_axis)
		StartThread(RestoreAfterDelayMainGun)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
		Turn(ltopturret, y_axis, heading, math.rad(90))
		Turn(ltopbarrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(ltopturret, y_axis)
		WaitForTurn(ltopbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_3)
		SetSignalMask(SIG_AIM_3)
		Turn(lbottomturret, y_axis, heading, math.rad(90))
		Turn(lbottombarrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(lbottomturret, y_axis)
		WaitForTurn(lbottombarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_4)
		SetSignalMask(SIG_AIM_4)
		Turn(rtopturret, y_axis, heading, math.rad(90))
		Turn(rtopbarrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(rtopturret, y_axis)
		WaitForTurn(rtopbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_5)
		SetSignalMask(SIG_AIM_5)
		Turn(rbottomturret, y_axis, heading, math.rad(90))
		Turn(rbottombarrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(rbottomturret, y_axis)
		WaitForTurn(rbottombarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end

	function script.FireWeapon2()
	end

	function script.FireWeapon3()
	end
	
	function script.FireWeapon4()
	end

	function script.FireWeapon5()
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end