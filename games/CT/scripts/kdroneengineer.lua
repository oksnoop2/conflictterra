	--Drone Builder animation script by Oksnoop2 and Sanada
	
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
	local SIG_BUILD = 4


	--CEGs
	local ct_dirt = SFX.CEG	
	
	
	--local functions
	local function Walk()
	        SetSignalMask( walk_go )
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
	                Sleep(1)
	               
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
	                Sleep(1)
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
	
	local function BurrowAnim()
		--Stop Movement
		Signal(SIG_WALK)
		moving = false
		Spring.MoveCtrl.Enable(unitID)
		attacking = false
		
		--Set Cloak
		Spring.SetUnitCloak(unitID, 1)		
		Sleep(200)
		
		--Play sound
		local x, y, z = Spring.GetUnitPosition(unitID)
		--Spring.PlaySoundFile("sounds/digin.wav", 30, x, y, z)
		
		--Animation
		Move( body, y_axis, -15, 50 )
		EmitSfx(body, ct_dirt)
		Sleep(100)
		EmitSfx(body, ct_dirt)
		
		--??
		Spring.SetUnitRulesParam(unitID,'burrowed',1)
		burrowed = true
		return(1)
	end

	local function UnBurrowAnim()
		--Allow Movement
		Signal(SIG_WALK)
		moving = true
		Spring.MoveCtrl.Disable(unitID)
		attacking = true
		
		--Turn off cloak
		Spring.SetUnitCloak(unitID, 0)
		Sleep(200)
		
		--Play sound
		local x, y, z = Spring.GetUnitPosition(unitID)
		--Spring.PlaySoundFile("sounds/digout.wav", 30, x, y, z)
		
		--Animation
		Move( body, y_axis, 0, 50 )		
		Sleep(100)
		StartThread( Walk )
		EmitSfx(body, ct_dirt)
		Sleep(100)
		EmitSfx(body, ct_dirt)		
		Sleep(1000)
		StartThread( StopWalk)
		
		--??
		Spring.SetUnitRulesParam(unitID,'burrowed',0)
		burrowed = false
		return(1)
	end	


	--script
	function script.Create(unitID)
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

	function script.QueryNanoPiece() return buildflare end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		Turn(body, y_axis, heading, math.rad(90))
		WaitForTurn(body, y_axis)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		if burrowed then return 0
		else
		return 1
		end
	end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn(body, y_axis, 0, math.rad(90))
		WaitForTurn(body, y_axis)
		Sleep(1)
		return 0
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end