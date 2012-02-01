	--Hayabusa Type Fighter MkII animation script by Sanada
	
	--pieces
	local fuselage = piece "fuselage"

	local frontgear = piece "frontgear"
	local leftgear = piece "leftgear"
	local rightgear = piece "rightgear"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"


	--variables
	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	

	--local functions
	local function landinggear()
		--landing gear retract
		Turn(frontgear, x_axis, -1.5, 1)
		Turn(leftgear, x_axis, -1.5, 1)
		Turn(rightgear, x_axis, -1.5, 1)

		--landing gear wait
		WaitForTurn(frontgear, x_axis)
		WaitForTurn(leftgear, x_axis)
		WaitForTurn(rightgear, x_axis)

		--landing gear hide
		Hide(frontgear)
		Hide(leftgear)
		Hide(rightgear)
	end


	--script
	function script.Create()
	end

	function script.Activate()
		StartThread(landinggear)
	end

	function script.Deactivate()
		--landing gear show
		Show(frontgear)
		Show(leftgear)
		Show(rightgear)

		--landing gear extend
		Turn(frontgear, x_axis, 0, 1)
		Turn(leftgear, x_axis, 0, 1)
		Turn(rightgear, x_axis, 0, 1)
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
		return 0
	end