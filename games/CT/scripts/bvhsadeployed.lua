	--Sekai Type Tank Deployed animation script by Sanada
	
	--pieces
	local body = piece "body"
	
	local turret = piece "turret"
	local turretbase = piece "turretbase"
	local barrel = piece "barrel"
	local recoilbarrel = piece "recoilbarrel"
	local flare1 = piece "flare1"
	
	local lfrontbrace = piece "lfrontbrace"
	local lfrontspear = piece "lfrontspear"
	local lmidbrace = piece "lmidbrace"
	local lmidspear = piece "lmidspear"
	local lrearbrace = piece "lrearbrace"
	local lrearspear = piece "lfrontspear"

	local rfrontbrace = piece "rfrontbrace"
	local rfrontspear = piece "rfrontspear"
	local rmidbrace = piece "rmidbrace"
	local rmidspear = piece "rmidspear"
	local rrearbrace = piece "rrearbrace"
	local rrearspear = piece "rrearspear"
	
	local lwheel1 = piece "lwheel1"
	local lwheel2 = piece "lwheel2"
	local lwheel3 = piece "lwheel3"
	local lwheel4 = piece "lwheel4"
	
	local rwheel1 = piece "rwheel1"
	local rwheel2 = piece "rwheel2"
	local rwheel3 = piece "rwheel3"
	local rwheel4 = piece "rwheel4"

	
	--signals
	local SIG_AIM = 1
	
	
	--CEGs
	local ct_cannon_tank = SFX.CEG

	
	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(turretbase, y_axis, 0, math.rad(90))
		Turn(barrel, x_axis, -0.4, math.rad(50))
	end
	
	local function braces()
		Turn(lfrontbrace, x_axis, -0.75)
		Turn(lrearbrace, x_axis, 0.75)
		
		Turn(rfrontbrace, x_axis, -0.75)
		Turn(rrearbrace, x_axis, 0.75)
		
		Turn(lfrontbrace, z_axis, 0.3)
		Turn(lmidbrace, z_axis, 0.6)
		Turn(lrearbrace, z_axis, 0.3)
		
		Turn(rfrontbrace, z_axis, -0.3)
		Turn(rmidbrace, z_axis, -0.6)
		Turn(rrearbrace, z_axis, -0.3)
		
		Move(lfrontspear, y_axis, -7, 30)
		Move(lmidspear, y_axis, -7, 30)
		Move(lrearspear, y_axis, -7, 30)
		
		Move(rfrontspear, y_axis, -7, 30)
		Move(rmidspear, y_axis, -7, 30)
		Move(rrearspear, y_axis, -7, 30)
	end
	
	local function recoil_anim()
		Move(recoilbarrel, z_axis, -15, 90)
		
		WaitForMove(recoilbarrel, z_axis)
		
		Move(recoilbarrel, z_axis, 0, 20)
	end
	
	
	--script
	function script.Create()
		StartThread (braces)
		Sleep(500)
		Turn(barrel, x_axis, -0.4, 2)
		Move(body, y_axis, -5, 20)
	end
	
	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return turretbase end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(turretbase, y_axis, heading, math.rad(90))
		Turn(barrel, x_axis, -pitch, math.rad(50))
		WaitForTurn(turretbase, y_axis)
		WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		StartThread(recoil_anim)
		EmitSfx(flare1, ct_cannon_tank)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end