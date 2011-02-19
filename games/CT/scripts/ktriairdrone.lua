	-- by KR
	
	--pieces
	local link = piece "link"
	local lbody = piece "lbody"
	local rbody = piece "rbody"
	local tbody = piece "tbody"

	--signals
	local SIG_AIM = 1

	function script.Create(unitID)
		Spin(link, z_axis, 0.5)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(link, y_axis, 0, math.rad(150))
		Turn(link, x_axis, 0, math.rad(150))
	end

	function script.QueryWeapon1() return link end
	
	function script.AimFromWeapon1() return link end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(link, y_axis, heading, math.rad(150))
        	Turn(link, x_axis, -pitch, math.rad(150))
        	WaitForTurn(link, y_axis)
        	WaitForTurn(link, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end