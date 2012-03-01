	--Takeda Class Cruiser animation script by Sanada
	--Lots of transport help from prominent members of the Spring community

	--pieces
	local body = piece "body"

	local forljet = piece "forljet"
	local forrjet = piece "forrjet"

	local larm = piece "larm"
	local rarm = piece "rarm"

	local rearljet = piece "rearljet"
	local rearrjet = piece "rearrjet"

	local link = piece "link"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare4 = piece "flare3"
	local flare3 = piece "flare4"

	
	--locals
	local AttachUnit = Spring.UnitScript.AttachUnit

	
	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2


	--script
	function script.Create(unitID)
	end

	function script.BeginTransport(passengerID)
	end

	function script.QueryTransport(passengerID)
		return link
	end

	function script.EndTransport(each, passengerID)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end
