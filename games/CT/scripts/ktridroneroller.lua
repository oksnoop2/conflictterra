	--Tri Roller Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local body = piece "body"
	local turret = piece "head"
	local flare = piece "flare"

	local frontwheel = piece "w1"
	local leftwheel = piece "w2"
	local rightwheel = piece "w3"


	--signals
	local SIG_AIM = 1

	
	--local functions
	local function walk()
		Spin( body, y_axis, -2 )
	        Spin( frontwheel, z_axis, 2 )
	        Spin( leftwheel, x_axis, 2 )
		Spin( rightwheel, x_axis, -2 )
	end

	local function stop_walk()
		StopSpin( body, y_axis, 2 )
	        StopSpin( frontwheel, z_axis, 2 )
	        StopSpin( leftwheel, x_axis, 2 )
		StopSpin( rightwheel, x_axis, 2 )
	end


	--script
	function script.Create(unitID)
		Turn(leftwheel, y_axis, 0.75, 10)
		Turn(rightwheel, y_axis, -0.75, 10)
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