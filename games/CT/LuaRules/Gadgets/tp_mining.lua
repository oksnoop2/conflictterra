--thanks  Andrej,  zwzsg, quantum and #ca
function gadget:GetInfo()
  return {
    name      = "mining blabla2",
    desc      = "some broken stuff",
    author    = "knorke",
    date      = "4 Okt 2010",
    license   = "oh",
    layer     = 0,
    enabled   = true  --  loaded by default 
  }
end

if (gadgetHandler:IsSyncedCode()) then

local currentframe = 0  --what frame the game is currently in (orly)
local miners = {}       -- [unitID] alive: true/false   cargo: metal being carried  last_mined_id: which resourceunit was last mined from status: what miner is doing: "search" "loading" "unloading" "mining" "to_res" "to_hq" <-only "search" is really used to controll things, the others are just for displaying
local dropoffs = {}     -- [unitID]
local resources = {}    -- [unitID] frame_last_mined
local debug = false
-----config-----
local miner_name = {"bminer", "kdroneminingtower", "kdronebigminingtower", "kdroneminerflyer"}      --the unit used for mining
local resource_name = {}--{"bminerals","bmeteorimpact","bmeteorimpact_big"}     --the stuff that gets mined
local dropoff_name = {"bsupplydepot", "bsupplydepotai", "bprimarycruiserbase", "bprimarycruiserbaseai", "kdroneminingtower","kdronebigminingtower", "kdronemininghub"} --where the miners bring the resources to
local dropoff_distance = 100 --how near do miners have to get to a dropoff to drop their cargo? (this value is added to unitRadius)
local maxcargo = 25         --how much a miner can carry before having to return to a drop off
local resreturneffect = "resdropoff_singleparticle" --ceg effect played at miners location when a miner returns its cargo
----------------
function gadget:UnitFinished(unitID, unitDefID, teamID)
    if (is_miner_type (unitDefID) == true) then 
        Spring.GiveOrderToUnit(unitID, CMD.FIRE_STATE , { 0 }, {}) --hold fire
        add_miner (unitID) 
    end
    if (is_dropoff_type (unitDefID) == true) then add_dropoff (unitID) end
end

function gadget:UnitDestroyed(unitID, unitDefID, teamID, attackerID)
    --remove destroyed miners:
    if is_miner (unitID) then remove_miner (unitID) end
    --remove destroyed dropoffs:
    if is_dropoff (unitID) then remove_dropoff (unitID) end
    --wenn etwas geerntet wurde:
    --if (is_resource_type (unitDefID) and is_miner (attackerID)) then Spring.Echo ("resource mined out") end
    --if (is_miner(attackerID)) then Spring.Echo ("miner mined") end
    if (is_resource_type (unitDefID) and is_miner(attackerID)) then
        --fill the cargo bay of the miner, alot of options here....:
        miners[attackerID].cargo = miners[attackerID].cargo + 25
--      Spring.DestroyUnit (unitID,true)        --destroy the mined mineral as workaround to get rid of the wreck
        --send full miners to dropoff:
        --if (miners[attackerID].cargo > 25) then 
            return_to_dropoff (attackerID)
        --end
        end     
    --end
end


function gadget:UnitDamaged (unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, attackerID, attackerDefID, attackerTeam) 
if (is_resource_type (unitDefID) and is_miner(attackerID)) then
        --fill the cargo bay of the miner, alot of options here....:
        if (miners[attackerID].cargo < maxcargo) then miners[attackerID].cargo = miners[attackerID].cargo + (damage) end
        if (unitID ~=nil) then 
            miners[attackerID].last_mined_id = unitID 
            resources[unitID] = {} --*** -> add_resource und so...
            resources[unitID].frame_last_mined = currentframe
        end
        
        --send full miners to dropoff:
        if (miners[attackerID].cargo >= maxcargo) then return_to_dropoff (attackerID) end
    end
end


