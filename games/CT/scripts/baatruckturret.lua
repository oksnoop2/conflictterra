	-- by KR
	
	--pieces
	local body = piece "body"
	local flakturret = piece "flakturret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local misturret = piece "misturret"
	local flaremis = piece "flaremis"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
        local ct_cannon_narrow = SFX.CEG

	function script.Create()
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(barrel, x_axis, 0, math.rad(200))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return flakturret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(flakturret, y_axis, heading, math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
        	WaitForTurn(flakturret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_narrow)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_narrow)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end