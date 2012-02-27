	--Sanada Class Cruiser animation script by Sanada

	--pieces
	local body = piece "body"

	local frontgear = piece "frontgear"
	local leftgear = piece "leftgear"
	local rightgear = piece "rightgear"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"


	--variables
	local currBarrel = 1
	local currBarrel2 = 1


	--signals
	local SIG_AIM = 1
	local SIG_AIM_2 = 2


	--CEGs
    local ct_missile_smokecloud = SFX.CEG


	--local functions
	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(flare1, y_axis, 0, math.rad(90))
		Turn(flare2, y_axis, 0, math.rad(90))
		Turn(flare3, y_axis, 0, math.rad(90))
		Turn(flare1, x_axis, 0, math.rad(50))
		Turn(flare2, x_axis, 0, math.rad(50))
		Turn(flare3, x_axis, 0, math.rad(50))
	end

	local function RestoreAfterDelay2(unitID)
		Sleep(1000)
		Turn(flare4, y_axis, 0, math.rad(90))
		Turn(flare5, y_axis, 0, math.rad(90))
		Turn(flare6, y_axis, 0, math.rad(90))
		Turn(flare4, x_axis, 0, math.rad(50))
		Turn(flare5, x_axis, 0, math.rad(50))
		Turn(flare6, x_axis, 0, math.rad(50))
	end


	--script
	function script.Create(unitID)
	end

	function script.Activate()
		Move( frontgear, y_axis, 0, 25 )
		Move( frontgear, z_axis, 0, 25 )	
		Turn( leftgear, z_axis, 0, 2 )
		Turn( rightgear, z_axis, 0, 2 )
		Move( leftgear, x_axis, 0, 25 )
		Move( rightgear, x_axis, 0, 25 )
	end

	function script.Deactivate()
		Move( frontgear, y_axis, -10, 25 )
		Move( frontgear, z_axis, 5, 25 )	
		Turn( leftgear, z_axis, -0.5, 2 )
		Turn( rightgear, z_axis, 0.5, 2 )
		Move( leftgear, x_axis, 15, 25 )
		Move( rightgear, x_axis, -15, 25 )
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
			end
		if (currBarrel == 2) then
			return flare2
		else 
			return flare3
		end
	end

	function script.QueryWeapon2()
		if (currBarrel2 == 1) then 
			return flare4
			end
		if (currBarrel2 == 2) then
			return flare5
		else 
			return flare6
		end
	end
	
	function script.AimFromWeapon1() return body end

    function script.AimFromWeapon2() return body end
	
	function script.AimWeapon1( heading, pitch )
        Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(flare1, y_axis, heading, math.rad(90))
        	Turn(flare2, y_axis, heading, math.rad(90))
        	Turn(flare3, y_axis, heading, math.rad(90))
        	Turn(flare1, x_axis, -pitch, math.rad(50))
        	Turn(flare2, x_axis, -pitch, math.rad(50))
        	Turn(flare3, x_axis, -pitch, math.rad(50))
        	WaitForTurn(flare1, y_axis)
        	WaitForTurn(flare2, y_axis)
        	WaitForTurn(flare3, y_axis)
        	WaitForTurn(flare1, x_axis)
        	WaitForTurn(flare2, x_axis)
        	WaitForTurn(flare3, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_2)
		SetSignalMask(SIG_AIM_2)
        	Turn(flare4, y_axis, heading, math.rad(90))
        	Turn(flare5, y_axis, heading, math.rad(90))
        	Turn(flare6, y_axis, heading, math.rad(90))
        	Turn(flare4, x_axis, -pitch, math.rad(50))
        	Turn(flare5, x_axis, -pitch, math.rad(50))
        	Turn(flare6, x_axis, -pitch, math.rad(50))
        	WaitForTurn(flare4, y_axis)
        	WaitForTurn(flare5, y_axis)
        	WaitForTurn(flare6, y_axis)
        	WaitForTurn(flare4, x_axis)
        	WaitForTurn(flare5, x_axis)
        	WaitForTurn(flare6, x_axis)
		StartThread(RestoreAfterDelay2)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_missile_smokecloud)
		end
		if currBarrel == 2 then
			EmitSfx(flare3, ct_missile_smokecloud)
		end
		if currBarrel == 3 then
			EmitSfx(flare1, ct_missile_smokecloud)
		end		
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 3 end
		if currBarrel == 4 then currBarrel = 1 end
	end

	function script.Shot2()
		if currBarrel2 == 1 then
			EmitSfx(flare5, ct_missile_smokecloud)
		end	
		if currBarrel2 == 2 then
			EmitSfx(flare6, ct_missile_smokecloud)
		end	
		if currBarrel2 == 3 then
			EmitSfx(flare4, ct_missile_smokecloud)
		end			
		currBarrel2 = currBarrel2 + 1
		if currBarrel2 == 2 then currBarrel2 = 2 end
		if currBarrel2 == 3 then currBarrel2 = 3 end
		if currBarrel2 == 4 then currBarrel2 = 1 end
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end