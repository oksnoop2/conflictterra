	--Takeda Class Cruiser animation script by Sanada
	--Lots of transport help from prominent members of the Spring community

	--pieces
	local body = piece "body"

	local lengine = piece "lengine"
	local fxflare1 = piece "fxflare1"
	local rengine = piece "rengine"
	local fxflare2 = piece "fxflare2"

	local lupperstrut = piece "lupperstrut"
	local llowerstrut = piece "llowerstrut"
	
	local rupperstrut = piece "rupperstrut"
	local rlowerstrut = piece "rlowerstrut"

	local lfrontfoot = piece "lfrontfoot"
	local rfrontfoot = piece "rfrontfoot"
	
	local lrearfoot = piece "lrearfoot"
	local rrearfoot = piece "rrearfoot"

	local link = piece "link"
	
	local fxflaredamage1 = piece "fxflaredamage1"
	local fxflaredamage2 = piece "fxflaredamage2"
	local fxflaredamage3 = piece "fxflaredamage3"

	
	--locals
	local AttachUnit = Spring.UnitScript.AttachUnit
	local DropUnit = Spring.UnitScript.DropUnit

	
	--CEGs
	local ct_damage_fire = SFX.CEG
	
	
	--local functions
	local function DamagedSmoke()
		while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
			Sleep(1000)
		end
		while true do
			local health = GetUnitValue(COB.HEALTH)
			if (health <= 75) then
				EmitSfx(fxflaredamage1, ct_damage_fire)
			end
			if (health <= 50) then
				EmitSfx(fxflaredamage2, ct_damage_fire)
			end
			if (health <= 25) then
				EmitSfx(fxflaredamage3, ct_damage_fire)
			end
			Sleep(100)
		end
	end


	--script
	function script.Create(unitID)
		StartThread(DamagedSmoke)
	
		--Engines down z-axis
		Turn(lengine, z_axis, 0.6)
		Turn(rengine, z_axis, -0.6)
		
		--Feet come out y-axis
		Turn(lfrontfoot, y_axis, 0.6)
		Turn(rfrontfoot, y_axis, -0.6)
		Turn(lrearfoot, y_axis, -0.6)
		Turn(rrearfoot, y_axis, 0.6)
		
		--Feet come out x-axis
		Turn(lfrontfoot, x_axis, 0.6, 0.6)
		Turn(rfrontfoot, x_axis, 0.6, 0.6)
		Turn(lrearfoot, x_axis, -0.6, 0.6)
		Turn(rrearfoot, x_axis, -0.6, 0.6)
		
		--Struts up
		Move(lupperstrut, y_axis, 18)
		Move(rupperstrut, y_axis, 18)
		Move(llowerstrut, y_axis, 20)
		Move(rlowerstrut, y_axis, 20)
	end
	
	function script.Activate()	
		--Engines forward x-axis
		Turn(lengine, x_axis, 1.5, 1.5)
		Turn(rengine, x_axis, 1.5, 1.5)
		
		--Engines forward z-axis
		Turn(lengine, z_axis, 0, 0.6)
		Turn(rengine, z_axis, 0, 0.6)
		
		--Feet tucked up y-axis
		Turn(lfrontfoot, y_axis, 0, 0.6)
		Turn(rfrontfoot, y_axis, 0, 0.6)
		Turn(lrearfoot, y_axis, 0, 0.6)
		Turn(rrearfoot, y_axis, 0, 0.6)
		
		--Feet tucked up x-axis
		Turn(lfrontfoot, x_axis, 0, 0.6)
		Turn(rfrontfoot, x_axis, 0, 0.6)
		Turn(lrearfoot, x_axis, 0, 0.6)
		Turn(rrearfoot, x_axis, 0, 0.6)
	end
	
	function script.Deactivate()
		--Engines down x-axis
		Turn(lengine, x_axis, 0, 1.5)
		Turn(rengine, x_axis, 0, 1.5)
		
		--Engines down z-axis
		Turn(lengine, z_axis, 0.6, 0.6)
		Turn(rengine, z_axis, -0.6, 0.6)
		
		--Feet come out y-axis
		Turn(lfrontfoot, y_axis, 0.6, 0.6)
		Turn(rfrontfoot, y_axis, -0.6, 0.6)
		Turn(lrearfoot, y_axis, -0.6, 0.6)
		Turn(rrearfoot, y_axis, 0.6, 0.6)
		
		--Feet come out x-axis
		Turn(lfrontfoot, x_axis, 0.6, 0.6)
		Turn(rfrontfoot, x_axis, 0.6, 0.6)
		Turn(lrearfoot, x_axis, -0.6, 0.6)
		Turn(rrearfoot, x_axis, -0.6, 0.6)
	end

	function script.BeginTransport(passengerID)
		--Struts Down
		Move(lupperstrut, y_axis, 0, 18)
		Move(rupperstrut, y_axis, 0, 18)
		Move(llowerstrut, y_axis, 0, 20)
		Move(rlowerstrut, y_axis, 0, 20)
	end

	function script.QueryTransport(passengerID)
		return link
	end
	
	function script.StartUnload()
	end
	
	function script.TransportDrop(passengerID, x, y, z)
		DropUnit(passengerID)
	end

	function script.EndTransport(each, passengerID)
		--Struts Up
		Move(lupperstrut, y_axis, 18, 18)
		Move(rupperstrut, y_axis, 18, 18)
		Move(llowerstrut, y_axis, 20, 20)
		Move(rlowerstrut, y_axis, 20, 20)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
