	-- by KR
	
	--pieces
	local body = piece "body"

	local topgun = piece "topgun"
	local flare1 = piece "flare1"

	local botgun = piece "botgun"
	local flare2 = piece "flare2"

	local forbarrel = piece "forbarrel"
	local flare3 = piece "flare3"

	local lbarrel = piece "lbarrel"
	local flare4 = piece "flare4"

	local rearbarrel = piece "rearbarrel"
	local flare5 = piece "flare5"

	local rbarrel = piece "rbarrel"
	local flare6 = piece "flare6"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	
	function script.Create()
	       
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end