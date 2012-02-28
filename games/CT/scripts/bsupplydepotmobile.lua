	--Mobilized Resource Ship animation script by Sanada

	--pieces
	local body = piece "body"
	
	local lfrontdoor = piece "lfrontdoor"
	local rfrontdoor = piece "rfrontdoor"
	local lbackdoor = piece "lbackdoor"
	local rbackdoor = piece "rbackdoor"

	local lfrontjet = piece "lfrontjet"
	local lfrontfan = piece "lfrontfan"
	local fxflare1 = piece "fxflare1"
	
	local rfrontjet = piece "rfrontjet"
	local rfrontfan = piece "rfrontfan"
	local fxflare2 = piece "fxflare2"
	
	local lbackjet = piece "lbackjet"
	local lbackfan = piece "lbackfan"
	local fxflare3 = piece "fxflare3"
	
	local rbackjet = piece "rbackjet"
	local rbackfan = piece "rbackfan"
	local fxflare4 = piece "fxflare4"
	
	local lightflare1 = piece "lightflare1"
	local lightflare2 = piece "lightflare2"
	local lightflare3 = piece "lightflare3"
	local lightflare4 = piece "lightflare4"

	
	--local functions
	local function take_off()
		Sleep(1000)
	
		Turn( lfrontjet, x_axis, 1.55, 2 )
		Turn( rfrontjet, x_axis, 1.55, 2 )
		Turn( lbackjet, x_axis, 1.55, 2 )
		Turn( rbackjet, x_axis, 1.55, 2 )
		
		Spin( lfrontfan, y_axis, 5, 5 )
		Spin( rfrontfan, y_axis, 5, 5 )
		Spin( lbackfan, y_axis, 5, 5 )
		Spin( rbackfan, y_axis, 5, 5 )		
	end
	
	
	--script
	function script.Create()
	end
	
	function script.Activate()
		StartThread(take_off)
	end
	
	function script.Deactivate()
		Turn( lfrontjet, x_axis, 0, 2 )
		Turn( rfrontjet, x_axis, 0, 2 )
		Turn( lbackjet, x_axis, 0, 2 )
		Turn( rbackjet, x_axis, 0, 2 )
		
		StopSpin( lfrontfan, y_axis, 5 )
		StopSpin( rfrontfan, y_axis, 5 )
		StopSpin( lbackfan, y_axis, 5 )
		StopSpin( rbackfan, y_axis, 5 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
