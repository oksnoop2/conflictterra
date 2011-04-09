	-- by KR
	
	--pieces
	local body = piece "body"

	local baclthigh = piece "lbthigh"
	local baclshin = piece "lbshin"

	local bacrthigh = piece "rbthigh"
	local bacrshin = piece "rbshin"

	local buildflare  = piece "buildflare"

	local forlthigh = piece "lfthigh"
	local forlshin = piece "lfshin"

	local forrthigh = piece "rfthigh"
	local forrshin = piece "rfshin"


	--signals
	local SIG_AIM = 1
	local walk_go = 2
	local walk_stop = 4
	local SIG_BUILD = 8

	function script.Create(unitID)
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
        	Turn(body, y_axis, heading, math.rad(90))
        	WaitForTurn(body, y_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.Querybody() return buildflare end

	function script.AimFromWeapon() return body end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(body, y_axis, 0, math.rad(90))
		WaitForTurn(body, y_axis)
		Sleep(1)
		return 0
	end

	function script.AimFromWeapon() return buildflare end

	function script.QueryWeapon() return buildflare end

	function script.QueryNanoPiece() return buildflare end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 2 )
	                Turn( baclthigh, x_axis, 0, 2 )

	                Turn( forrshin, x_axis, 0.5, 2 )
	                Turn( baclshin, x_axis, -0.5, 2 )

   	                Turn( forlthigh, x_axis, -0.5, 2 )
        	        Turn( bacrthigh, x_axis, 0.5, 2 )

   	                Turn( forlshin, x_axis, 0, 2 )
        	        Turn( bacrshin, x_axis, 0, 2 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	               
	                Turn( bacrthigh, x_axis, 0, 2 )
	                Turn( forlthigh, x_axis, 0, 2 )

   	                Turn( forlshin, x_axis, 0.5, 2 )
        	        Turn( bacrshin, x_axis, -0.5, 2 )

	                Turn( forrthigh, x_axis, -0.5, 2 )
	                Turn( baclthigh, x_axis, 0.5, 2 )

	                Turn( forrshin, x_axis, 0, 2 )
	                Turn( baclshin, x_axis, 0, 2 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
		Turn( forrthigh, x_axis, 0, 2 )
		Turn( baclthigh, x_axis, 0, 2 )
	       
	        Turn( forlthigh, x_axis, 0, 2 )
	        Turn( bacrthigh, x_axis, 0, 2 )

		Turn( forrshin, x_axis, 0, 2 )
		Turn( baclshin, x_axis, 0, 2 )
	       
	        Turn( forlshin, x_axis, 0, 2 )
	        Turn( bacrshin, x_axis, 0, 2 )
	end
	
	
	------------------------ ACTIVATION

local function BurrowAnim()
	Signal(SIG_WALK)
	moving = false
	attacking = false
	--GG.Freeze(unitID,UnitDefs,teamID)
	--EmitSfx(emit_summon,BURROWING)
	--Turn2( chest, x_axis, 90, 200 )
	--Turn2( neck, x_axis, 70, 200 )
	--Turn2( luparm, x_axis, -30, 200 )
	--Turn2( luparm, x_axis, -25, 200 )
	Sleep(200)
	--EmitSfx(emit_summon,BURROWING)
      local x, y, z = Spring.GetUnitPosition(unitID)
	--Spring.PlaySoundFile("sounds/digin.wav", 30, x, y, z)
	--Move( base, y_axis, -20, 50 )
	--Move( emit_summon, y_axis, 10, 50 )
	Sleep(100)
	Spring.SetUnitRulesParam(unitID,'burrowed',1)
	burrowed = true
	return(1)
end

local function UnBurrowAnim()
	Signal(SIG_WALK)
	
	Spring.SetUnitCloak(unitID, 0)
	--EmitSfx(emit_summon,BURROWING)
	--Turn2( chest, x_axis, 0, 200 )
	--Turn2( neck, x_axis, 0, 200 )
	--Turn2( luparm, x_axis, 0, 200 )
	--Turn2( luparm, x_axis, 0, 200 )
	Sleep(200)
	--EmitSfx(emit_summon,BURROWING)
      local x, y, z = Spring.GetUnitPosition(unitID)
	--Spring.PlaySoundFile("sounds/digout.wav", 30, x, y, z)
	--Move( base, y_axis, 0, 50 )
	--Move( emit_summon, y_axis, 0, 50 )
	--EmitSfx(emit_summon,BURROWING)
	--GG.UnFreeze(unitID,UnitDefs,teamID)		
	Sleep(100)
	
	Spring.SetUnitRulesParam(unitID,'burrowed',0)
	burrowed = false
	--SetMoveAnimationSpeed()
	StartThread( Walk )
	return(1)
end


function script.Burrow()
	if burrowed then
		StartThread( UnBurrowAnim )
	else
		StartThread( BurrowAnim )	
	end
end
	
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end

	function script.QueryWeapon1() return buildflare end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	       Sleep(30)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0

	end