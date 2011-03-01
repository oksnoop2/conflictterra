	-- by KR
	
	--pieces
        local waist = piece "waist"

	local body = piece "body"

	local lpod = piece "lpod"
	local flare1 = piece "flare1"

	local rpod = piece "rpod"
	local flare2 = piece "flare2"

        local lthigh = piece "lthigh"
        local lshin = piece "lshin"
        local lfoot = piece "lfoot"

        local rthigh = piece "rthigh"
        local rshin = piece "rshin"
        local rfoot = piece "rfoot"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local walk_stop = 8
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end

---------- Sprint code
local SIG_SPRINT = 16
local speedFactor = 4
local myOrigSpeed = UnitDefs[unitDefID].speed
local myOrigAcc = UnitDefs[unitDefID].maxAcc
local myOrigTurnRate = UnitDefs[unitDefID].turnRate

local function SprintEffects()
	Signal(SIG_SPRINT)
	SetSignalMask(SIG_SPRINT)
end
function StartSprint()
    Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {
        maxSpeed    = myOrigSpeed*speedFactor,
        accRate     = myOrigAcc*speedFactor,
        turnRate    = myOrigTurnRate*speedFactor,
        })
	StartThread(SprintEffects)
end
function StopSprint()
    Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {
        maxSpeed    = myOrigSpeed,
        accRate     = myOrigAcc,
        turnRate    = myOrigTurnRate,
    })
    Signal(SIG_SPRINT)
end
---------- End sprint code

	local function walk()
		SetSignalMask(walk_go)
		Move (waist, y_axis, 4, 2)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 3 )
	                Turn( lthigh, x_axis, 0.5, 3 )
			Turn( lfoot, x_axis, 0, 3 )
	               
	                Turn( rshin, x_axis, 2, 3 )
	                Turn( rthigh, x_axis, -1, 3 )
			Turn( rfoot, x_axis, 0, 2 )
	               
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 2, 3 )
	                Turn( lthigh, x_axis, -1, 3 )
			Turn( lfoot, x_axis, 0, 3 )
	               
	                Turn( rshin, x_axis, -0.75, 3 )
	                Turn( rthigh, x_axis, 0.5, 3 )
			Turn( rfoot, x_axis, 0, 3 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( waist, y_axis, 0, 4 )

		Turn( lshin, x_axis, 0, 3 )
		Turn( lthigh, x_axis, 0, 3 )
		Turn( lfoot, x_axis, 0, 3 )
	       
	        Turn( rshin, x_axis, 0, 3 )
	        Turn( rthigh, x_axis, 0, 3 )
		Turn( rfoot, x_axis, 0, 3 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
        	Turn(lpod, x_axis, 0, math.rad(100))
        	Turn(rpod, x_axis, 0, math.rad(100))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return lpod end

	function script.AimFromWeapon2() return rpod end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(lpod, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(lpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rpod, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rpod, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare1, orc_machinegun_flash)
		EmitSfx(flare1, orc_machinegun_muzzle)	
               Sleep(30)
	end

	function script.FireWeapon2()
		EmitSfx(flare2, orc_machinegun_flash)
		EmitSfx(flare2, orc_machinegun_muzzle)	
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end