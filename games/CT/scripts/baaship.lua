	-- by KR
	
	--pieces
	local hull = piece "hull"
	local dish = piece "dish"

	local forturret = piece "forturret"
	local flare1 = piece "flare1"

	local rearturret = piece "rearturret"
	local flare2 = piece "flare2"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        --local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
                StartThread(radar_spin)
	        return 1
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(forturret, y_axis, 0, math.rad(200))
		Turn(rearturret, y_axis, 0, math.rad(200))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return forturret end

	function script.AimFromWeapon2() return rearturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(forturret, y_axis, heading, math.rad(200))
        	WaitForTurn(forturret, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(rearturret, y_axis, heading, math.rad(200))
        	WaitForTurn(rearturret, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	--EmitSfx(flare1, orc_machinegun_flash)
	--EmitSfx(flare1, orc_machinegun_muzzle)	       	       
	Sleep(30)
	end


	function script.FireWeapon2()
	--EmitSfx(flare2, orc_machinegun_flash)
	--EmitSfx(flare2, orc_machinegun_muzzle)       
	Sleep(30)
	end

        function radar_spin()
               Spin (dish, y_axis, 2)
        end

	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end