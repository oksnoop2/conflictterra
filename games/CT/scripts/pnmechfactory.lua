	local building = piece "building"

	local fdoor = piece "fdoor"

	local pod = piece "pod"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

	local tdoor = piece "tdoor"

	local pad = piece "pad"


	function script.Create(unitID)
	end

	function script.QueryBuildInfo() return pad end

	function script.QueryNanoPiece() return pad end

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

	function script.StartBuilding()
		Move(tdoor, z_axis, -150, 100)
		Move(pod, y_axis, 5000)
		Move(pad, y_axis, 5000)
		WaitForMove(pod, y_axis)
		Move(pod, y_axis, 0, 1000)
		WaitForMove(pod, y_axis)
		Move(tdoor, z_axis, 0, 100)
		WaitForMove(tdoor, z_axis)
		Move(pad, y_axis, 0)
		Hide(pod)

	end

	function script.StopBuilding()
		Move(fdoor, y_axis, -100, 100)
		Sleep(3000)
		Move(fdoor, y_axis, 0, 100)
		WaitForMove(fdoor, y_axis)
		Show(pod)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end