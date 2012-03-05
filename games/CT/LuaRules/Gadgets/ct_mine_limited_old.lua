function gadget:GetInfo()
  return {
    name      = "Mine Limiter Old",
    desc      = "Limits number of mines able to be built",
    author    = "Sanada",
    date      = "March 1 2012",
    license   = "Public Domain",
    layer     = 0,
    enabled   = false  --  loaded by default	
  }
end

if (gadgetHandler:IsSyncedCode()) then
--------Config--------
local max_mines = 4
----------------------


function gadget:AllowUnitCreation(unitDefID, builderID, builderTeam, x, y, z)
	if (is_mine(unitDefID) and is_minelayer(builderID)) then
		return minesPerUnit[unitID]
	end
	if (not minesPerUnit[unitID]) then
		minesPerUnit[unitID] = 0
		else
		minesPerUnit[unitID] = minesPerUnit[unitID]+1			
	end
	if (minesPerUnit[unitID] == max_mines) then
	return false
	end

end

end


if (not gadgetHandler:IsSyncedCode()) then

end