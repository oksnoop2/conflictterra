	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local larm = piece "larm"
	local flare1 = piece "flare1"

	local rarm = piece "rarm"
	local flare2 = piece "flare2"

        local forwheel = piece "forwheel"

        local rearwheel = piece "rearwheel"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	function script.StartMoving()
	        Spin( forwheel, x_axis, 2 )
		Spin( rearwheel, x_axis, 2 )
	end
	
	function script.StopMoving()
	        StopSpin( forwheel, x_axis, 2 )
		StopSpin( rearwheel, x_axis, 2 )
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
        	Turn(larm, x_axis, 0, math.rad(50))
        	Turn(rarm, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return larm end

	function script.AimFromWeapon2() return rarm end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(larm, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(larm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(90))
        	Turn(rarm, x_axis, -pitch, math.rad(50))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rarm, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	
               Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)	
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end