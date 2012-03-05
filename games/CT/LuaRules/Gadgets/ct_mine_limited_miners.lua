function gadget:GetInfo()
  return {
    name      = "Mine Limiter Miners",
    desc      = "Limits number of mines able to be built",
    author    = "Sanada, major assistance from gajop and Knorke",
    date      = "March 1 2012",
    license   = "Public Domain",
    layer     = 0,
    enabled   = false  --  loaded by default	
  }
end

if (gadgetHandler:IsSyncedCode()) then
--------Config--------
local max_mines = 4								--Maximum number of mines allowed per unit
local mines_name = {"kdronemine"}				--Mine units
local minelayers_name = {"bantitankmech"}		--Minelayer units
----------------------
--------Locals--------
local is_mine = {}
local is_minelayer = {}
----------------------


function gadget:Initialize()
	make_mine_table()
	make_minelayer_table ()
end

------Find Mines------

function make_mine_table()
	is_mines = {}
	local all_units = Spring.GetAllUnits ()
	for i in pairs(all_units) do
		local unitDefID = Spring.GetUnitDefID(all_units[i])
		if (is_mine_type (unitDefID)==true) then
			add_mine (all_units[i])
		end
	end
end

function add_mine (unitID)
	mines [unitID] = {}
	mines [unitID].alive = true
end

function is_mine (unitID)
	if (mines [unitID] ~= nil) then return true else return false end	
end

function is_mine_type (unitDefID)
	if (unitDefID == nil) then return false end
	local unitDef = UnitDefs[unitDefID]
	if (unitDef == nil) then return false end
	local unitname = unitDef.name
	for _,v in pairs(mines_name) do
		if v == unitname then return true end
	end	
	return false
end

----------------------

----Find Minelayers---

function make_minelayer_table()
	is_minelayer = {}
	local all_units = Spring.GetAllUnits ()
	for i in pairs(all_units) do
		local unitDefID = Spring.GetUnitDefID(all_units[i])
		if (is_minelayer_type (unitDefID)==true) then
			add_minelayer (all_units[i])
		end
	end
end

function add_minelayer (unitID)
	minelayers [unitID] = {}
	minelayers [unitID].alive = true	
end

function is_minelayer (unitID)
	if (minelayers [unitID] ~= nil) then return true else return false end
end

function is_minelayer_type (unitDefID)
	if (unitDefID == nil) then return false end
	local unitDef = UnitDefs[unitDefID]
	if (unitDef == nil) then return false end
	local unitname = unitDef.name
	for _,v in pairs(minelayers_name) do
		if v == unitname then return true end
	end	
	return false
end

----------------------

----------------------

function gadgetHandler:UnitCreated(unitID, unitDefID, teamID, builderID)
   if (not (is_mine(unitDefID) and is_minelayer(builderID))) then
      return
   end
   if (not minesPerUnit[builderID]) then
      minesPerUnit[builderID] = 1
   else
      minesPerUnit[builderID] = minesPerUnit[builderID]+1         
   end
end

function gadget:AllowUnitCreation(unitDefID, builderID, builderTeam, x, y, z)
   if (not (is_mine(unitDefID) and is_minelayer(builderID))) then
      return true
   end
   if (not minesPerUnit[builderID]) then
      return true
   end
   return (minesPerUnit[builderID] <= max_mines)
end

function gadgetHandler:UnitDestroyed(unitID, unitDefID, teamID, attackerID, attackerDefID, attackerTeamID)
   if (is_minelayer(unitID)) then
      minesPerUnit[unitID] = nil
   end
end

end


if (not gadgetHandler:IsSyncedCode()) then

end