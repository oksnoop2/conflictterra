	--Uesugi Class Cruiser animation script by Sanada
	
	--pieces
	local body = piece "body"

	local frontmissilepod = piece "frontmissilepod"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	
	local frontfoot = piece "frontfoot"
	local frontstrut1 = piece "frontstrut1"
	local frontstrut2 = piece "frontstrut2"
	
	local lfoot = piece "lfoot"
	local lstrut1 = piece "lstrut1"
	local lstrut2 = piece "lstrut2"
	
	local lfrontdownturret = piece "lfrontdownturret"
	local lfrontdownbarrel = piece "lfrontdownbarrel"
	local flare11 = piece "flare11"
	
	local lfrontupturret = piece "lfrontupturret"
	local lfrontupbarrel = piece "lfrontupbarrel"
	local flare5 = piece "flare5"
	
	local lreardownturret = piece "lreardownturret"
	local lreardownbarrel = piece "lreardownbarrel"
	local lreardownbarrel1 = piece "lreardownbarrel1"
	local flare13 = piece "flare13"
	local lreardownbarrel2 = piece "lreardownbarrel2"
	local flare14 = piece "flare14"
	
	local lrearupturret = piece "lrearupturret"
	local lrearupbarrel = piece "lrearupbarrel"
	local lrearupbarrel1 = piece "lrearupbarrel1"
	local flare7 = piece "flare7"
	local lrearupbarrel2 = piece "lrearupbarrel2"
	local flare8 = piece "flare8"
	
	local rfoot = piece "rfoot"
	local rstrut1 = piece "rstrut1"
	local rstrut2 = piece "rstrut2"
	
	local rfrontdownturret = piece "rfrontdownturret"
	local rfrontdownbarrel = piece "rfrontdownbarrel"
	local flare12 = piece "flare12"
	
	local rfrontupturret = piece "rfrontupturret"
	local rfrontupbarrel = piece "rfrontupbarrel"
	local flare6 = piece "flare6"
	
	local rearmissilepod = piece "rearmissilepod"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	
	local rreardownturret = piece "rreardownturret"
	local rreardownbarrel = piece "rreardownbarrel"
	local rreardownbarrel1 = piece "rreardownbarrel1"
	local flare15 = piece "flare15"
	local rreardownbarrel2 = piece "rreardownbarrel2"
	local flare16 = piece "flare16"
	
	local rrearupturret = piece "rrearupturret"
	local rrearupbarrel = piece "rrearupbarrel"
	local rrearupbarrel1 = piece "rrearupbarrel1"
	local flare9 = piece "flare9"
	local rrearupbarrel2 = piece "rrearupbarrel2"
	local flare10 = piece "flare10"
	
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"
	
	local fxflaredamage1 = piece "fxflaredamage1"
	local fxflaredamage2 = piece "fxflaredamage2"
	local fxflaredamage3 = piece "fxflaredamage3"

	
	--variables
	local currBarrel1 = 1
	local currBarrel2 = 1
	local currBarrel3 = 1
	local currBarrel4 = 1
	local currBarrel5 = 1
	local currBarrel6 = 1
	
	
	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	local SIG_AIM_3 = 4
	local SIG_AIM_4 = 8
	local SIG_AIM_5 = 16
	local SIG_AIM_6 = 32
	local SIG_AIM_7 = 64
	local SIG_AIM_8 = 128
	local SIG_AIM_9 = 256
	local SIG_AIM_10 = 512
	
	
	--CEGs
	local ct_missile_smokecloud = SFX.CEG
	
	
	--local functions
	local function RestoreAfterDelay_Missile(unitID)
		Sleep(2500)
		Turn(frontmissilepod, y_axis, 0, math.rad(90))
		Turn(rearmissilepod, y_axis, 0, math.rad(90))
		Turn(flare1, x_axis, 0, math.rad(60))
		Turn(flare2, x_axis, 0, math.rad(60))
		Turn(flare3, x_axis, 0, math.rad(60))
		Turn(flare4, x_axis, 0, math.rad(60))
	end
	
	local function RestoreAfterDelay_FrontUp(unitID)
		Sleep(2500)
		Turn(lfrontupturret, y_axis, 0, math.rad(90))
		Turn(rfrontupturret, y_axis, 0, math.rad(90))
		Turn(lfrontupbarrel, x_axis, 0, math.rad(60))
		Turn(rfrontupbarrel, x_axis, 0, math.rad(60))
	end
	
	local function RestoreAfterDelay_RearUp(unitID)
		Sleep(2500)
		Turn(lrearupturret, y_axis, 0, math.rad(90))
		Turn(rrearupturret, y_axis, 0, math.rad(90))
		Turn(lrearupbarrel, x_axis, 0, math.rad(60))
		Turn(rrearupbarrel, x_axis, 0, math.rad(60))
	end
	
	local function RestoreAfterDelay_FrontDown(unitID)
		Sleep(2500)
		Turn(lfrontdownturret, y_axis, 0, math.rad(90))
		Turn(rfrontdownturret, y_axis, 0, math.rad(90))
		Turn(lfrontdownbarrel, x_axis, 0, math.rad(60))
		Turn(rfrontdownbarrel, x_axis, 0, math.rad(60))
	end
	
	local function RestoreAfterDelay_RearDown(unitID)
		Sleep(2500)
		Turn(lreardownturret, y_axis, 0, math.rad(90))
		Turn(rreardownturret, y_axis, 0, math.rad(90))
		Turn(lreardownbarrel, x_axis, 0, math.rad(60))
		Turn(rreardownbarrel, x_axis, 0, math.rad(60))
	end
	
	
	--script
	function script.Create()
	       
	end
	
	function script.Activate()
		--Feet Retract
		Move(frontfoot, y_axis, 25, 12.5)
		Move(lfoot, y_axis, 20, 10)
		Move(rfoot, y_axis, 20, 10)
		
		--Un-level Feet
		Turn(frontfoot, x_axis, 0, 0.04)
		Turn(lfoot, z_axis, 0, 0.15)
		Turn(rfoot, z_axis, 0, 0.15)
		
		--Front Struts Retract
		Turn(frontstrut1, x_axis, -1.5, 0.75)
		Turn(frontstrut2, x_axis, -1.5, 0.75)
		
		--Rear Struts Retract
		Turn(lstrut1, z_axis, 0, 0.15)
		Turn(lstrut2, z_axis, 0, 0.15)
		Turn(rstrut1, z_axis, 0, 0.15)
		Turn(rstrut2, z_axis, 0, 0.15)
	end

	function script.Deactivate()
		--Feet Extend
		Move(frontfoot, y_axis, 0, 12.5)
		Move(lfoot, y_axis, 0, 10)
		Move(rfoot, y_axis, 0, 10)
		
		--Level Feet
		Turn(frontfoot, x_axis, 0.08, 0.04)
		Turn(lfoot, z_axis, -0.3, 0.15)
		Turn(rfoot, z_axis, 0.3, 0.15)
		
		--Front Struts Extend
		Turn(frontstrut1, x_axis, 0, 75)
		Turn(frontstrut2, x_axis, 0, 75)
		
		--Rear Struts Retract
		Turn(lstrut1, z_axis, 0.3, 0.15)
		Turn(lstrut2, z_axis, 0.3, 0.15)
		Turn(rstrut1, z_axis, -0.3, 0.15)
		Turn(rstrut2, z_axis, -0.3, 0.15)
	end
	
	function script.QueryWeapon1()
		if (currBarrel1 == 1) then 
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

	function script.QueryWeapon3() return flare5 end

	function script.QueryWeapon4() return flare6 end
	
	function script.QueryWeapon5()
		if (currBarrel3 == 1) then 
			return flare7
		else 
			return flare8
		end
	end

	function script.QueryWeapon6()
		if (currBarrel4 == 1) then 
			return flare9
		else 
			return flare10
		end
	end
	
	function script.QueryWeapon7() return flare11 end

	function script.QueryWeapon8() return flare12 end
	
	function script.QueryWeapon9()
		if (currBarrel5 == 1) then 
			return flare13
		else 
			return flare14
		end
	end

	function script.QueryWeapon10()
		if (currBarrel6 == 1) then 
			return flare15
		else 
			return flare16
		end
	end
	
	function script.AimFromWeapon1() return frontmissilepod end

	function script.AimFromWeapon2() return rearmissilepod end

	function script.AimFromWeapon3() return lfrontupturret end

	function script.AimFromWeapon4() return rfrontupturret end
	
	function script.AimFromWeapon5() return lrearupturret end

	function script.AimFromWeapon6() return rrearupturret end

	function script.AimFromWeapon7() return lfrontdownturret end

	function script.AimFromWeapon8() return rfrontdownturret end
	
	function script.AimFromWeapon9() return lreardownturret end

	function script.AimFromWeapon10() return rreardownturret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(frontmissilepod, y_axis, heading, math.rad(90))
		Turn(flare1, x_axis, -pitch, math.rad(60))
		Turn(flare2, x_axis, -pitch, math.rad(60))
		WaitForTurn(frontmissilepod, y_axis)
		WaitForTurn(flare1, x_axis)
		WaitForTurn(flare2, x_axis)
		StartThread(RestoreAfterDelay_Missile)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
		Turn(rearmissilepod, y_axis, heading, math.rad(90))
		Turn(flare3, x_axis, -pitch, math.rad(60))
		Turn(flare4, x_axis, -pitch, math.rad(60))
		WaitForTurn(rearmissilepod, y_axis)
		WaitForTurn(flare3, x_axis)
		WaitForTurn(flare4, x_axis)
		StartThread(RestoreAfterDelay_Missile)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_3)
		SetSignalMask(SIG_AIM_3)
		Turn(lfrontupturret, y_axis, heading, math.rad(90))
		Turn(lfrontupbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(lfrontupturret, y_axis)
		WaitForTurn(lfrontupbarrel, x_axis)
		StartThread(RestoreAfterDelay_FrontUp)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_4)
		SetSignalMask(SIG_AIM_4)
		Turn(rfrontupturret, y_axis, heading, math.rad(90))
		Turn(rfrontupbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(rfrontupturret, y_axis)
		WaitForTurn(rfrontupbarrel, x_axis)
		StartThread(RestoreAfterDelay_FrontUp)
		return true
	end
	
	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_5)
		SetSignalMask(SIG_AIM_5)
		Turn(lrearupturret, y_axis, heading, math.rad(90))
		Turn(lrearupbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(lrearupturret, y_axis)
		WaitForTurn(lrearupbarrel, x_axis)
		StartThread(RestoreAfterDelay_RearUp)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_6)
		SetSignalMask(SIG_AIM_6)
		Turn(rrearupturret, y_axis, heading, math.rad(90))
		Turn(rrearupbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(rrearupturret, y_axis)
		WaitForTurn(rrearupbarrel, x_axis)
		StartThread(RestoreAfterDelay_RearUp)
		return true
	end
	
	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_7)
		SetSignalMask(SIG_AIM_7)
		Turn(lfrontdownturret, y_axis, heading, math.rad(90))
		Turn(lfrontdownbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(lfrontdownturret, y_axis)
		WaitForTurn(lfrontdownbarrel, x_axis)
		StartThread(RestoreAfterDelay_FrontDown)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_8)
		SetSignalMask(SIG_AIM_8)
		Turn(rfrontdownturret, y_axis, heading, math.rad(90))
		Turn(rfrontdownbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(rfrontdownturret, y_axis)
		WaitForTurn(rfrontdownbarrel, x_axis)
		StartThread(RestoreAfterDelay_FrontDown)
		return true
	end
	
	function script.AimWeapon9( heading, pitch )
		Signal(SIG_AIM_9)
		SetSignalMask(SIG_AIM_9)
		Turn(lreardownturret, y_axis, heading, math.rad(90))
		Turn(lreardownbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(lreardownturret, y_axis)
		WaitForTurn(lreardownbarrel, x_axis)
		StartThread(RestoreAfterDelay_RearDown)
		return true
	end

	function script.AimWeapon10( heading, pitch )
		Signal(SIG_AIM_10)
		SetSignalMask(SIG_AIM_10)
		Turn(rreardownturret, y_axis, heading, math.rad(90))
		Turn(rreardownbarrel, x_axis, -pitch, math.rad(60))
		WaitForTurn(rreardownturret, y_axis)
		WaitForTurn(rreardownbarrel, x_axis)
		StartThread(RestoreAfterDelay_RearDown)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel1 == 1 then
			EmitSfx(flare2, ct_missile_smokecloud)	
		end
		if currBarrel1 == 2 then
			EmitSfx(flare1, ct_missile_smokecloud)	
		end
		currBarrel1 = currBarrel1 + 1
		if currBarrel1 == 2 then currBarrel1 = 2 end
		if currBarrel1 == 3 then currBarrel1 = 1 end
	end

	function script.FireWeapon2()
		if currBarrel2 == 1 then
			EmitSfx(flare4, ct_missile_smokecloud)	
		end
		if currBarrel2 == 2 then
			EmitSfx(flare3, ct_missile_smokecloud)	
		end
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end

	function script.FireWeapon3()
	end

	function script.FireWeapon4()
	end
	
	function script.FireWeapon5()
		if currBarrel3 == 1 then
			Move(lrearupbarrel2, z_axis, -6, 50)
			WaitForMove(lrearupbarrel2, z_axis)
			Move(lrearupbarrel2, z_axis, 0, 50)
		end
		if currBarrel3 == 2 then
			Move(lrearupbarrel1, z_axis, -6, 50)
			WaitForMove(lrearupbarrel1, z_axis)
			Move(lrearupbarrel1, z_axis, 0, 50)
		end
		currBarrel3 = currBarrel3 + 1
		if currBarrel3 == 2 then currBarrel3 = 2 end
		if currBarrel3 == 3 then currBarrel3 = 1 end
	end

	function script.FireWeapon6()
		if currBarrel4 == 1 then
			Move(rrearupbarrel2, z_axis, -6, 50)
			WaitForMove(rrearupbarrel2, z_axis)
			Move(rrearupbarrel2, z_axis, 0, 50)
		end
		if currBarrel4 == 2 then
			Move(rrearupbarrel1, z_axis, -6, 50)
			WaitForMove(rrearupbarrel1, z_axis)
			Move(rrearupbarrel1, z_axis, 0, 50)
		end
		currBarrel4 = currBarrel4 + 1
		if currBarrel4 == 2 then currBarrel4 = 2 end
		if currBarrel4 == 3 then currBarrel4 = 1 end
	end

	function script.FireWeapon7()
	end

	function script.FireWeapon8()
	end
	
	function script.FireWeapon9()
		if currBarrel5 == 1 then
			Move(lreardownbarrel2, z_axis, -6, 50)
			WaitForMove(lreardownbarrel2, z_axis)
			Move(lreardownbarrel2, z_axis, 0, 50)
		end
		if currBarrel5 == 2 then
			Move(lreardownbarrel1, z_axis, -6, 50)
			WaitForMove(lreardownbarrel1, z_axis)
			Move(lreardownbarrel1, z_axis, 0, 50)
		end
		currBarrel5 = currBarrel5 + 1
		if currBarrel5 == 2 then currBarrel5 = 2 end
		if currBarrel5 == 3 then currBarrel5 = 1 end
	end

	function script.FireWeapon10()
		if currBarrel6 == 1 then
			Move(rreardownbarrel2, z_axis, -6, 50)
			WaitForMove(rreardownbarrel2, z_axis)
			Move(rreardownbarrel2, z_axis, 0, 50)
		end
		if currBarrel6 == 2 then
			Move(rreardownbarrel1, z_axis, -6, 50)
			WaitForMove(rreardownbarrel1, z_axis)
			Move(rreardownbarrel1, z_axis, 0, 50)
		end
		currBarrel6 = currBarrel2 + 1
		if currBarrel6 == 2 then currBarrel6 = 2 end
		if currBarrel6 == 3 then currBarrel6 = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end