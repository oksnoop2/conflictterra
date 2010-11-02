
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


	local function feet_move()
		Move (underfeet, y_axis, 7, 1)
		Turn (frontfoot, x_axis, -10, 1)
		Turn (backfoot, x_axis, 10, 1)
	end

	function script.Create()
		StartThread(feet_move)
	end


	function script.Killed(recentDamage, maxHealth)
		return 0
	end
