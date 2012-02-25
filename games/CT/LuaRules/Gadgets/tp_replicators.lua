function gadget:GetInfo()
  return {
    name      = "replicators",
    desc      = "makes replicators replicate",
    author    = "knorke",
    date      = "4 Nov 2010",
    license   = "GNU GPL, v2 or later or horse",
    layer     = 0,
    enabled   = false,  --  loaded by default?
  }
end

repli_name = "kdrone"

if not gadgetHandler:IsSyncedCode() then
  return false -- no unsynced code
end


local replis = {}
local reproduce_effect = "ct_firetrail"

function gadget:Initialize()
	make_repli_table()
end

function gadget:UnitFinished(unitID, unitDefID, teamID)
	if (is_repli_type (unitDefID)) then add_repli (unitID) end
end

function gadget:UnitDestroyed(unitID, unitDefID, teamID, attackerID)
	if (is_repli_type (unitDefID)) then replis[unitID] = nil end
end


function gadget:GameFrame(frameNum) 
	if (frameNum % 32 ~= 0) then return end
	--Spring.Echo ("yeaaah replis")
	_G.TPreplis = replis	
	for i in pairs(replis) do
		replis[i].lifetime =replis[i].lifetime+1
		if (replis[i].power < 100) then replis[i].power =replis[i].power+10 end
		--Spring.Echo ("repli .." .. " power" .. replis[i].power)
		if (replis[i].power > 99) then procreate (i) end
		if (replis[i].lifetime > 5 ) then Spring.AddUnitDamage (i, 50) end
	end
end

function procreate (unitID)
	replis[unitID].power = 0
	pcTeam = Spring.GetUnitTeam (unitID)
	local x, y, z = Spring.GetUnitPosition(unitID)
	local nr = Spring.CreateUnit (repli_name, x+75,y,z, math.random(0,3), pcTeam)  --spawn a new repli
	Spring.SpawnCEG(reproduce_effect, x+75, y, z)
	Spring.GiveOrderToUnit (nr, CMD.GUARD, { unitID },            { "shift" })
end
		

function make_repli_table()
	replis = {}
	local all_units = Spring.GetAllUnits ()
	for i in pairs(all_units) do
		local unitDefID = Spring.GetUnitDefID(all_units[i])
		if (is_repli_type (unitDefID)==true) then
			add_repli (all_units[i])
		end		
	end
end

function add_repli (unitID)
	replis [unitID] = {}
	replis [unitID].alive = true
	replis [unitID].power = 0
	replis [unitID].lifetime = 0	
	--marker_on_unit (unitID, "repli added")
end

function is_repli_type (unitDefID)
	if (unitDefID == nil) then return false end
	local unitDef = UnitDefs[unitDefID]
	if (unitDef == nil) then return false end
	if (unitDef.name == repli_name) then return true end
	return false
end

