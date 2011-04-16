	-- by KR
	
	--pieces
	local fuselage = piece "body"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	
	function script.Create()
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return fuselage end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
	end