
function gadget:GetInfo()
	return {
		name      = 'Mine Laying',
		desc      = 'Mine layer gadget; Limits amount of mines dispersed per unit.',
		author    = 'Niobium, minelayer_type and mine_type added by Sanada',
		date      = 'April 2011',
		license   = 'GNU GPL, v2 or later',
		layer     = 0,
		enabled   = true
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
local MINELIMIT = 4														--Limit of mines laid per unit
local minelayer_type = {[UnitDefNames["bantitankmech"].id] = true,}		--Unit(s) which can lay mines
local mine_type = "bantitankmine"										--Mine unit name
local mine_texture = 'unitpics/bantitankmine.png'						--Button texture for "Mines"

----------------------------------------------------------------
-- Functions
----------------------------------------------------------------
local function GetCanUnitLayMines(unitDefID)
	if minelayer_type[unitDefID] then 
    return true
	end
end

local function CreateUnitOnGround(unitDefID, x, z, facing, teamId)
    Spring.CreateUnit(mine_type, x, Spring.GetGroundHeight(x, z), z, facing, teamId)
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
            tooltip = 'Deploys a mine at target location',
            texture = mine_texture
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
            CreateUnitOnGround(mine_type, tx,       tz - 10, 0, teamId)
            --CreateUnitOnGround(mine_type, tx - 8.5, tz + 5 , 0, teamId)
            --CreateUnitOnGround(mine_type, tx + 8.5, tz + 5 , 0, teamId)
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