function gadget:GameFrame(frameNum) 
    _G.miners = miners
    _G.dropoffs = dropoffs  
    currentframe=frameNum
    if (frameNum % 8 ~=0) then return end
    for i in pairs(miners) do
        if (frameNum % 64 == 0 and miners[i].status == "search") then
            search_res (i)
        end
        
        if (miners[i].cargo > 5 and is_miner_at_dropoff (i)) then   --drop the cargo
            local minerteam = Spring.GetUnitTeam (i)
            Spring.AddTeamResource (minerteam, "metal", miners[i].cargo)            
            local x,y,z=Spring.GetUnitPosition (i)
            if (x and y and z) then 
                for i = 1, miners[i].cargo/5 , 1 do                 
                    Spring.SpawnCEG(resreturneffect, x, y, z) 
                end
            end
            miners[i].cargo = 0
            return_to_mine (i)
        end
    end
end

function gadget:Initialize()
    make_miner_table()
    make_resource_name_table ()
    _G.miners = miners;
    _G.dropoffs = dropoffs
    _G.dropoff_distance = dropoff_distance
end

function marker_on_unit (_uID, _text)
    if (not debug) then return end
    if (markers == false) then return end
    if (_uID == nil) then return end
    if (_text == nil) then return end
    local x,y,z=Spring.GetUnitPosition (_uID)
    if (x == nil or y == nil or z == nil) then return end
    Spring.MarkerAddPoint (x,y,z, _text .. "id:" .. _uID)
end

function make_miner_table()
    miners = {}
    local all_units = Spring.GetAllUnits ()
    for i in pairs(all_units) do
        local unitDefID = Spring.GetUnitDefID(all_units[i])
        if (is_miner_type (unitDefID)==true) then
            add_miner (all_units[i])
        end
        if (is_dropoff_type (unitDefID)==true) then
            add_dropoff (all_units[i])
        end
    end
end

function make_resource_name_table ()
if (debug) then Spring.Echo ("tp_mining.lua: looking for mineable unitdefs") end
    for id,unitDef in pairs(UnitDefs) do
        local cp = UnitDefs[id].customParams
        if (cp) then
            if (cp.is_mineable) then
                local resname = unitDef.name
                if (debug) then Spring.Echo ("tp_mining.lua: found mineable resource:" .. resname) end
                table.insert (resource_name, resname)
            end
        end
    end
end

function is_miner_type (unitDefID)
    if (unitDefID == nil) then return false end
    local unitDef = UnitDefs[unitDefID]
    if (unitDef == nil) then return false end
    local unitname = unitDef.name
    for _,v in pairs(miner_name) do
        if v == unitname then return true end
    end 
    return false
end


function is_dropoff_type (unitDefID)
    if (unitDefID == nil) then return false end
    local unitDef = UnitDefs[unitDefID]
    if (unitDef == nil) then return false end
    local unitname = unitDef.name
    for _,v in pairs(dropoff_name) do
        if v == unitname then return true end
    end    
    return false 
end


function is_resource_type (unitDefID)
    if (unitDefID == nil) then return false end
    local unitDef = UnitDefs[unitDefID]
    if (unitDef == nil) then return false end
    for schluessel, wert in pairs(resource_name) do                            
        if (wert == unitDef.name) then return true end
    end 
    --if (unitDef.name == resource_name) then return true end
    return false
end


function is_miner (unitID)
    if (miners [unitID] ~= nil) then return true else return false end
end

function is_dropoff (unitID)    
    if (dropoffs [unitID] ~= nil) then return true else return false end
end


function nearest_dropoff_position_from_miner (minerID)
    local minerteam = Spring.GetUnitTeam (minerID)
    local nearest_distance = 9999999999
    local nearest_dropoffID = nil
    for i in pairs (dropoffs) do
        local dropoffteam = Spring.GetUnitTeam (i)  
        if (minerteam == dropoffteam) then 
            local d = Spring.GetUnitSeparation (minerID, i)
            if (d < nearest_distance) then
                nearest_distance = d
                nearest_dropoffID = i
            end
        end
    end
    if (nearest_dropoffID ~= nil) then
        return Spring.GetUnitPosition (nearest_dropoffID)
    else
        return nil
    end
end


 --( number x, number z, number radius [,number teamID] )
