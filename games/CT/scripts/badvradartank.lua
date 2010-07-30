	-- by KR
	
	--pieces
	local body = piece "body"
	local stem = piece "stem"
	local dishleft = piece "dishleft"
	local dishright = piece "dishright"

	--signals
	function script.Create()
	   StartThread(radar_spin)
	   return 1
	end

	function radar_spin()
	   Spin (stem, y_axis, 2)
           Spin (dishleft, x_axis, 2)
           Spin (dishright, x_axis, -2)
	end

	function script.Killed(recentDamage, maxHealth)
	   return 0
	end
