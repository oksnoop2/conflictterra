	-- by KR
	
	--pieces
	local body = piece "body"
	local bacpylon = piece "bacpylon"
	local forpylon = piece "forpylon"
	local lpylon = piece "lpylon"
	local lslab = piece "lslab"
	local rpylon = piece "rpylon"
	local rslab = piece "rslab"
	local stem = piece "stem"
	local wheels = piece "wheels"


	
	function script.Create()
	       
	end

	local function walk()
	        Spin( wheels, x_axis, 5 )
	end

	local function stop_walk()
	        StopSpin( wheels, x_axis, 5 )
	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end