--*** nicht wirklich das nächste mineral sondern erstmal nur das nächstbeste  
function nearest_resID_from_miner (minerID)
    local nearest_resID = nil
    local nearest_res_distance = 9999999999
    local nearest_unmined_res = nil
    local nearest_unmined_res_distance = 9999999999
    local x,y,z = Spring.GetUnitPosition(minerID)
    res=Spring.GetUnitsInCylinder (x,z, 5000, Spring.GetGaiaTeamID())
    if (res == nil) then return nil end --no near units at all :/
    for i in pairs (res) do
        if (is_resource_type (Spring.GetUnitDefID(res[i])) == true) then            
            local d = Spring.GetUnitSeparation (minerID, res[i])
            if (d < nearest_res_distance) then
                nearest_res_distance = d
                nearest_resID = res[i]
            end
        end      
    end
    if (nearest_resID~=nil) then return nearest_resID else return nil end
end

function add_miner (unitID)
    miners [unitID] = {}
    miners [unitID].alive = true
    miners [unitID].cargo = 0
    marker_on_unit (unitID, "miner added")
end

function add_dropoff (unitID)
    dropoffs [unitID] = {}
    dropoffs [unitID].alive = true
    dropoffs [unitID].cargo = 0
    marker_on_unit (unitID, "droppoff added")
end

function remove_miner (unitID)
    if (debug) then Spring.Echo ("removing miner id=" .. unitID) end
--  if (Spring.ValidUnitID  (miners[unitID].last_mined_id)) then 
--      if (resources [miners[unitID].last_mined_id] ~= nil) then resources [miners[unitID].last_mined_id].mined_by=nil end
--  end
    miners [unitID].alive=false
    miners [unitID] = nil   
end

function remove_dropoff (unitID)
    if (debug) then Spring.Echo ("removing dropoff id=" .. unitID) end
    dropoffs [unitID].alive=false
    dropoffs [unitID] = nil
end

function is_miner_at_dropoff (miner_unitID)
local minerteam = Spring.GetUnitTeam (miner_unitID)
    for i in pairs (dropoffs) do
        local dropoffteam = Spring.GetUnitTeam (i)
        if (minerteam == dropoffteam) then
            local d = Spring.GetUnitRadius (i) + dropoff_distance
            if Spring.GetUnitSeparation (miner_unitID, i) < d then return true end
            end
        end
    return false
end



-----MINER AI-----
--idle miners will go search for minerals if set not set to "hold pos"
function gadget:UnitIdle(unitID, unitDefID, teamID)
    if (is_miner (unitID)) then
        local unitstates = Spring.GetUnitStates (unitID)
        local movestate = unitstates["movestate"]
        if (debug) then Spring.Echo ("miner " .. unitID .. " movestate=" .. movestate) end
        if (movestate ==0) then return end
        if (debug) then Spring.Echo ("idle miner" .. unitID) end
--      if (miners[unitID].cargo > 0) then return_to_dropoff (unitID) end
        if (movestate ~=0) then --roam or manoever
            --search_res(unitID)
            miners[unitID].status = "search"
        end
    end
end

function return_to_mine (unitID)
    if (Spring.ValidUnitID  (miners[unitID].last_mined_id)) then
        if (debug) then Spring.Echo ("miner " .. i .. " returns to mineral") end
        --Spring.SetUnitTarget (unitID, miners[i].last_mined_id) --return to the mineral last mined from
        --Spring.GiveOrderToUnit(unitID, CMD.MOVE_STATE, { 2 }, {})
        --Spring.GiveOrderToUnit(unitID, CMD.FIRE_STATE , { 2 }, {}) 
        Spring.GiveOrderToUnit(unitID, CMD.ATTACK  , { miners[unitID].last_mined_id  }, {}) 
        miners[unitID].status = "to_res"
    else
        --search for new minerals
        search_res (unitID)
    end
end

