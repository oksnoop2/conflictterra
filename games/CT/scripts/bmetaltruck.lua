	-- by KR
	
	--pieces
	local body = piece "body"
	local backdoor = piece "backdoor"
	local ldoor = piece "ldoor"
	local rdoor = piece "rdoor"
	local wheels1 = piece "wheels1"
	local wheels2 = piece "wheels2"
	local wheels3 = piece "wheels3"
	local wheels4 = piece "wheels4"

	
	function script.Create()
	       
	end
	
	function script.StartMoving()
	        Spin( wheels1, x_axis, 5 )
	        Spin( wheels2, x_axis, 5 )
	        Spin( wheels3, x_axis, 5 )
	        Spin( wheels4, x_axis, 5 )
	end
	
	function script.StopMoving()
	        StopSpin( wheels1, x_axis, 5 )
	        StopSpin( wheels2, x_axis, 5 )
	        StopSpin( wheels3, x_axis, 5 )
	        StopSpin( wheels4, x_axis, 5 )
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end