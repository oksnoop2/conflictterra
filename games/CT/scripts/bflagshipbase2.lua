
	local body = piece "body"

	local airturret = piece "airturret"
	local airbarrel = piece "airbarrel"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	local landturret = piece "landturret"
	local landbarrel = piece "landbarrel"
	local flare1 = piece "flare1"

	local ldoor = piece "ldoor"

	local leftbay = piece "leftbay"
	local leftcranebase = piece "leftcranebase"
	local leftcrane = piece "leftcrane"

	local rdoor = piece "rdoor"

	local rightbay = piece "rightbay"
	local rightcranebase = piece "rightcranebase"
	local rightcrane = piece "rightcrane"

	local pad = piece "pad"
	local nano = piece "nano"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_CRANE = 4

        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1

	function script.Create(unitID)
		StartThread(bay_open)
		StartThread(doors_open)
	end

	function bay_open()
		Turn (leftbay, z_axis, 2, 200)
        	Turn (rightbay, z_axis, -2, 200)
		Turn (leftcranebase, y_axis, 1.55, 200)
		Turn (rightcranebase, y_axis, 1.55, 200)
		Sleep (1200)
		Turn (leftbay, z_axis, 0, 1)
		Turn (rightbay, z_axis, 0, 1)
		WaitForTurn (leftbay, z_axis)
		WaitForTurn (rightbay, z_axis)
		Turn (leftcranebase, y_axis, 0, 1)
		Turn (rightcranebase, y_axis, 0, 1)
		WaitForTurn (leftcranebase, y_axis)
		WaitForTurn (rightcranebase, y_axis)
		Turn (leftcrane, z_axis, -0.75, 1)
		Turn (rightcrane, z_axis, 0.75, 1)
	end

	function doors_open()
		Sleep (1200)
		Turn (ldoor, z_axis, 1.75, 1)
        	Turn (rdoor, z_axis, -1.75, 1)
	end

	local function crane_animation()
		SetSignalMask(SIG_CRANE)
		while true do
			Move(leftcranebase, z_axis, 80, 25)
			Move(rightcranebase, z_axis, -80, 25)
			WaitForMove(leftcranebase, z_axis)
			WaitForMove(rightcranebase, z_axis)
			Sleep (1)

			Turn(leftcrane, z_axis, 0, 1)
			Turn(rightcrane, z_axis, 0, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (600)

			Turn(leftcrane, z_axis, -0.75, 1)
			Turn(rightcrane, z_axis, 0.75, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (1)

			Move(leftcranebase, z_axis, 160, 25)
			Move(rightcranebase, z_axis, -160, 25)
			WaitForMove(leftcranebase, z_axis)
			WaitForMove(rightcranebase, z_axis)
			Sleep (1)

			Turn(leftcrane, z_axis, 0, 1)
			Turn(rightcrane, z_axis, 0, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (600)

			Turn(leftcrane, z_axis, -0.75, 1)
			Turn(rightcrane, z_axis, 0.75, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (1)

			Move(leftcranebase, z_axis, 80, 25)
			Move(rightcranebase, z_axis, -80, 25)
			WaitForMove(leftcranebase, z_axis)
			WaitForMove(rightcranebase, z_axis)
			Sleep (1)

			Turn(leftcrane, z_axis, 0, 1)
			Turn(rightcrane, z_axis, 0, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (600)

			Turn(leftcrane, z_axis, -0.75, 1)
			Turn(rightcrane, z_axis, 0.75, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (1)

			Move(leftcranebase, z_axis, 0, 25)
			Move(rightcranebase, z_axis, 0, 25)
			WaitForMove(leftcranebase, z_axis)
			WaitForMove(rightcranebase, z_axis)
			Sleep (1)

			Turn(leftcrane, z_axis, 0, 1)
			Turn(rightcrane, z_axis, 0, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (600)

			Turn(leftcrane, z_axis, -0.75, 1)
			Turn(rightcrane, z_axis, 0.75, 1)
			WaitForTurn(leftcrane, z_axis)
			WaitForTurn(rightcrane, z_axis)
			Sleep (1)
		end
	end

	local function crane_stop()
		Signal(SIG_CRANE)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(landbarrel, x_axis, 0, math.rad(50))
        	Turn(airbarrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2()
		if (currBarrel == 1) then 
			return flare3
		else 
			return flare4
		end
	end
	
	function script.AimFromWeapon1() return landturret end
	
	function script.AimFromWeapon2() return airturret end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(landturret, y_axis, heading, math.rad(90))
        	Turn(landbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(landturret, y_axis)
        	WaitForTurn(landbarrel, x_axis)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(airturret, y_axis, heading, math.rad(90))
        	Turn(airbarrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(airturret, y_axis)
        	WaitForTurn(airbarrel, x_axis)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, orc_machinegun_flash)
		EmitSfx(flare1, orc_machinegun_muzzle)
	end

	function script.FireWeapon2()
		if currBarrel == 1 then
			EmitSfx(flare2, orc_machinegun_flash)
			EmitSfx(flare2, orc_machinegun_muzzle)	
		end
		if currBarrel == 2 then
			EmitSfx(flare1, orc_machinegun_flash)
			EmitSfx(flare1, orc_machinegun_muzzle)	
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.QueryBuildInfo() return pad end
	function script.QueryNanoPiece() return nano end

	function script.Activate()
		SetUnitValue(COB.YARD_OPEN, 1)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		SetUnitValue(COB.BUGGER_OFF, 1)
		return 1
	end

	function script.StartBuilding()
		StartThread(crane_animation)
	end

	function script.Deactivate()
		SetUnitValue(COB.YARD_OPEN, 0)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		SetUnitValue(COB.BUGGER_OFF, 0)
		return 0
	end

	function script.StopBuilding()
		StartThread(crane_stop)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
