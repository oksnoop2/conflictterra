function gadget:GetInfo()
  return {
    name      = "Mine Limiter",
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
local is_mine = {UnitDefNames["kdronemine"].id}				--Mine units
local is_minelayer = {UnitDefNames["bantitankmech"].id}		--Minelayer units
----------------------
--local bdefID = Spring.GetUnitDefID()

----------------------

--function mine_names_table()
--	return mine_names --[bdefID]
--end

--function minelayer_names_table()
--	return minelayer_names --[bdefID]
--end

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