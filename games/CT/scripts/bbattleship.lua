	-- by KR
	
	--pieces
	local hull = piece "hull"

        local bigdish = piece "bigdish"
        local littledish = piece "littledish"

	local turret = piece "turret"
	local gun = piece "gun"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        --local orc_machinegun_flash = SFX.CEG
        --local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
                StartThread(dish_animation)
		StartThread(dish_animation_2)	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(gun, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(gun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(gun, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(gun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	--EmitSfx(flare1, orc_machinegun_flash)
	--EmitSfx(flare1, orc_machinegun_muzzle)
	       Sleep(30)
               StartThread(recoil)
               Sleep(30)
	end

	function script.FireWeapon2()
	--EmitSfx(flare2, orc_machinegun_flash)
	--EmitSfx(flare2, orc_machinegun_muzzle)
	       Sleep(30)
	end

        function recoil()
               Move (barrel, z_axis, -10, 150)
               WaitForMove (barrel, z_axis)
               Move (barrel, z_axis, 0, 20)
        end

        function dish_animation()
               Spin (littledish, y_axis, 8)
	end

        function dish_animation_2()
        	while (true) do
			Turn (bigdish, y_axis, 1, 1)
			WaitForTurn (bigdish, y_axis)
			Sleep(30)
			Turn (bigdish, y_axis, -1, 1)
			WaitForTurn (bigdish, y_axis)
			Sleep(30)
		end
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end