	-- by KR
	
	--pieces
	local body = piece "body"
	local fbarrel1 = piece "fbarrel1"
	local flare1 = piece "flare1"
	local fbarrel2 = piece "fbarrel2"
	local flare2 = piece "flare2"

	local lbarrel1 = piece "lbarrel1"
	local flare3 = piece "flare3"
	local lbarrel2 = piece "lbarrel2"
	local flare4 = piece "flare4"

	local rbarrel1 = piece "rbarrel1"
	local flare5 = piece "flare5"
	local rbarrel2 = piece "rbarrel2"
	local flare6 = piece "flare6"

	local bbarrel1 = piece "bbarrel1"
	local flare7 = piece "flare7"
	local bbarrel2 = piece "bbarrel2"
	local flare8 = piece "flare8"

	
	function script.Create()
	       
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end