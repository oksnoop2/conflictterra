
	local body = piece "body"

	local bottomdoor = piece "bottomdoor"
	local topdoor = piece "topdoor"

	local link = piece "link"

	local function Start_Trans()
		Turn(topdoor, x_axis, 1, 1)
		Turn(bottomdoor, x_axis, -1.5, 1)
		Sleep(2500)
		Turn(topdoor, x_axis, 0, 1)
		Turn(bottomdoor, x_axis, 0, 1)
	end

	function script.Create(unitID)
	end

	function script.TransportPickup ( passengerID ) 
		UnitScript.AttachUnit ( link, passengerID )
		StartThread(Start_Trans) 
	end

	function script.TransportDrop ( passengerID, x, y, z )
		UnitScript.DropUnit ( passengerID, x, y, z ) 
		StartThread(Start_Trans)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
