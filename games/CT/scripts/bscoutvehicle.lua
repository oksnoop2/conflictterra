	-- by KR
	
	--pieces
	local body = piece "body"

	local backaxle = piece "backaxle"
	local backwheels = piece "backwheels"

	local frontaxle = piece "frontaxle"
	local frontwheels = piece "frontwheel"
	
	function script.Create()
	end

	local function walk()
	        Spin( frontwheels, x_axis, 5 )
		Spin( backwheels, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( frontwheels, x_axis, 5 )
		StopSpin( backwheels, x_axis, 5 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end