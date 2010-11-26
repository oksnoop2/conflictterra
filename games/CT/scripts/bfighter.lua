	-- by KR
	
	--pieces
	local fighter = piece "fighter"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local currBarrel = 1
	local currBarrel2 = 1

	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	
	function script.Create()
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare3
		else 
			return flare4
		end
	end
	
	function script.AimFromWeapon1() return fighter end

	function script.AimFromWeapon2() return fighter end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		return true
	end

	function script.AimWeapon2( heading, pitch )
                Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end