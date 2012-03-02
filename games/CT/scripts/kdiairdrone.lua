	--Di Air Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local link = piece "link"
	local lbody = piece "lbody"
	local lflare1 = piece "lflare1"

	local rbody = piece "rbody"
	local rflare1 = piece "rflare1"

	local binderbeampiece = piece "binderbeam"
	local binderbeampiece2 = piece "binderbeam2"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2


	--CEGs
	local ct_drone_binder_di = SFX.CEG


	--local functions
	local function binderbeam()
		while (true) do
			EmitSfx(link, ct_drone_binder_di)		
			Sleep(1)
		end
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(lflare1, y_axis, 0, math.rad(90))
		Turn(rflare1, y_axis, 0, math.rad(90))
        Turn(lflare1, x_axis, 0, math.rad(50))
        Turn(rflare1, x_axis, 0, math.rad(50))
	end


	--script
	function script.Create(unitID)
		StartThread(binderbeam)
		while (true) do
			Move(lbody, y_axis, 2, 0.5)
			Move(rbody, y_axis, -2, 0.5)

			WaitForMove(lbody, y_axis)
			WaitForMove(rbody, y_axis)
			Sleep(1)

			Move(lbody, y_axis, -2, 0.5)
			Move(rbody, y_axis, 2, 0.5)

			WaitForMove(lbody, y_axis)
			WaitForMove(rbody, y_axis)
			Sleep(1)
		end
	end

	function script.QueryWeapon1() return lflare1 end

	function script.QueryWeapon2() return rflare1 end
	
	function script.AimFromWeapon1() return lflare1 end

	function script.AimFromWeapon2() return rflare1 end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        Turn(lflare1, y_axis, heading, math.rad(90))
        Turn(lflare1, x_axis, -pitch, math.rad(50))
        WaitForTurn(lflare1, y_axis)
        WaitForTurn(lflare1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
        Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        Turn(rflare1, y_axis, heading, math.rad(90))
        Turn(rflare1, x_axis, -pitch, math.rad(50))
        WaitForTurn(rflare1, y_axis)
        WaitForTurn(rflare1, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end

	function script.FireWeapon2()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end