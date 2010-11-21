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
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	
	function script.Create()
	       
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end

        function script.QueryWeapon2() return flare3 end

	function script.QueryWeapon3() return flare4 end
	
	function script.AimFromWeapon1() return fighter end

        function script.AimFromWeapon2() return fighter end

	function script.AimFromWeapon3() return fighter end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end

	function script.FireWeapon2()
	end

	function script.FireWeapon3()
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end