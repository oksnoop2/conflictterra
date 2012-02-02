	--Air Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local body = piece "body"
	local flare1 = piece "flare1"


	--signals
	local SIG_AIM = 1


	--script
	function script.Create()
	       
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		return true
	end
	
	function script.FireWeapon1()
		Spring.DestroyUnit(unitID)
	end
	
	function script.Killed(recentDamage, maxHealth)
	end