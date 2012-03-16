	--Anti-Air Cannon Drone animation by Oksnoop2 and Sanada
	
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
		Move( body, y_axis, -20, 50 )
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

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(body, y_axis, 0, math.rad(150))
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

	function script.QueryWeapon1() return buildflare end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
		Turn(body, y_axis, heading, math.rad(150))
		WaitForTurn(body, y_axis)
		StartThread(RestoreAfterDelay)
		if burrowed then return false
		else
		return true
		end
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end