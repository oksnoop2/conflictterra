
	
	--pieces
	local roller = piece "roller"
	local axel = piece "axel"
	
	--signals
	local walk_go = 4
	local walk_stop = 5
	
	function script.Create()
	       
	end
	
	local function Walk()
	        SetSignalMask( walk_go )
	        Spin( roller, x_axis, 2, 2 )
	end
	
	local function StopWalk()
	        Signal( walk_go )
		StopSpin( roller, x_axis, 2, 2 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end
	
	function script.Killed()
	end