	-- by KR
	
	--pieces
	local body = piece "body"
	local flare1 = piece "flare1"

	--signals
	local SIG_AIM = 2
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end