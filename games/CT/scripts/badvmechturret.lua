	-- by KR
	
	--pieces
	local base = piece "base"
	local frontdoor = piece "frontdoor"
	local reardoor = piece "reardoor"
	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1

	function script.Create()
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(frontdoor, x_axis, 0, math.rad(90))
        	Turn(reardoor, x_axis, 0, math.rad(90))
        	Turn(leftdoor, z_axis, 0, math.rad(90))
        	Turn(rightdoor, z_axis, 0, math.rad(90))
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
	
	function script.AimFromWeapon1() return base end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(reardoor, x_axis, -1.55, math.rad(90))
        	Turn(frontdoor, x_axis, 1.55, math.rad(90))
        	Turn(rightdoor, z_axis, -1.55, math.rad(90))
        	Turn(leftdoor, z_axis, 1.55, math.rad(90))
        	WaitForTurn(leftdoor, x_axis)
        	WaitForTurn(reardoor, x_axis)
        	WaitForTurn(frontdoor, x_axis)
        	WaitForTurn(rightdoor, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end