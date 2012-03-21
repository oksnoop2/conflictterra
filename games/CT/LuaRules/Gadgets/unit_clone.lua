--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    unit_clone.lua
--  brief:   Adds unit cloneing command
--  author:  Dave Rodgers improved by jK
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
  return {
    name      = "UnitClone",
    desc      = "Adds unit cloning",
    author    = "aegis",
    date      = "Apr 24, 2007",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  Proposed Command ID Ranges:
--
--    all negative:  Engine (build commands)
--       0 -   999:  Engine
--    1000 -  9999:  Group AI
--   10000 - 19999:  LuaUI
--   20000 - 29999:  LuaCob
--   30000 - 39999:  LuaRules
--


local CMD_CLONE = 33333



--------------------------------------------------------------------------------
--  COMMON
--------------------------------------------------------------------------------
function isFinished(UnitID)
  local _,_,_,_,buildProgress = Spring.GetUnitHealth(UnitID)
  if ((buildProgress) and (buildProgress>=1)) then
    return true
  end
  return false
end

local function GetTechLevel(udid)
  local ud = UnitDefs[udid];
  return (ud and ud.techLevel) or 0
end

function isFactory(UnitDefID)
  return UnitDefs[UnitDefID].isFactory or false
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


if (gadgetHandler:IsSyncedCode()) then
--------------------------------------------------------------------------------
--  SYNCED
--------------------------------------------------------------------------------

include("LuaRules/colors.h.lua")


local cloneDefs = {}
local cloneUnits = {} -- make it global in Initialize()

local stopPenalty  = 1.0
local clonePenalty = 1.0

local upgradingBuildSpeed = 250

local XpScale = 0.50

local devolution = true -- remove upgrade capabilities after factory destruction?

-- per team techlevel table
local teamTechLevel = {}
local allyList = Spring.GetAllyTeamList()
for _,allyID in ipairs(allyList) do
  local teamList = Spring.GetTeamList(allyID)
  for _,teamID in ipairs(teamList) do
    teamTechLevel[teamID] = 0
  end
end

local cloneCmdDesc = {
  id     = CMD_CLONE,
  type   = CMDTYPE.ICON,
  name   = 'Clone',
  cursor = 'Clone',  -- add with LuaUI?
  action = 'clone',
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


local function DefCost(paramName, udSrc, udDst)
  local pSrc = udSrc[paramName]
  local pDst = udDst[paramName]
  if ((not pSrc) or (not pDst) or
      (type(pSrc) ~= 'number') or
      (type(pDst) ~= 'number')) then
    return 0
  end
  local cost = (pDst - pSrc) * clonePenalty
  if (cost < 0) then
    cost = 0
  end
  return math.floor(cost)
end


local function ValidateCloneDefs(mds)
  local newDefs = {}
  for src,cloneData in pairs(mds) do
    local udSrc = UnitDefNames[string.lower(src)]
    local udDst = UnitDefNames[string.lower(cloneData.into)]
    if (not udSrc) then
      Spring.Echo('Bad clone src type: ' .. src)
    end
    if (not udDst) then
      Spring.Echo('Bad clone dst type: ' .. cloneData.into)
    end
    if (udSrc and udDst) then
      local unitDef = UnitDefs[udSrc.id]
      local newData = {}
      newData.into = udDst.id
      newData.time = cloneData.time or math.floor(unitDef.buildTime*10/upgradingBuildSpeed)
      newData.increment = (1 / (30 * newData.time))
      newData.metal  = cloneData.metal  or DefCost('metalCost',  udSrc, udDst)
      newData.energy = cloneData.energy or DefCost('energyCost', udSrc, udDst)
      newData.resTable = {
        m = (newData.increment * newData.metal),
        e = (newData.increment * newData.energy)
      }
      newData.tech = cloneData.tech or 0
      newData.xp   = cloneData.xp or 0
      newDefs[udSrc.id] = newData
    end
  end
  return newDefs
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function GetCloneToolTip(unitID, cloneDef,teamTech,unitXP)
  local ud = UnitDefs[cloneDef.into]
  local tt = ''
  tt = tt .. WhiteStr  .. 'Clone to a '   .. ud.humanName .. '\n'
  tt = tt .. GreenStr  .. 'time: '   .. cloneDef.time     .. '\n'
  tt = tt .. CyanStr   .. 'metal: '  .. cloneDef.metal    .. '\n'
  tt = tt .. YellowStr .. 'energy: ' .. cloneDef.energy   .. '\n'
  if (cloneDef.tech>teamTech) or (cloneDef.xp>unitXP) then
    tt = tt .. RedStr .. 'needs'
    if (cloneDef.tech>teamTech) then tt = tt .. ' level: ' .. cloneDef.tech  end
    if (cloneDef.xp>unitXP)     then tt = tt .. ' xp: ' .. string.format('%.2f',cloneDef.xp) end
  end
  return tt
end


local function AddCloneCmdDesc(unitID, cloneDef, teamTech)
  local unitXP = Spring.GetUnitExperience(unitID)

  cloneCmdDesc.tooltip = GetCloneToolTip(unitID, cloneDef,0,0)
  cloneCmdDesc.texture = "#" .. cloneDef.into --only works with a patched layout.lua! :(
  cloneCmdDesc.disabled= (cloneDef.tech > teamTech)or(cloneDef.xp > unitXP)
  Spring.InsertUnitCmdDesc(unitID, cloneCmdDesc)
  cloneCmdDesc.tooltip = nil
  cloneCmdDesc.texture = nil
end


local function UpdateClonePossibilities(teamID)
  local teamTech = teamTechLevel[teamID] or 0

  local units = Spring.GetTeamUnitsSorted(teamID)
  for unitDefID,unitIDs in pairs(units) do
    local cloneDef     = cloneDefs[unitDefID]

    if (cloneDef) then
      for _,unitID in ipairs(unitIDs) do
        local cmdDescID = Spring.FindUnitCmdDesc(unitID, CMD_CLONE)
        if (cmdDescID) then

          local unitXP = Spring.GetUnitExperience(unitID)
          local cloneCmdDesc = {}
          cloneCmdDesc.disabled = (cloneDef.tech > teamTech)or(cloneDef.xp > unitXP)
          cloneCmdDesc.tooltip  = GetCloneToolTip(unitID, cloneDef, teamTech, unitXP)
          Spring.EditUnitCmdDesc(unitID, cmdDescID, cloneCmdDesc)

        end
      end
    end
  end
end


--------------------------------------------------------------------------------

local function StartClone(unitID, cloneDef)
  -- paralyze the unit
  Spring.SetUnitHealth(unitID, { health = Spring.GetUnitHealth(unitID) * 1 })           -- set to change health % while cloning
  Spring.SetUnitHealth(unitID, { paralyze = 1.0e9 })    -- turns mexes and mm off
  Spring.SetUnitResourcing(unitID,"e",0)                -- turns solars off
  --Spring.GiveOrderToUnit(unitID, CMD.ONOFF, { 0 }, { }) -- turns radars/jammers off   --knorke: recursion warning blabla?!
  
  local unitradius = Spring.GetUnitRadius(unitID)

  cloneUnits[unitID] = {
    def = cloneDef,
    progress = 0.0,
    increment = cloneDef.increment,
	offsetx = unitradius * (1.5 + math.random()), --math.random() is between 0 and 1
	offsetz = unitradius * (-0.5 + math.random()),
   }
end


local function StopClone(unitID, cloneData)
  cloneUnits[unitID] = nil

  Spring.SetUnitHealth(unitID, { health = Spring.GetUnitHealth(unitID) * 3 })
  Spring.SetUnitHealth(unitID, { paralyze = -1})
  local scale = cloneData.progress * stopPenalty
  local unitDefID = Spring.GetUnitDefID(unitID)

  Spring.SetUnitResourcing(unitID,"e", UnitDefs[unitDefID].energyMake)
  Spring.GiveOrderToUnit(unitID, CMD.ONOFF, { 1 }, { })
  local usedMetal  = cloneData.def.metal  * scale
  Spring.AddUnitResource(unitID, 'metal',  usedMetal)
  local usedEnergy = cloneData.def.energy * scale
  Spring.AddUnitResource(unitID, 'energy', usedEnergy)
end


local function FinishClone(unitID, cloneData)
  local udSrc = Spring.GetUnitDefID(unitID)
  local udDst = UnitDefs[cloneData.def.into]
  local defName = udDst.name
  local unitTeam = Spring.GetUnitTeam(unitID)
  local px, py, pz = Spring.GetUnitBasePosition(unitID)
  --Spring.SetUnitBlocking(unitID, false)

  --calculate the new position
  px = px + cloneUnits[unitID].offsetx
  pz = pz + cloneUnits[unitID].offsetz
  
  cloneUnits[unitID] = nil
  
  --reactivate original unit
  Spring.SetUnitHealth(unitID, { health = Spring.GetUnitHealth(unitID) * 4 })
  Spring.SetUnitHealth(unitID, { paralyze = -1})
  local scale = cloneData.progress * stopPenalty
  local unitDefID = Spring.GetUnitDefID(unitID)
  Spring.SetUnitResourcing(unitID,"e", UnitDefs[unitDefID].energyMake)
  Spring.GiveOrderToUnit(unitID, CMD.ONOFF, { 1 }, { })


  local newUnit = Spring.CreateUnit(defName, px, py, pz, 0, unitTeam)
  local h = Spring.GetUnitHeading(unitID)
  Spring.SetUnitRotation(newUnit, 0, -h * math.pi / 32768, 0)

  --copy experience
  local newXp = Spring.GetUnitExperience(unitID)*XpScale
  local nextClone = cloneDefs[cloneData.def.into]
  if (nextClone) then
    newXp = math.min( newXp, nextClone.xp*0.9)
  end
  Spring.SetUnitExperience(newUnit, Spring.GetUnitExperience(unitID)*XpScale)
  Spring.SetUnitHealth(newUnit, Spring.GetUnitHealth(unitID))

  --copy command queue
  local cmds = Spring.GetUnitCommands(unitID)
  for i = 2, #cmds do  -- skip the first command (CMD_CLONE)
    local cmd = cmds[i]
    Spring.GiveOrderToUnit(newUnit, cmd.id, cmd.params, cmd.options.coded)
  end

  -- copy some state
  local states = Spring.GetUnitStates(unitID)
  Spring.GiveOrderArrayToUnitArray({ newUnit }, {
    { CMD.FIRE_STATE, { states.firestate },             {} },
    { CMD.MOVE_STATE, { states.movestate },             {} },
    { CMD.REPEAT,     { states['repeat']  and 1 or 0 }, {} },
    { CMD.CLOAK,      { states.cloak      and 1 or 0 }, {} },
    { CMD.ONOFF,      { 1 }, {} },
    { CMD.TRAJECTORY, { states.trajectory and 1 or 0 }, {} },
  })

--[[
  local oldHealth = Spring.GetUnitHealth(unitID)
  local newHealth = oldHealth * (udDst.maxHealth / udSrc.maxHealth)
  Spring.SetUnitHealth(newUnit, newHealth)
--]]

  -- FIXME: - re-attach to current transport?
  -- update selection
  SendToUnsynced("unit_clone", unitID, newUnit)

  --Spring.SetUnitBlocking(newUnit, true)
  --Spring.DestroyUnit(unitID, false, true) -- selfd = false, reclaim = true
end


local function UpdateClone(unitID, cloneData)
  if (Spring.UseUnitResource(unitID, cloneData.def.resTable)) then
    cloneData.progress = cloneData.progress + cloneData.increment
  end
  if (cloneData.progress >= 1.0) then
    FinishClone(unitID, cloneData)
    return false -- remove from the list, all done
  end
  return true
end



--------------------------------------------------------------------------------

function gadget:Initialize()
  --[[
  if Spring.IsReplay() then
    gadgetHandler:RemoveGadget()
    return    
  end
  --]]

  _G.cloneUnits = cloneUnits  -- make it global for unsynced access via SYNCED
  -- get the cloneDefs
  cloneDefs = include("LuaRules/Configs/clone_defs.lua")
  if (not cloneDefs) then
    gadgetHandler:RemoveGadget()
    return
  end
  gadgetHandler:RegisterCMDID(CMD_CLONE)

  cloneDefs = ValidateCloneDefs(cloneDefs)

  -- add the Clone command to existing units
  for _,unitID in ipairs(Spring.GetAllUnits()) do
    local teamID    = Spring.GetUnitTeam(unitID)
    local unitDefID = Spring.GetUnitDefID(unitID)
    local cloneDef  = cloneDefs[unitDefID]
    if (cloneDef) then
      local cmdDescID = Spring.FindUnitCmdDesc(unitID, CMD_CLONE)
      if (not cmdDescID) then
        AddCloneCmdDesc(unitID, cloneDef, teamTechLevel[teamID])
      end
    end
  end
end


function gadget:Shutdown()
  for _,unitID in ipairs(Spring.GetAllUnits()) do
    local cloneData = cloneUnits[unitID]
    if (cloneData) then
      StopClone(unitID, cloneData)
    end
    local cmdDescID = Spring.FindUnitCmdDesc(unitID, CMD_CLONE)
    if (cmdDescID) then
      Spring.RemoveUnitCmdDesc(unitID, cmdDescID)
    end
  end
end


function gadget:UnitCreated(unitID, unitDefID, teamID)
  local cloneDef = cloneDefs[unitDefID]
  if (cloneDef) then
    AddCloneCmdDesc(unitID, cloneDef, teamTechLevel[teamID])
  end 
end

function gadget:UnitDestroyed(unitID, unitDefID, teamID)
  cloneUnits[unitID] = nil
	RemoveFactory(unitID, unitDefID, teamID)	
end

function gadget:UnitTaken(unitID, unitDefID, oldTeamID, teamID)
  AddFactory(unitID, unitDefID, teamID)
  self:UnitCreated(unitID, unitDefID, teamID)
end

function gadget:UnitGiven(unitID, unitDefID, newTeamID, teamID)
  RemoveFactory(unitID, unitDefID, teamID)
end


function AddFactory(unitID, unitDefID, teamID)
  if (isFactory(unitDefID)) then
    local unitTechLevel = GetTechLevel(unitDefID)
    if (unitTechLevel > teamTechLevel[teamID]) then
      teamTechLevel[teamID]=unitTechLevel
      UpdateClonePossibilities(teamID)
    end
  end
end

function RemoveFactory(unitID, unitDefID, teamID)
  if (devolution)and(isFactory(unitDefID)) then
    -- check all factories and determine team level
    local level = 0
    for _,unitID2 in ipairs(Spring.GetTeamUnits(teamID)) do
      local unitDefID2 = Spring.GetUnitDefID(unitID2)
      if (isFactory(unitDefID2) and unitID2 ~= unitID) then 
        local unitTechLevel = GetTechLevel(unitDefID2)
        if (unitTechLevel>level) then level = unitTechLevel end
      end
    end

    if (level ~= teamTechLevel[teamID]) then
      teamTechLevel[teamID] = level
      UpdateClonePossibilities(teamID)

			if (stopCloneOnDevolution) then 
				for cloneID, data in pairs(cloneUnits) do 
					if (data.def.tech > level and Spring.GetUnitTeam(cloneID) == teamID) then 
						StopClone(cloneID, data)
					end
				end
			end

    end

  end
end


function gadget:UnitFinished(unitID, unitDefID, teamID)
  AddFactory(unitID, unitDefID, teamID)
end


function gadget:GameFrame(n)
  if ((n+28) % 64)<1 then
    local teamIDs = Spring.GetTeamList()
    for _,teamID in ipairs(teamIDs) do
      UpdateClonePossibilities(teamID)
    end
  end

  if (next(cloneUnits) == nil) then
    return  -- no cloneing units
  end
  local killUnits = {}
  for unitID, cloneData in pairs(cloneUnits) do
    if (not UpdateClone(unitID, cloneData)) then
      killUnits[unitID] = true
    end
  end
  for unitID in pairs(killUnits) do
    cloneUnits[unitID] = nil
  end
end


function gadget:AllowCommand(unitID, unitDefID, teamID,
                             cmdID, cmdParams, cmdOptions)
  --do return true end -- FIXME ?
--  do
  if (cmdID == CMD_CLONE) then
    local cloneDef = cloneDefs[unitDefID]
    if ((cloneDef) and (cloneDef.tech<=teamTechLevel[teamID]) and (cloneDef.xp<=Spring.GetUnitExperience(unitID))) then
      return true
    end
    return false
  end
  --return true
--  end

  local cloneData = cloneUnits[unitID]
  if (cloneData) then
    if (cmdID == CMD.STOP) then
      StopClone(unitID, cloneData)
      cloneUnits[unitID] = nil
    elseif (cmdID == CMD.ONOFF) then
      return false
    else
      return false
    end
  end
  return true
end


function gadget:CommandFallback(unitID, unitDefID, teamID,
                                cmdID, cmdParams, cmdOptions)
  if (cmdID ~= CMD_CLONE) then
    return false  -- command was not used
  end
  local cloneDef = cloneDefs[unitDefID]
  if (not cloneDef) then
    return true, true  -- command was used, remove it
  end
  local cloneData = cloneUnits[unitID]
  if (not cloneData) then
		StartClone(unitID, cloneDef)
		return true, true
  end
  return true, false  -- command was used, do not remove it
end

--------------------------------------------------------------------------------
--  SYNCED
--------------------------------------------------------------------------------
else
--------------------------------------------------------------------------------
--  UNSYNCED
--------------------------------------------------------------------------------

--
-- speed-ups
--


local SYNCED = SYNCED

local GetUnitTeam         = Spring.GetUnitTeam
local GetUnitHeading      = Spring.GetUnitHeading
local GetUnitBasePosition = Spring.GetUnitBasePosition
local GetGameFrame        = Spring.GetGameFrame
local GetSpectatingState  = Spring.GetSpectatingState
local AddWorldIcon        = Spring.AddWorldIcon
local AddWorldText        = Spring.AddWorldText

local glColor      = gl.Color
local glPushMatrix = gl.PushMatrix
local glTranslate  = gl.Translate
local glRotate     = gl.Rotate
local glUnitShape  = gl.UnitShape
local glPopMatrix  = gl.PopMatrix


--------------------------------------------------------------------------------

local function SelectSwap(cmd, oldID, newID)
  local selUnits = Spring.GetSelectedUnits()
  for i, unitID in ipairs(selUnits) do
    if (unitID == oldID) then
      table.insert(selUnits, newID)
      Spring.SelectUnitArray(selUnits)
      return true
    end
  end
  return true
end


function gadget:Initialize()
  gadgetHandler:AddSyncAction("unit_clone", SelectSwap)
end


function gadget:Shutdown()
  gadgetHandler:RemoveSyncAction("unit_clone")
end


local teamColors = {}
local function SetTeamColor(teamID,a)
  local color = teamColors[teamID]
  if (color) then
    color[4]=a
    glColor(color)
    return
  end
  local _,_,_,_,_,_,r,g,b = Spring.GetTeamInfo(teamID)
  if (r and g and b) then
    color = { r, g, b }
    teamColors[teamID] = color
    glColor(color)
    return
  end
end



local function DrawCloneUnit(unitID, unitCloneInfo, cloneData, localTeamID)
  local unitTeam = GetUnitTeam(unitID)
  local h = GetUnitHeading(unitID)
  if (not h) then
    return  -- bonus, heading is only available when the unit is in LOS
  end
  local px,py,pz = GetUnitBasePosition(unitID)
  if (not px) then
    return
  end
  px = px + unitCloneInfo.offsetx
  pz = pz + unitCloneInfo.offsetz

  local frac = ((GetGameFrame() + unitID) % 30) / 30
  local alpha = 2.0 * math.abs(0.5 - frac)
  --glColor(1.0, 1.0, 1.0, alpha*0.3)
  SetTeamColor(unitTeam,alpha)
  glPushMatrix()
  glTranslate(px, py, pz)
  glRotate(h * (360 / 65535), 0, 1, 0)
  glUnitShape(cloneData.def.into, unitTeam)
  glPopMatrix()


  -- cheesy progress indicator
  if (localTeamID)and(unitTeam==localTeamID) then
    glPushMatrix()
    glTranslate(px, py-20, pz)
    gl.Billboard()
    local progStr = string.format("%.1f%%", 100 * cloneData.progress)
    gl.Text(progStr, 0, 0, 7, "oc")
    glPopMatrix()
  end
end




function gadget:DrawWorld()
  local cloneUnits = SYNCED.cloneUnits
  if ((not cloneUnits) or (snext(cloneUnits) == nil)) then
    return -- no clones to draw
  end

  gl.Blending(GL.SRC_ALPHA, GL.ONE)
  gl.DepthTest(GL.LEQUAL)

  local spec, specFullView = GetSpectatingState()
  local readTeam
  if (specFullView) then
    readTeam = Script.ALL_ACCESS_TEAM
  else
    readTeam = Spring.GetLocalTeamID()
  end

  CallAsTeam({ ['read'] = readTeam }, function()
    for unitID, cloneData in spairs(cloneUnits) do
      if (unitID and cloneData) then  -- FIXME: huh?
        DrawCloneUnit(unitID, cloneUnits[unitID], cloneData, readTeam)
      end
    end
  end)
  gl.DepthTest(false)
  gl.Blending(GL.SRC_ALPHA, GL.ONE_MINUS_SRC_ALPHA)
end



--------------------------------------------------------------------------------
--  UNSYNCED
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
--  COMMON
--------------------------------------------------------------------------------