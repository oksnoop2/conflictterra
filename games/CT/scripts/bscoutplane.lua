	--Suzume Type Plane animation script by Sanada

	--pieces
	local fuselage = piece "fuselage"

	local backgear = piece "backgear"
	local frontgear = piece "frontgear"
	local leftgear = piece "leftgear"
	local rightgear = piece "rightgear"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"


	--local functions
	local function landinggear()
		--landing gear retract
		Turn(frontgear, x_axis, -1.5, 1)
		Turn(leftgear, z_axis, -1.5, 1)
		Turn(rightgear, z_axis, 1.5, 1)
		Turn(backgear, x_axis, 1.5, 1)

		--landing gear wait
		WaitForTurn(frontgear, x_axis)
		WaitForTurn(leftgear, z_axis)
		WaitForTurn(rightgear, z_axis)
		WaitForTurn(backgear, x_axis)

		--landing gear hide
		Hide(frontgear)
		Hide(leftgear)
		Hide(rightgear)
		Hide(backgear)
	end


	--script
	function script.Create()
	end

	function script.Activate()
		StartThread(landinggear)
	end

	function script.Deactivate()
		--landing gear show
		Show(frontgear)
		Show(leftgear)
		Show(rightgear)
		Show(backgear)

		--landing gear extend
		Turn(frontgear, x_axis, 0, 1)
		Turn(leftgear, z_axis, 0, 1)
		Turn(rightgear, z_axis, 0, 1)
		Turn(backgear, x_axis, 0, 1)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
