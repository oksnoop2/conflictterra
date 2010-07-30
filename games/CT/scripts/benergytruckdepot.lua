
	local body = piece "body"
	local bacpylon = piece "bacpylon"
	local forpylon = piece "forpylon"
	local lpylon = piece "lpylon"
	local lslab = piece "lslab"
	local rpylon = piece "rpylon"
	local rslab = piece "rslab"
	local stem = piece "stem"
	local wheels = piece "wheels"

	local function doors_open()
		Sleep(500)
		Move (lslab, y_axis, -12, 5)
		Move (rslab, y_axis, -12, 5)
		WaitForMove (lslab, y_axis)
		WaitForMove (rslab, y_axis)
		Move (stem, y_axis, 12, 5)
		Turn (forpylon, x_axis, 0.5, 1)
		Turn (lpylon, z_axis, 0.5, 1)
		Turn (bacpylon, x_axis, -0.5, 1)
		Turn (rpylon, z_axis, -0.5, 1)
	end

	function script.Activate()
		StartThread(doors_open)
	end

	function script.Deactivate()
	end


	function script.Killed(recentDamage, maxHealth)
		return 0
	end
