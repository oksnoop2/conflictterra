	--Big Meteor Animation Script by Sanada
	
	--pieces
	local meteor = piece "meteor"
	
	
	--script
	function script.Create()
		Spin(meteor, x_axis, 10)
		Spin(meteor, y_axis, 1)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end