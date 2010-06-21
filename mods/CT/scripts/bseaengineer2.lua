
	local hull = piece "hull"
	local bigcrane = piece "bigcrane"
	local lilcrane = piece "lilcrane"
	local nano = piece "nano"

	local SIG_AIM = 2
	local SIG_BUILD = 4

	function script.Create(unitID)
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
    		Turn(bigcrane, y_axis, heading, math.rad(90))
		Turn(lilcrane, y_axis, heading, math.rad(90))
    		WaitForTurn(bigcrane, y_axis)
		WaitForTurn(lilcrane, y_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.Querybody() return nano end

	function script.AimFromWeapon() return bigcrane end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(bigcrane, y_axis, 0, math.rad(90))
		Turn(lilcrane, y_axis, 0, math.rad(90))
		WaitForTurn(bigcrane, y_axis)
		WaitForTurn(lilcrane, y_axis)
		Sleep(1)
		return 0
	end

	function script.AimFromWeapon() return nano end

	function script.QueryWeapon() return nano end

	function script.QueryNanoPiece() return nano end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end