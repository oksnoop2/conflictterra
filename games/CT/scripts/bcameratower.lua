	--Camera Tower animation script by Sanada

	--pieces
	local base = piece "base"
	local camera = piece "camera"


	--script
	function script.Create()
		Spin (camera, y_axis, 1)
		Sleep(60000)
		Spring.DestroyUnit(unitID)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
