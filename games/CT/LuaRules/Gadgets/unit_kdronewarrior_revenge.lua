function gadget:GetInfo()
	return {
		name = "magella's last resort",
		desc = "Spawns magella top on magella death",
		author = "Smoth, Lurker",
		date = "3-9-10",
		license = "Public Domain",
		layer = 1,
		enabled = true
	}
end

local magellaReplaceDefs
	
if (gadgetHandler:IsSyncedCode()) then

  
	function gadget:Initialize()
		magellaReplaceDefs = {} for _,udname in pairs({"kdronewarrior"}) do magellaReplaceDefs[UnitDefNames[udname].id] = true end
	end
	
	function gadget:UnitDestroyed(u,ud,team)
	
		if (Spring.GetUnitHealth(u) < 0 ) then
			if  magellaReplaceDefs[ud] then
				local x,y,z = Spring.GetUnitBasePosition(u) 
				
				newGuy 	= Spring.CreateUnit("kairdrone", x, y, z, 0, team)
			end
		end
	end
end