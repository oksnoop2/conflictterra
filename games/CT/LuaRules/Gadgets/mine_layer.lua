
function gadget:GetInfo()
	return {
		name      = 'Mine Laying',
		desc      = '',
		author    = 'Niobium',
		date      = 'April 2011',
		license   = 'GNU GPL, v2 or later',
		layer     = 0,
		enabled   = false
	}
end

----------------------------------------------------------------
-- Synced only
----------------------------------------------------------------
if not gadgetHandler:IsSyncedCode() then
	return false
end

----------------------------------------------------------------
-- Var
----------------------------------------------------------------
local CMD_LAYMINES = 35192
local laidMineCount = {} -- laidMineCount[uId] = nil / #
local MINELIMIT = 4

----------------------------------------------------------------
-- Functions
----------------------------------------------------------------
local function GetCanUnitLayMines(uDefId)
	if UnitDefs[unitDefID].customParams.is_minelayer then 
    return true
	end
end

local function CreateUnitOnGround(uDefId, x, z, facing, teamId)
    Spring.CreateUnit(uDefId, x, Spring.GetGroundHeight(x, z), z, facing, teamId)
end

----------------------------------------------------------------
-- Callins
----------------------------------------------------------------
function gadget:Initialize()
    gadgetHandler:RegisterCMDID(CMD_LAYMINES)
    Spring.SetCustomCommandDrawData(CMD_LAYMINES, 'Mines', {1, 1, 0, 1})
    Spring.AssignMouseCursor('Mines', 'cursorUnload')
end

function gadget:UnitCreated(uId, uDefId, teamId)
    if GetCanUnitLayMines(uDefId) then
        Spring.InsertUnitCmdDesc(uId, {
            id = CMD_LAYMINES,
            type = CMDTYPE.ICON_MAP,
            name = 'Mines',
            cursor = 'Mines',
            action = 'mines',
            tooltip = 'Deploys mines at target location',
            texture = '#' .. uDefId, -- Use mines buildpic as the command background
        })
    end
end

function gadget:AllowCommand(uId, uDefId, teamId, cmdId, cmdParams, cmdOpts)
    if cmdId == CMD_LAYMINES then
        return GetCanUnitLayMines(uDefId)
    end
    return true
end

function gadget:CommandFallback(uId, uDefId, teamId, cmdId, cmdParams, cmdOpts)
    if cmdId == CMD_LAYMINES then
        -- At limit?
        local alreadyLaid = laidMineCount[uId] or 0
        if alreadyLaid >= MINELIMIT then
            return true, true -- Remove command from queue
        end
        
        local tx, ty, tz = cmdParams[1], cmdParams[2], cmdParams[3]
        local ux, uy, uz = Spring.GetUnitBasePosition(uId)
        local dx, dz = tx - ux, tz - uz
        
        if math.sqrt(dx * dx + dz * dz) <= 20 then
            -- Unit is close enough, deploy the mines
            CreateUnitOnGround(uDefId, tx,       tz - 10, 0, teamId)
            CreateUnitOnGround(uDefId, tx - 8.5, tz + 5 , 0, teamId)
            CreateUnitOnGround(uDefId, tx + 8.5, tz + 5 , 0, teamId)
            laidMineCount[uId] = alreadyLaid + 1
            return true, true -- Mines have been laid, remove command from queue
        else
            -- Unit isn't close enough, tell it to move to mine location
            Spring.SetUnitMoveGoal(uId, tx, ty, tz, 10)
            return true, false -- Leave command in queue
        end
    end
    return false
end