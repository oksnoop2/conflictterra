	--Tri Air Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local link = piece "link"
	local flare = piece "flare"
	local lbody = piece "lbody"
	local rbody = piece "rbody"
	local tbody = piece "tbody"


	--signals
	local SIG_AIM = 1


	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(link, y_axis, 0, math.rad(1500))
		Turn(link, x_axis, 0, math.rad(1500))
	end


	--script
	function script.Create(unitID)
		Spin(link, z_axis, 0.5)
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return flare end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(flare, y_axis, heading, math.rad(1500))
        	Turn(flare, x_axis, -pitch, math.rad(1500))
        	WaitForTurn(flare, y_axis)
        	WaitForTurn(flare, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end