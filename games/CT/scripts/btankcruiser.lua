	--Mori Class Cruiser animation script by Sanada

	--pieces
	local body = piece "body"

	local topdoor = piece "topdoor"
	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"

	local mainstrut = piece "mainstrut"
	local cage = piece "cage"
	local pad = piece "pad"
	local leftgate = piece "leftgate"
	local gateflare1 = piece "gateflare1"
	local gateflare2 = piece "gateflare2"
	local rightgate = piece "rightgate"
	local gateflare3 = piece "gateflare3"
	local gateflare4 = piece "gateflare4"

	local lfrontgear = piece "lfrontgear"
	local rfrontgear = piece "rfrontgear"

	local lbackgear = piece "lbackgear"
	local rbackgear = piece "rbackgear"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

	local leftflare = piece "leftflare"
	local rightflare = piece "rightflare"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"


	--variables
	local currBarrel = 1
	local currBarrel2 = 1
	local currBarrel3 = 1


	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2
	local SIG_AIM_3 = 3


	--CEGs
        local ct_missile_smokecloud = SFX.CEG


	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(flare1, y_axis, 0, math.rad(90))
		Turn(flare2, y_axis, 0, math.rad(90))
		Turn(flare3, y_axis, 0, math.rad(90))
		Turn(flare4, y_axis, 0, math.rad(90))
        	Turn(flare1, x_axis, 0, math.rad(50))
        	Turn(flare2, x_axis, 0, math.rad(50))
        	Turn(flare3, x_axis, 0, math.rad(50))
        	Turn(flare4, x_axis, 0, math.rad(50))
	end

	local function RestoreAfterDelay2(unitID)
		Sleep(1000)
		Turn(flare5, y_axis, 0, math.rad(90))
		Turn(flare6, y_axis, 0, math.rad(90))
		Turn(flare7, y_axis, 0, math.rad(90))
		Turn(flare8, y_axis, 0, math.rad(90))
        	Turn(flare5, x_axis, 0, math.rad(50))
        	Turn(flare6, x_axis, 0, math.rad(50))
        	Turn(flare7, x_axis, 0, math.rad(50))
        	Turn(flare8, x_axis, 0, math.rad(50))
	end

	local function RestoreAfterDelay3(unitID)
		Sleep(1000)
		Turn(leftflare, y_axis, 0, math.rad(90))
		Turn(rightflare, y_axis, 0, math.rad(90))
        	Turn(leftflare, x_axis, 0, math.rad(50))
        	Turn(rightflare, x_axis, 0, math.rad(50))
	end


	--script
	function script.Create(unitID)
	end

	function script.Activate()
		--front gear retract
		Turn( lfrontgear, z_axis, 0, 1 )
		Turn( rfrontgear, z_axis, 0, 1 )
		Move( lfrontgear, x_axis, 0, 20 )
		Move( rfrontgear, x_axis, 0, 20 )

		--back gear retract
		Move( lbackgear, y_axis, 0, 20 )
		Move( rbackgear, y_axis, 0, 20 )
		Move( lbackgear, x_axis, 0, 20 )
		Move( rbackgear, x_axis, 0, 20 )
	end

	function script.Deactivate()
		--front gear extend
		Turn( lfrontgear, z_axis, -0.5, 1 )
		Turn( rfrontgear, z_axis, 0.5, 1 )
		Move( lfrontgear, x_axis, 30, 20 )
		Move( rfrontgear, x_axis, -30, 20 )

		--back gear extend
		Move( lbackgear, y_axis, -20, 20 )
		Move( rbackgear, y_axis, -20, 20 )
		Move( lbackgear, x_axis, 20, 20 )
		Move( rbackgear, x_axis, -20, 20 )
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

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare5
			end
		if (currBarrel2 == 2) then
			return flare6
			end
		if (currBarrel2 == 3) then
			return flare7
		else 
			return flare8
		end
	end

	function script.QueryWeapon3()
		if (currBarrel3 == 1) then
			return leftflare
		else 
			return rightflare
		end
	end
	
	function script.AimFromWeapon1() return body end

        function script.AimFromWeapon2() return body end

        function script.AimFromWeapon3() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(flare1, y_axis, heading, math.rad(90))
        	Turn(flare2, y_axis, heading, math.rad(90))
        	Turn(flare3, y_axis, heading, math.rad(90))
        	Turn(flare4, y_axis, heading, math.rad(90))
        	Turn(flare1, x_axis, -pitch, math.rad(50))
        	Turn(flare2, x_axis, -pitch, math.rad(50))
        	Turn(flare3, x_axis, -pitch, math.rad(50))
        	Turn(flare4, x_axis, -pitch, math.rad(50))
        	WaitForTurn(flare1, y_axis)
        	WaitForTurn(flare2, y_axis)
        	WaitForTurn(flare3, y_axis)
        	WaitForTurn(flare4, y_axis)
        	WaitForTurn(flare1, x_axis)
        	WaitForTurn(flare2, x_axis)
        	WaitForTurn(flare3, x_axis)
        	WaitForTurn(flare4, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
        	Turn(flare5, y_axis, heading, math.rad(90))
        	Turn(flare6, y_axis, heading, math.rad(90))
        	Turn(flare7, y_axis, heading, math.rad(90))
        	Turn(flare8, y_axis, heading, math.rad(90))
        	Turn(flare5, x_axis, -pitch, math.rad(50))
        	Turn(flare6, x_axis, -pitch, math.rad(50))
        	Turn(flare7, x_axis, -pitch, math.rad(50))
        	Turn(flare8, x_axis, -pitch, math.rad(50))
        	WaitForTurn(flare5, y_axis)
        	WaitForTurn(flare6, y_axis)
        	WaitForTurn(flare7, y_axis)
        	WaitForTurn(flare8, y_axis)
        	WaitForTurn(flare5, x_axis)
        	WaitForTurn(flare6, x_axis)
        	WaitForTurn(flare7, x_axis)
        	WaitForTurn(flare8, x_axis)
		StartThread(RestoreAfterDelay2)
		return true
	end

	function script.AimWeapon3( heading, pitch )
		Signal(SIG_AIM_3)
		SetSignalMask(SIG_AIM_3)
        	Turn(leftflare, y_axis, heading, math.rad(90))
        	Turn(rightflare, y_axis, heading, math.rad(90))
        	Turn(leftflare, x_axis, -pitch, math.rad(50))
        	Turn(rightflare, x_axis, -pitch, math.rad(50))
        	WaitForTurn(leftflare, y_axis)
        	WaitForTurn(rightflare, y_axis)
        	WaitForTurn(leftflare, x_axis)
        	WaitForTurn(rightflare, x_axis)
		StartThread(RestoreAfterDelay3)
		return true
	end
	
	function script.Shot1()
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 4 end
		if currBarrel == 5 then currBarrel = 1 end
	end

	function script.Shot2()
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 3 end
		if currBarrel2 == 4 then currBarrel2 = 4 end
		if currBarrel2 == 5 then currBarrel2 = 1 end
	end

	function script.Shot3()
		if currBarrel3 == 1 then
			EmitSfx(rightflare, ct_missile_smokecloud)
		end
		if currBarrel3 == 2 then
			EmitSfx(leftflare, ct_missile_smokecloud)
		end
		currBarrel3 = currBarrel3 + 1
		if currBarrel3 == 3 then currBarrel3 = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end