function search_res (unitID)
    local x, y, z = Spring.GetUnitPosition(unitID)
    --Spring.GiveOrderToUnit(unitID, CMD.FIRE_STATE , { 2 }, {})
    --Spring.GiveOrderToUnit(unitID, CMD.AREA_ATTACK  , { x, y, z,50000  }, {})
    --miners[unitID].last_mined_id = nil
    --miners[unitID].status = "send to search"
    local res = nearest_resID_from_miner (unitID)
    if (res) then Spring.GiveOrderToUnit(unitID, CMD.ATTACK  , { res }, {}) end
    miners[unitID].status = "search finished"
end

function return_to_dropoff (unitID)
    local x, y, z = Spring.GetUnitPosition(unitID)
    local tx, ty, tz = nearest_dropoff_position_from_miner (unitID)
    if (tx ~= nil) then
--      Spring.GiveOrderToUnit(unitID, CMD.FIRE_STATE , { 0 }, {}) 
--      Spring.GiveOrderToUnit(unitID, CMD.MOVE_STATE, { 0 }, {})
        Spring.GiveOrderToUnit(unitID, CMD.MOVE , {tx, ty, tz  }, {})
        miners[unitID].status = "to_hq"
        if (debug) then Spring.Echo ("returning to base with cargo:" .. miners[unitID].cargo) end
    end
end


--------------------------------------------------------
--Border between SYNC and UNSYNC
--when i wear my frilly dress im a real touhou
end
if (not gadgetHandler:IsSyncedCode()) then
--------------------------------------------------------

--Length of table, for synced (using spairs)
function sxlen(tbl)
    local qq = 0;
    for v in spairs(tbl) do
        qq = qq + 1;
    end
    return qq;
end

function gadget:DrawScreen()
--[[
    gl.Color(0.5, 0.5, 0.5, 1)
    local ty = 0
    for i in spairs(SYNCED.miners) do
        ty = ty + 1
        gl.Text (ty .."| [" .. i .. "]".. "cargo:" .. SYNCED.miners[i].cargo, 100,300-ty*25 , 25, 'o')
    end
    gl.Text ("miners counted="..ty .. "#miners:" .. sxlen(SYNCED.miners), 100,300 , 25, 'o')
--]]
end


function gadget:DrawWorldPreUnit()  
    local localplayerally = Spring.GetMyAllyTeamID ()
    gl.LineWidth(5.0)
    --[[
    --marking dropoffs. works but is annoying esp with drone faction
    for i in spairs(SYNCED.dropoffs) do
        local unitally = Spring.GetUnitAllyTeam  (i)
        if (unitally == localplayerally) then ----only mark our own dropoffs
            local x,y,z=Spring.GetUnitPosition (i)          
            if (x ~= nil and y ~= nil and z ~= nil) then                
                local d = Spring.GetUnitRadius (i) + SYNCED.dropoff_distance
                gl.Color(1, 1, 1, 1)
                gl.DrawGroundCircle (x,y,z, d, 8) --all dropoffs marked with octagon
            end
        end
    end
    --]]
    for i in spairs(SYNCED.miners) do
            if (SYNCED.miners[i].alive == true and i ~= nil and SYNCED.miners[i] ~=nil) then
                local unitally = Spring.GetUnitAllyTeam  (i)
                if (unitally == localplayerally) then --only mark our own miners
                    local x,y,z=Spring.GetUnitPosition (i)
                    if (x ~= nil and y ~= nil and z ~= nil) then
                        gl.Color(0, 1, 0, 1)
                        --gl.DrawGroundCircle (x,y,z, 50, 4) --all miners marked with a diamond shape
                        --cargo status
                        --gl.Color(1, 0, 0, 1)
                        --gl.DrawGroundCircle (x,y,z, 30, 3)
                        gl.Color(1, 1, 0, 1)
                        gl.DrawGroundCircle (x,y,z, SYNCED.miners[i].cargo, 3)  --growing triangle shows cargo status
                        --mark last_mined minerals
                        if (Spring.ValidUnitID  (SYNCED.miners[i].last_mined_id)) then
                            local x,y,z=Spring.GetUnitPosition (SYNCED.miners[i].last_mined_id)
                            gl.Color(0, 0.8, 0, 1)
                            gl.DrawGroundCircle (x,y,z, 30, 15)  --growing triangle shows cargo status                          
                        end
                    end
                end
            end
    end
end

end
