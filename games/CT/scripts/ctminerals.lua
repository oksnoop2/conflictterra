	--Minerals Animation Script by Sanada
	
	--pieces
	local meteor = piece "meteor"
	local fxflare = piece "fxflare"
	
	
	--script
	function script.Create()
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end