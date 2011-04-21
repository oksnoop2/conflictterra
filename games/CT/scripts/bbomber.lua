	-- by KR
	
	--pieces
	local fuselage = piece "fuselage"
	local flare1 = piece "flare1"

	--signals
	local SIG_AIM = 1
	
	function script.Create()
	       
	end


	function script.QueryWeapon1() return flare1 end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end