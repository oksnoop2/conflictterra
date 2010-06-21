	-- by KR
	
	--pieces
	local hull = piece "hull"

	local forlturret = piece "forlturret"
	local forlgun = piece "forlgun"
	local forlbarrel = piece "forlbarrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local forrturret = piece "forrturret"
	local forrgun = piece "forrgun"
	local forrbarrel = piece "forrbarrel"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local rearlturret = piece "rearlturre"
	local rearlgun = piece "rearlgun"
	local rearlbarrel = piece "rearlbarre"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"

	local rearrturret = piece "rearrturre"
	local rearrgun = piece "rearrgun"
	local rearrbarrel = piece "rearrbarre"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(forlturret, y_axis, 0, math.rad(90))
        	Turn(forlgun, x_axis, 0, math.rad(50))
		Turn(forrturret, y_axis, 0, math.rad(90))
        	Turn(forrgun, x_axis, 0, math.rad(50))
		Turn(rearlturret, y_axis, 0, math.rad(90))
        	Turn(rearlgun, x_axis, 0, math.rad(50))
		Turn(rearrturret, y_axis, 0, math.rad(90))
        	Turn(rearrgun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

	function script.QueryWeapon4() return flare4 end

	function script.QueryWeapon5() return flare5 end

	function script.QueryWeapon6() return flare6 end

	function script.QueryWeapon7() return flare7 end

	function script.QueryWeapon8() return flare8 end
	
	function script.AimFromWeapon1() return forlturret end

	function script.AimFromWeapon2() return forlturret end

	function script.AimFromWeapon3() return forrturret end

	function script.AimFromWeapon4() return forrturret end

	function script.AimFromWeapon5() return rearlturret end

	function script.AimFromWeapon6() return rearlturret end

	function script.AimFromWeapon7() return rearrturret end

	function script.AimFromWeapon8() return rearrturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(forlturret, y_axis, heading, math.rad(90))
        	Turn(forlgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forlturret, y_axis)
        	WaitForTurn(forlgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(forlturret, y_axis, heading, math.rad(90))
        	Turn(forlgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forlturret, y_axis)
        	WaitForTurn(forlgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
        	Turn(forrturret, y_axis, heading, math.rad(90))
        	Turn(forrgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forrturret, y_axis)
        	WaitForTurn(forrgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
        	Turn(forrturret, y_axis, heading, math.rad(90))
        	Turn(forrgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(forrturret, y_axis)
        	WaitForTurn(forrgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon5( heading, pitch )
		Signal(SIG_AIM_FIVE)
		SetSignalMask(SIG_AIM_FIVE)
        	Turn(rearlturret, y_axis, heading, math.rad(90))
        	Turn(rearlgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearlturret, y_axis)
        	WaitForTurn(rearlgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon6( heading, pitch )
		Signal(SIG_AIM_SIX)
		SetSignalMask(SIG_AIM_SIX)
        	Turn(rearlturret, y_axis, heading, math.rad(90))
        	Turn(rearlgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearlturret, y_axis)
        	WaitForTurn(rearlgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon7( heading, pitch )
		Signal(SIG_AIM_SEV)
		SetSignalMask(SIG_AIM_SEV)
        	Turn(rearrturret, y_axis, heading, math.rad(90))
        	Turn(rearrgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearrturret, y_axis)
        	WaitForTurn(rearrgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon8( heading, pitch )
		Signal(SIG_AIM_EIG)
		SetSignalMask(SIG_AIM_EIG)
        	Turn(rearrturret, y_axis, heading, math.rad(90))
        	Turn(rearrgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(rearrturret, y_axis)
        	WaitForTurn(rearrgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
               Sleep(30)
               StartThread(forlrecoil)
	       Sleep(30)
	end

	function script.FireWeapon2()
	       Sleep(30)
	end

	function script.FireWeapon3()
               Sleep(30)
               StartThread(forrrecoil)
	       Sleep(30)
	end

	function script.FireWeapon4()
	       Sleep(30)
	end

	function script.FireWeapon5()
               Sleep(30)
               StartThread(rearlrecoil)
	       Sleep(30)
	end

	function script.FireWeapon6()
	       Sleep(30)
	end

	function script.FireWeapon7()
               Sleep(30)
               StartThread(rearrrecoil)
	       Sleep(30)
	end

	function script.FireWeapon8()
	       Sleep(30)
	end

        function forlrecoil()
               Move (forlbarrel, z_axis, -10, 150)
               WaitForMove (forlbarrel, z_axis)
               Move (forlbarrel, z_axis, 0, 20)
        end

        function forrrecoil()
               Move (forrbarrel, z_axis, -10, 150)
               WaitForMove (forrbarrel, z_axis)
               Move (forrbarrel, z_axis, 0, 20)
        end

        function rearlrecoil()
               Move (rearlbarrel, z_axis, -10, 150)
               WaitForMove (rearlbarrel, z_axis)
               Move (rearlbarrel, z_axis, 0, 20)
        end

        function rearrrecoil()
               Move (rearrbarrel, z_axis, -10, 150)
               WaitForMove (rearrbarrel, z_axis)
               Move (rearrbarrel, z_axis, 0, 20)
        end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end