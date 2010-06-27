	-- by KR
	
	--pieces
	local hull = piece "hull"
        local turret = piece "turret"
        local bgun = piece "bgun"
        local lgun = piece "lgun"
	local barrel = piece "barrel"
	local flare = piece "flare"

	--signals
	local SIG_AIM = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(bgun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(bgun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(bgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	EmitSfx(flare, orc_machinegun_flash)
	EmitSfx(flare, orc_machinegun_muzzle)
               StartThread(recoil)
               Sleep(30)
	end

        function recoil()
               Move (lgun, z_axis, -10, 200)
               Move (barrel, z_axis, -45, 400)
               WaitForMove (lgun, z_axis)
               Move (lgun, z_axis, 0, 20)
               WaitForMove (barrel, z_axis)
               Move (barrel, z_axis, 0, 50)
        end

	function script.RockUnit( )
		Turn(hull, z_axis, 0.1, 0.15)
		WaitForTurn(hull, z_axis)
		Turn(hull, z_axis, -0.1, 0.15)
		WaitForTurn(hull, z_axis)
		Turn(hull, z_axis, 0.05, 0.1)
		WaitForTurn(hull, z_axis)
		Turn(hull, z_axis, 0, 0.05)
	end

	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end