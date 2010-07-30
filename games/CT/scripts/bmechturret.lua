	-- by KR
	
	--pieces
	local ground = piece "ground"
	local turret = piece "turret"
	local forflap = piece "forflap"
	local rearflap = piece "rearflap"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	
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

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return turret end

	function script.AimFromWeapon3() return turret end
	
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

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Move(turret, y_axis, 0, math.rad(500))
        	Turn(forflap, x_axis, 0, math.rad(90))
        	Turn(rearflap, x_axis, 0, math.rad(90))
		WaitForMove(turret, y_axis)
        	WaitForTurn(forflap, x_axis)
        	WaitForTurn(rearflap, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
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
		Sleep(30)
	end

	function script.FireWeapon2()
		Sleep(30)
	end

	function script.FireWeapon3()
		Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end