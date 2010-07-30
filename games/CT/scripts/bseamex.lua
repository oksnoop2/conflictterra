
	local building = piece "building"
	local digger = piece "digger"
	local crane = piece "crane"

	local function digger_animation()
		SetSignalMask(1)
		while true do
			Move (digger, y_axis, 10, 10)
			WaitForMove (digger, y_axis)
			Sleep(300)
			Move (digger, y_axis, -5, 200)
			WaitForMove (digger, y_axis)
			Sleep(300)
		end
	end

	local function crane_animation()
		SetSignalMask(2)
		while true do
			Turn (crane, y_axis, 1.6, 0.5)
			WaitForTurn (crane, y_axis)
			Sleep(300)
			Turn (crane, y_axis, 0, 0.5)
			WaitForTurn (crane, y_axis)
			Sleep(300)
		end
	end

	function script.Activate()
		StartThread(digger_animation)
		StartThread(crane_animation)
	end

	function script.Deactivate()
		Signal(1)
		Signal(2)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
