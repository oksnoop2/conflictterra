
	local hull = piece "hull"
	local backfoot = piece "backfoot"
	local door1 = piece "door1"
	local door2 = piece "door2"
	local door3 = piece "door3"
	local door4 = piece "door4"
	local frontfoot = piece "frontfoot"
	local underfeet = piece "underfeet"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"


	local function doors_open()
		Sleep(500)
		Turn (door1, z_axis, -2, 2)
		Sleep(1000)
		Turn (door2, z_axis, 2, 2)
		Sleep(1000)
		Turn (door3, z_axis, -2, 2)
		Sleep(1000)
		Turn (door4, z_axis, 2, 2)
		Sleep(1000)
	end

	function script.Activate()
		StartThread(doors_open)
		Sleep(30)
	end


	function script.Killed(recentDamage, maxHealth)
		return 0
	end
