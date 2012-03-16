function gadget:GetInfo()
	return 
	{
		name = "SkeletonTransformCommand.lua",
		desc = "Allows Skeletons to burrow/unborrow.",
		author = "aZaremoth & CarRepairer",
		date = "March 12th, 2009",
		license = "Public Domain, or the least-restrictive license your country allows.",
		layer = 1,
		enabled = true
	}
end
------------------------------------------------------------------------
local Burrowers = {
	[UnitDefNames.klightdrone.id] = "klightdrone",
	[UnitDefNames.kdroneengineer.id] = "kdroneengineer",
	[UnitDefNames.kdronewarrior.id] = "kdronewarrior",
}

local CMD_BURROW = 32630

local echo = Spring.Echo

if not GG.attUnits then
	GG.attUnits = {}
end

if (gadgetHandler:IsSyncedCode()) then
-----------------------------------------------SYNCED
----------------------------------------------------------------
------------------------------------------------------------------------
Burrow = {
		id=CMD_BURROW,
		type=CMDTYPE.ICON,
		name="Burrow",
		texture="buttons/burrow.png",
		tooltip="Burrow/Unburrow.\r\nBurrowed units are hidden and unable to move or attack.",
		action="borrow"
		}

function gadget:UnitFinished(u, unitDefID, team)
	if Burrowers [unitDefID] then
		Spring.InsertUnitCmdDesc(u, Burrow)
	end
end

function gadget:CommandFallback(u, unitDefID, team, cmd, param, opts)
	if Burrowers [unitDefID] then
		if cmd ~= CMD_BURROW then
			return false  --// command was not used
		end
		
		Spring.UnitScript.CallAsUnit(u, Spring.UnitScript.GetScriptEnv(u).script.Burrow)
		return true, true  --// command was used, remove it
	end
end

function gadget:AllowCommand(u, unitDefID, team, cmd, param, opts)
	if cmd  == CMD_BURROW then
		GG.attUnits[u] = team
		
		return true
	end
	return true
end



------------------------------------------------------------------------
----------------------------------------------------------------
-----------------------------------------------END
end
