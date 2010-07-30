	local building = piece "building"
	local digger = piece "digger"
	local digger1 = piece "digger1"
	local digger2 = piece "digger2"
	local digger3 = piece "digger3"
	local digger4 = piece "digger4"

        local digdig = SFX.CEG

	local function digger_animation()
		SetSignalMask(1)
		while true do
			Move (digger, y_axis, -20, 200)
			EmitSfx(digger1, digdig)
			EmitSfx(digger2, digdig)
			EmitSfx(digger3, digdig)
			EmitSfx(digger4, digdig)
			WaitForMove (digger, y_axis)
			Sleep(300)
			Move (digger, y_axis, 0, 10)
			WaitForMove (digger, y_axis)
			Sleep(300)
		end
	end

	local function digger_stop()
		Signal(1)
	end

	function script.Activate()
		StartThread(digger_animation)

	end

	function script.Deactivate()
		StartThread(digger_stop)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
