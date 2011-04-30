	-- by KR
	
	--pieces
	local fuselage = piece "fuselage"

	local lturbine = piece "lturbine"
	local rturbine = piece "rturbine"

	local missile1 = piece "missile1"
	local missile2 = piece "missile2"
	local missile3 = piece "missile3"
	local missile4 = piece "missile4"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
        local ct_missile_smokecloud = SFX.CEG
	
	function script.Create()

	end

	function script.Activate()
		Spin(lturbine, z_axis, 20)
		Spin(rturbine, z_axis, 20)
	end

	function script.Deactivate()
		StopSpin(lturbine, z_axis, 1)
		StopSpin(rturbine, z_axis, 1)
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		end
		if (currBarrel == 2) then 
			return flare2
		end
		if (currBarrel == 3) then 
			return flare3
		else 
			return flare4
		end
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Show(missile1)
		Show(missile2)
		Show(missile3)
		Show(missile4)
	end
	
	function script.AimFromWeapon1() return fuselage end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_missile_smokecloud)
			Hide(missile2)	
		end
		if currBarrel == 2 then
			EmitSfx(flare3, ct_missile_smokecloud)
			Hide(missile3)
		end
		if currBarrel == 3 then
			EmitSfx(flare4, ct_missile_smokecloud)
			Hide(missile4)
		end
		if currBarrel == 4 then
			EmitSfx(flare1, ct_missile_smokecloud)
			Hide(missile1)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end