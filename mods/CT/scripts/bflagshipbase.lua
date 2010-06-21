
	local building = piece "building"

	local forlturret = piece "flturret"
	local forlbarrel = piece "forlbarrel"
	local flare5 = piece "flare5"

	local forgun = piece "forgun"
	local flare1 = piece "flare1"

	local forrturret = piece "forrturret"
	local forrbarrel = piece "forrgun"
	local flare6 = piece "flare6"

	local leftdoor = piece "leftdoor"

	local leftgun = piece "leftgun"
	local flare2 = piece "flare2"

	local reargun = piece "reargun"
	local flare4 = piece "flare4"

	local rearlturret = piece "rearlturre"
	local rearlbarrel = piece "rearlbarre"
	local flare7 = piece "flare7"

	local rearrturret = piece "rearrturre"
	local rearrbarrel = piece "rearrbarre"
	local flare8 = piece "flare8"

	local rightdoor = piece "rightdoor"

	local rightgun = piece "rightgun"
	local flare3 = piece "flare3"

	local nano = piece "nano"
	local pad = piece "pad"

	local radar = piece "radar"
	local ldish = piece "ldish"
	local rdish = piece "rdish"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128

	function script.Create(unitID)
		StartThread(radar_spin)
	end

	function radar_spin()
		Spin (radar, y_axis, 2)
        	Spin (ldish, x_axis, 2)
        	Spin (rdish, x_axis, -2)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(forlbarrel, x_axis, 0, math.rad(50))
        	Turn(forrbarrel, x_axis, 0, math.rad(50))
        	Turn(rearlbarrel, x_axis, 0, math.rad(50))
        	Turn(rearrbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end

	function script.QueryWeapon5() return flare5 end

	function script.QueryWeapon6() return flare6 end

	function script.QueryWeapon7() return flare7 end

	function script.QueryWeapon8() return flare8 end
	
	function script.AimFromWeapon1() return forgun end
	
	function script.AimFromWeapon2() return leftgun end
	
	function script.AimFromWeapon3() return rightgun end
	
	function script.AimFromWeapon4() return reargun end
	
	function script.AimFromWeapon5() return forlturret end
	
	function script.AimFromWeapon6() return forrturret end
	
	function script.AimFromWeapon7() return rearlturret end
	
	function script.AimFromWeapon8() return rearrturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(forgun, y_axis, heading, math.rad(90))
        	WaitForTurn(forgun, y_axis)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(leftgun, y_axis, heading, math.rad(90))
        	WaitForTurn(leftgun, y_axis)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(rightgun, y_axis, heading, math.rad(90))
        	WaitForTurn(rightgun, y_axis)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(reargun, y_axis, heading, math.rad(90))
        	WaitForTurn(reargun, y_axis)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(forlturret, y_axis, heading, math.rad(90))
        	Turn(forlbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forlturret, y_axis)
        	WaitForTurn(forlbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(forrturret, y_axis, heading, math.rad(90))
        	Turn(forrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forrturret, y_axis)
        	WaitForTurn(forrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(rearlturret, y_axis, heading, math.rad(90))
        	Turn(rearlbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearlturret, y_axis)
        	WaitForTurn(rearlbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(rearrturret, y_axis, heading, math.rad(90))
        	Turn(rearrbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearrturret, y_axis)
        	WaitForTurn(rearrbarrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end

	function script.FireWeapon2()
	       Sleep(30)
	end

	function script.FireWeapon3()
	       Sleep(30)
	end

	function script.FireWeapon4()
	       Sleep(30)
	end

	function script.FireWeapon5()
	       Sleep(30)
	end

	function script.FireWeapon6()
	       Sleep(30)
	end

	function script.FireWeapon7()
	       Sleep(30)
	end

	function script.FireWeapon8()
	       Sleep(30)
	end

	function script.QueryBuildInfo() return pad end
	function script.QueryNanoPiece() return nano end

	function script.Activate()
		SetUnitValue(COB.YARD_OPEN, 1)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		SetUnitValue(COB.BUGGER_OFF, 1)
		return 1
	end

	function script.Deactivate()
		SetUnitValue(COB.YARD_OPEN, 0)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		SetUnitValue(COB.BUGGER_OFF, 0)
		return 0
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
