	local body = piece "body"

	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"

	local ramp = piece "ramp"

	local pad = piece "pad"
	local leftarm = piece "leftarm"
	local rightarm = piece "rightarm"
	local nano = piece "nano"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"

	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8

	function script.Create(unitID)
		Hide( ramp )
	end

	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(90))
	end

	function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

	function script.QueryWeapon3() return flare3 end

        function script.QueryWeapon4() return flare4 end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end

	function script.AimFromWeapon3() return body end

        function script.AimFromWeapon4() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon3( heading, pitch )
                Signal(SIG_AIM_THIR)
		SetSignalMask(SIG_AIM_THIR)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon4( heading, pitch )
		Signal(SIG_AIM_FOUR)
		SetSignalMask(SIG_AIM_FOUR)
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

	function script.FireWeapon4()
	       Sleep(30)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end