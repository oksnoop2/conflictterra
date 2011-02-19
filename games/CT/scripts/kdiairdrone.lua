	-- by KR
	
	--pieces
	local link = piece "link"
	local lbody = piece "lbody"
	local lflare1 = piece "lflare1"

	local rbody = piece "rbody"
	local rflare1 = piece "rflare1"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2

	function script.Create(unitID)
		while (true) do
			Move(lbody, y_axis, 2, 0.5)
			Move(rbody, y_axis, -2, 0.5)

			WaitForMove(lbody, y_axis)
			WaitForMove(rbody, y_axis)

			Move(lbody, y_axis, -2, 0.5)
			Move(rbody, y_axis, 2, 0.5)

			WaitForMove(lbody, y_axis)
			WaitForMove(rbody, y_axis)
		end
	end

	local function drones()

	end

	function script.QueryWeapon1() return lflare1 end

	function script.QueryWeapon2() return rflare1 end
	
	function script.AimFromWeapon1() return lflare1 end

	function script.AimFromWeapon2() return rflare1 end
	
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
	
	function script.FireWeapon1()
	end

	function script.FireWeapon2()
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end