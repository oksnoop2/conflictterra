
	local body = piece "body"
	local backdoor = piece "backdoor"
	local ldoor = piece "ldoor"
	local rdoor = piece "rdoor"
	local wheels1 = piece "wheels1"
	local wheels2 = piece "wheels2"
	local wheels3 = piece "wheels3"
	local wheels4 = piece "wheels4"

	local function doors_open()
		Sleep(500)
		Turn (ldoor, z_axis, 2, 1)
		Turn (rdoor, z_axis, -2, 1)
		Turn (backdoor, x_axis, -2, 1)
	end

	function script.Activate()
		StartThread(doors_open)
	end

	function script.Deactivate()
	end


	function script.Killed(recentDamage, maxHealth)
		return 0
	end
