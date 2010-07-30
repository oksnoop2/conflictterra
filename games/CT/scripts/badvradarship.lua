	-- by KR
	
	--pieces
	local hull = piece "hull"
        local dish = piece "dish"
	local fordome = piece "fordome"
	local reardome = piece "reardome"

	--signals	
	function script.Create()
		StartThread(dome_spin)
		StartThread(dish_animation)
	end

	function dome_spin()
		Spin (fordome, y_axis, 2)
        	Spin (reardome, y_axis, -2)
	end

        function dish_animation()
        	while (true) do
			Turn (dish, y_axis, 1, 1)
			WaitForTurn (dish, y_axis)
			Sleep(30)
			Turn (dish, y_axis, -1, 1)
			WaitForTurn (dish, y_axis)
			Sleep(30)
		end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
