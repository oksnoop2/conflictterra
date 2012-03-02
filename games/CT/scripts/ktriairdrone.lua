	--Tri Air Drone animation script by Oksnoop2 and Sanada
	
	--pieces
	local link = piece "link"
	local flare = piece "flare"
	local lbody = piece "lbody"
	local rbody = piece "rbody"
	local tbody = piece "tbody"


	--signals
	local SIG_AIM = 1


	--CEGs
	local ct_drone_binder_tri = SFX.CEG	
	
	
	--local functions
	local function binding_beam()
		while (true) do
			EmitSfx(link, ct_drone_binder_tri)
			Sleep(1)
		end
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(link, y_axis, 0, math.rad(1500))
		Turn(link, x_axis, 0, math.rad(1500))
	end


	--script
	function script.Create(unitID)
		Spin(link, z_axis, 0.5)
		StartThread(binding_beam)			
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