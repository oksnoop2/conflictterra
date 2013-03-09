	--Anti-Air Flak Turret animation script by Sanada
	
	--pieces
	local base = piece "base"
	
	local turret = piece "turret"
	local barrel = piece "barrel"
	local ltopbarrel = piece "ltopbarrel"
	local flare1 = piece "flare1"
	local lbottombarrel = piece "lbottombarrel"
	local flare2 = piece "flare2"
	local rtopbarrel = piece "rtopbarrel"
	local flare3 = piece "flare3"
	local rbottombarrel = piece "rbottombarrel"
	local flare4 = piece "flare4"
	
	local laserturret = piece "laserturret"
	local flare5 = piece "flare5"
	
	local fxflaredamage1 = piece "fxflaredamage1"

	
	--variables
	local currBarrel = 1

	
	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	
	
	--CEGs
	local ct_cannon_narrow = SFX.CEG
	local ct_damage_fire = SFX.CEG + 1
	
	
	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(barrel, x_axis, 0, math.rad(150))
	end
	
	local function RestoreAfterDelay2(unitID)
		Sleep(1000)
		Turn(laserturret, x_axis, -1, math.rad(150))
	end	
	
	local function recoil1()
		Move(ltopbarrel, z_axis, -10, 50)
		WaitForMove(ltopbarrel, z_axis)
		Move(ltopbarrel, z_axis, 0, 20)
	end
	
	local function recoil2()
		Move(lbottombarrel, z_axis, -10, 50)
		WaitForMove(lbottombarrel, z_axis)
		Move(lbottombarrel, z_axis, 0, 20)
	end
	
	local function recoil3()
		Move(rtopbarrel, z_axis, -10, 50)
		WaitForMove(rtopbarrel, z_axis)
		Move(rtopbarrel, z_axis, 0, 20)
	end
	
	local function recoil4()
		Move(rbottombarrel, z_axis, -10, 50)
		WaitForMove(rbottombarrel, z_axis)
		Move(rbottombarrel, z_axis, 0, 20)
	end
	
	local function DamagedSmoke()
		while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
			Sleep(1000)
		end
		while true do
			local health = GetUnitValue(COB.HEALTH)
			if (health <= 50) then
				EmitSfx(fxflaredamage1, ct_damage_fire)
			end
			Sleep(100)
		end
	end
	
	--script
	function script.Create()
		StartThread(DamagedSmoke)
		Turn(laserturret, x_axis, -1)
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

	function script.QueryWeapon2() return flare5 end
	
	function script.AimFromWeapon1() return turret end

	function script.AimFromWeapon2() return laserturret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(turret, y_axis, heading, math.rad(200))
		Turn(barrel, x_axis, -pitch, math.rad(150))
		WaitForTurn(turret, y_axis)
		WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		Turn(laserturret, y_axis, heading, math.rad(200))
		Turn(laserturret, x_axis, -pitch, math.rad(150))
		WaitForTurn(laserturret, y_axis)
		WaitForTurn(laserturret, x_axis)
		StartThread(RestoreAfterDelay2)
		return true
	end
	
	function script.FireWeapon1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_narrow)
			StartThread(recoil2)
		end
		if currBarrel == 2 then
			EmitSfx(flare3, ct_cannon_narrow)
			StartThread(recoil3)
		end
		if currBarrel == 3 then
			EmitSfx(flare4, ct_cannon_narrow)
			StartThread(recoil4)
		end
		if currBarrel == 4 then
			EmitSfx(flare1, ct_cannon_narrow)
			StartThread(recoil1)
		end		
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end		
		if currBarrel == 5 then currBarrel = 1 end
	end

	function script.FireWeapon2()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end