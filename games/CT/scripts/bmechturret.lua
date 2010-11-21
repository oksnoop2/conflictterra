	-- by KR
	
	--pieces
	local ground = piece "ground"
	local turret = piece "turret"
	local forflap = piece "forflap"
	local rearflap = piece "rearflap"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	local currBarrel = 1

	--signals
	local SIG_AIM = 1
	
	local function underground()
		Sleep(30)
        	Move(turret, y_axis, -11.5, math.rad(500))
        	Turn(forflap, x_axis, -1.55, math.rad(90))
        	Turn(rearflap, x_axis, 1.55, math.rad(90))
	end

	function script.Create()
		StartThread(underground)
		Sleep(30)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Move(turret, y_axis, -11.5, math.rad(500))
        	Turn(forflap, x_axis, -1.55, math.rad(90))
        	Turn(rearflap, x_axis, 1.55, math.rad(90))
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		end
		if (currBarrel == 2) then 
			return flare2
		else 
			return flare3
		end
	end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Move(turret, y_axis, 0, math.rad(500))
        	Turn(forflap, x_axis, 0, math.rad(90))
        	Turn(rearflap, x_axis, 0, math.rad(90))
		WaitForMove(turret, y_axis)
        	WaitForTurn(forflap, x_axis)
        	WaitForTurn(rearflap, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end