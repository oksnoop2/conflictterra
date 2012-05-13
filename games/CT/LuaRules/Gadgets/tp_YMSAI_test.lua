
function gadget:GetInfo()

    return {

        name    = "YMSAI_test",

        desc    = "plays drones only",

        author  = "knorke and yanom",

        date    = "2011-2012",

        license = ";;;",

        layer   = 82, --82 fo life?! --wtf is that??

        version = "unversioned",

        enabled = true

    }

end



if (gadgetHandler:IsSyncedCode()) then

------SYNCED--------

-----STAGE SYSTEM--------

local unitOnMission = {} --[unitID] = wieviele frames in ruhe gelassen werden

stages = {}

--skipMetal: if we have that much metal, then this stage is autocomplete/skipped



--kdronewarrior kgrounddronestructure kdroneengineer kairdronestructure klightdrone



stages[1]= {

    ["unitNumbers"]={
    
        ["kdroneengineer"]=1,

        ["kdronemininghub"]=1,

        },

    skipMetal = math.huge,

    }



stages[2]= {

    ["unitNumbers"]={

        ["kdroneminerflyer"]=30,

        },

    skipMetal = math.huge,

    }
    
stages[3] = {
    ["unitNumbers"]={
        ["kgrounddronestructure"]=1,
    },
    skipMetal = math.huge,
    }
stages[4] = {
    ["unitNumbers"]={
        ["kairdronestructure"]=1,
    },
    skipMetal = math.huge,
    }

--funzt!

function printStages ()

    Spring.Echo ("--printing stages table *START*--")

    for i=1, #stages do

        Spring.Echo ("stages [" .. i  .. "]")

        Spring.Echo ("skipMetal=" .. stages[i].skipMetal)

        for name, amount in pairs (stages[i]["unitNumbers"]) do

            Spring.Echo ("unitNumbers:" .. name .. " - " .. stages[i]["unitNumbers"][name])

        end

    end

    Spring.Echo ("--printing stages table *DONE*--")

end



--funzt!

--return: isComplete, missing table

function stageComplete (teamID, stage)      

    --alle einheiten da die wir brauchen?

    local missing = {}  --[unitname] = wie viele davon noch gebraucht werden

    for name, amount in pairs (stage["unitNumbers"]) do

        --Spring.Echo ("enough " .. name .. "?")

        local unitDefID =UnitDefNames[name].id

        --Spring.Echo (unitDefID)

        local have = Spring.GetTeamUnitDefCount (teamID, unitDefID)

        local shouldHave = stage["unitNumbers"][name]

        if (have < shouldHave) then missing[name] = shouldHave-have end

    end

    if (next(missing) == nil) then return true end

    --genug metal da? dann autocomplete!

    if (Spring.GetTeamResources (teamID, "metal") > stage.skipMetal) then return true, missing end  --ich kauf den ganzen laden!

    return false, missing

end



--return: stagei, missing table

function getHighestCompleteStage (teamID)   

    for i=1, #stages do

        local complete, missing = stageComplete (teamID, stages[i])

        if (complete == false) then return i-1,missing end

    end

    return #stages, nil

end



--job: ["unitname"] = amount

--***problem: es wird alles mehrfach gebaut weil es im nÃ¤chsten frame%30 wieder vergeben wird

--braucht also ein inProgress array.

function makeSomeUnits (teamID, job)


local all_units = Spring.GetTeamUnits (teamID)

if (all_units == nil) then return end

    for name, amount in pairs (job) do

        --Spring.Echo ("team " .. teamID .." wants to build " .. amount .. "x " ..name)

        local assigned = 0

        for i,unitID in pairs(all_units) do

            --if (job[name] <= 0) then break end --if the job is already split between builders, break

            if (assigned >= amount) then break end

            local canDo = canUnitBuildThis (unitName (unitID), name)
            
            --Spring.Echo("Parent:" .. unitName (unitID) .. "  Child:" .. name .. ":::" .. tostring(canDo))

            if (canDo) then 

                local msg = unitID .. "(" ..unitName(unitID) .. ")" .. " can do it"

                local wantDo = doesUnitWantBuildJob (unitID, name)

                if (wantDo) then

                    msg = msg .. " and wants to do it!"

                    --job[name] = job[name] -1

                    assigned = assigned +1                  

                    buildUnit (unitID, name)

                    if (assigned >= amount) then break end

                else

                    msg = msg .. " but is busy!"

                end

                --Spring.Echo (msg)

            end

        end

    end

end



--naja

function canUnitBuildThis (parentName, childName)


    if (parentName == childName and (parentName == "kdronewarrior" or parentName == "kdroneengineer" or parentName == "kdroneroller" or parentName == "ktridroneroller")) then return true end--these units can clone themselves

    if (parentName == "kdroneengineer" and childName == "kgrounddronestructure") then return true end

    if (parentName == "kdroneengineer" and childName == "kdronebigminingtower") then return true end

    if (parentName == "kdroneengineer" and childName == "kairdronestructure") then return true end
    
    if (parentName == "kdroneengineer" and childName == "kdronemininghub") then return true end

    ----land factory----

    if (parentName == "kgrounddronestructure") then

        if (childName == "kdroneengineer") then return true end

        if (childName == "kdronewarrior") then return true end

        if (childName == "kdroneroller") then return true end

        if (childName == "ktridroneroller") then return true end        

        if (childName == "klightdrone") then return true end

    end

    ----air factory----

    if (parentName == "kairdronestructure") then

        if (childName == "kairdrone") then return true end

        if (childName == "kdiairdrone") then return true end

        if (childName == "ktriairdrone") then return true end       

    end 
    
    -- mining hub
    
    if (parentName == "kdronemininghub") then

        if (childName == "kdroneminerflyer") then return true end

    end 

    --falls sich gar niemand findet, kann sich auch ein mining tower zum engineer zurÃ¼ck morphen:

    --if (parentName == "kdroneminingtower" and childName == "kdroneengineer") then return true end

    return false

end



function doesUnitWantBuildJob (unitID, childname)

    local _, _, _, _, buildProg = Spring.GetUnitHealth(unitID)

    if buildProg < 1 then return false end



    --mining tower haben keinen bock sich abzubauen wenn es noch engineers gibt

    if (unitName (unitID) == "kdroneminingtower") then

        if (#Spring.GetTeamUnitsByDefs (Spring.GetUnitTeam (unitID), {UnitDefNames["kdroneengineer"].id}) > 0) then return false end ---uhhh... wth is this? -yanom

    end

    

    --if ((unitOnMission[unitID] and unitOnMission[unitID] >0) and unitIsMobile(unitID)) then return false end

    if ((unitOnMission[unitID] and unitOnMission[unitID] >0) ) then return false end

    

    if (#Spring.GetFullBuildQueue  (unitID) == 0) then return true end --nur eine sache pro fabrik gleichzeitig bauen

    

    return false

end



function buildUnit (unitID, jobname)

    if (unitName (unitID) ==  "kdroneminingtower" and jobname == "kdroneengineer") then undeploy (unitID) end

    

    if (unitName (unitID) == jobname) then --same units can just clone each other

        cloneUnit (unitID, UnitDefNames[jobname].id)        

        return

    end

    

    if (unitName (unitID) == "kgrounddronestructure") then --land factory builds

        Spring.GiveOrderToUnit(unitID, -UnitDefNames[jobname].id, {}, {}) --bauen

        moveAway (unitID, 500)  --waypoint

        return

    end
    
    if (unitName (unitID) == "kdronemininghub") then --mining hub builds

        Spring.GiveOrderToUnit(unitID, -UnitDefNames[jobname].id, {}, {}) --bauen

        --moveAway (unitID, 500)  --waypoint

        return

    end

    

    if (unitName (unitID) == "kairdronestructure") then --air factory builds

        Spring.GiveOrderToUnit(unitID, -UnitDefNames[jobname].id, {}, {}) --bauen

        moveAway (unitID, 1000) --waypoint

        return

    end

    

    if (not unitOnMission[unitID] and unitName (unitID) ==  "kdroneengineer" and jobname == "kdroneminingtower") then

        --unitOnMission[unitID] = true

        --moveAway (unitID, 2000)

        unitOnMission[unitID] = 100

        deployNearRes (unitID)

        return

    end

    

    if (unitName (unitID) == "kdroneengineer") then --engineer building whatever building

            local ux,uy,uz = Spring.GetUnitPosition (unitID)
            
            if(jobname=="kdronebigminingtower") then
                local x,y,z = getMiningTowerSpot (ux,uy,uz, unitID) --builder goes in. to find nearest res.
            else
                local x,y,z = getBuildSpot (ux,uy,uz, jobname, 200, 50) --something other than big mining tower
            end
            
            Spring.GiveOrderToUnit(unitID, -UnitDefNames[jobname].id, {x,y,z}, {}) --bauen

        return

    end 

end



function unitName (unitID)

    if (not Spring.ValidUnitID (unitID)) then return "!invalid unitID in unitName()!" end

    local udID =Spring.GetUnitDefID(unitID)

    local uDef = UnitDefs [udID]

    return uDef.name

end



--returns how many kdroneengineer and kdroneminingtowers a team has

function countTowersAndEngineer (teamID)

    return #Spring.GetTeamUnitsByDefs (teamID, {UnitDefNames["kdroneminingtower"].id}) + Spring.GetTeamUnitsByDefs (teamID, {UnitDefNames["kdroneengineer"].id})

end



function unitCount (teamID, unitName)

    return #Spring.GetTeamUnitsByDefs (teamID, {UnitDefNames[unitName].id}) or 0

end

------------





myTeam = {} --enthÃ¤lt alle teamids fÃ¼r die wir spielen, [1]=3, [2]=7 etc

teamsData = {} --stores data for each team. Example: the rosters of each team's squad live here.


 

function gadget:Initialize() 

    counter = 0

    -- Initialise AI for all teams that are set to use it

    for _,t in ipairs(Spring.GetTeamList()) do

        local _,_,_,ai,side = Spring.GetTeamInfo(t)

        if ai and Spring.GetTeamLuaAI(t) == gadget:GetInfo().name then

            --log(t, " assigned to "..gadget:GetInfo().name)

            local pos = {}


            myTeam[t] = t

            teamsData[t] = { squads={}, home_x=0, home_y=0, home_z=0 } --squads! 4 per team. a way of grouping units.
            
            teamsData[t].home_x,teamsData[t].home_y,teamsData[t].home_z = Spring.GetTeamStartPosition(t)
            
            teamsData[t].squads[1] = {}
            teamsData[t].squads[2] = {}
            teamsData[t].squads[3] = {}
            teamsData[t].squads[4] = {}



            Spring.Echo ("Schwarm AI will play for team  " .. t .." GetTeamLuaAI: " ..  Spring.GetTeamLuaAI(t))        

        end

    end

    if (myTeam == nil) then 

        Spring.Echo ("Schwarm AI: not used, byebye.")

        gadgetHandler:RemoveGadget()

    end

    printStages ()

end





function think (teamID, data)

    return data

end



function gadget:UnitIdle(unitID, unitDefID, teamID)

    unitOnMission[unitID] = nil

end



    







function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID)

    

    unitOnMission[unitID] = nil

    if (  (isTeamCBM (unitTeam)) and (attackerID ~= nil)) then --it should ignore tower morphs now, because attackerID=nil when it's a morph

        local goto_x, goto_y, goto_z = Spring.GetUnitPosition (unitID)

        squadThatWillGo = math.random(1,4)

        machTargetArea(unitTeam, goto_x, goto_z, squadThatWillGo) 

        --Spring.Echo(attackerID)

    end

end 

    

function gadget:GameFrame(frame)

    for i in pairs(unitOnMission) do

        unitOnMission[i] = unitOnMission[i] -1

        if (unitOnMission[i] < 0) then unitOnMission[i] = 0 end

    end
    
--  for i,v in ipairs(teamsData) do
--      for count = 1,4 do
--          
--          v.squadBusy[count] = v.squadBusy[count] - 1
--          
--          if (v.squadBusy[count] < 0) then v.squadBusy[count] = 0 end
--      end
--  end
    


    if (frame % 30 ~=0) then return end
    
    

    --Spring.Echo ("lÃ¤uft")

    for _,t in pairs(myTeam) do
    
        --[[if (frame % 450 ==0) then --every 15 secs
            local costofunit = 375 --about what a drone costs.
            
            local ourmetal = Spring.GetTeamResources (myTeam[t], "metal")
            local unitsWeMakeRaw = ourmetal/costofunit
            local unitsWeMake = round(unitsWeMakeRaw,0)
            for i=1,unitsWeMake do
                unitWeWillMake = unweighted_choice( {"kdronewarrior", "klightdrone", "kdronewarrior", "klightdrone","kdronewarrior", "klightdrone", "kdronewarrior", "klightdrone", "kdiairdrone", "kdiaridrone", "ktriairdrone", "ktriairdrone", "ktriairdrone" } )
                makeSomeUnits(myTeam[t], {[unitWeWillMake]=1} )
            end
        end]]--

        --Spring.Echo ("SchwarmAI is playing for team " .. myTeam[t])       

        local h, missing = getHighestCompleteStage (myTeam[t])

        --Spring.Echo ("team " .. myTeam[t] .. " is at stage " .. h)
        --printStages()
        if(stages[h+1] == nil) then
            stages[h+1] = {
                    ["unitNumbers"]={
                    --["kdronebigminingtower"]=h+1,
                    ["kdronemininghub"] = h/8,
                    ["kdroneminerflyer"] = h*10,
                    ["kdroneengineer"]=h/2,
                    ["kdronewarrior"]=h-2,
                    ["kdiairdrone"]=h/2,
                    ["ktriairdrone"]=h/1.5,
                },
            skipMetal = math.huge
            }
        end

        if (missing) then

            if (unitCount (myTeam[t], "kdroneengineer") < (missing["kdroneminingtower"] or 0) ) then

                missing["kdroneengineer"] = (missing["kdroneengineer"] or 0) +  (missing["kdroneminingtower"] -unitCount (myTeam[t], "kdroneengineer"))

            end

        makeSomeUnits (myTeam[t], missing)

        undeployEmptyMiningTowers (myTeam[t])

        --if (not missing["kgrounddronestructure"] and not missing["kairdronestructure"]) then

            --sendOutIdleEngineers (myTeam[t])

        --end

        end

        --clonetest(myTeam[t])

    end

end



---------ACTIONS/COMMANDS-----------------



function machGo (teamID) --alle rushen mit



    local all_units = Spring.GetTeamUnits (teamID)

    if (all_units == nil) then return end       

    for i,unitID in pairs(all_units) do

        if (Spring.ValidUnitID (unitID)) then

            local x = math.random(Game.mapSizeX)

            local z = math.random(Game.mapSizeZ)

            Spring.GiveOrderToUnit(unitID, CMD.FIGHT , {x, Spring.GetGroundHeight (x,z), z  }, {})

        end

    end

end



function machPatrol (teamID) --alle rushen mit


    local all_units = Spring.GetTeamUnits (teamID)

    if (all_units == nil) then return end       

    for i,unitID in pairs(all_units) do

        if (Spring.ValidUnitID (unitID)) then

            local x = math.random(Game.mapSizeX)

            local z = math.random(Game.mapSizeZ)

            Spring.GiveOrderToUnit(unitID, CMD.PATROL , {x, Spring.GetGroundHeight (x,z), z  }, {})

        end

    end

end



---yanom's added function is below



function machTargetArea (teamID, x, z, squadGo) 


    if (teamsData[teamID].squads[squadGo] == nil) then return end

    for i,unitID in pairs(teamsData[teamID].squads[squadGo]) do

        if ( ( unitName (unitID) ~= "kdroneengineer" ) and (Spring.ValidUnitID (unitID)) ) then
            
            Spring.GiveOrderToUnit(unitID, CMD.FIGHT , {x, Spring.GetGroundHeight (x,z), z  }, {})

            unitOnMission[unitID] = 60

        end

    end

end





function moveTo (unitID, tx, tz, keys)

    Spring.GiveOrderToUnit(unitID, CMD.MOVE , {tx, Spring.GetGroundHeight (tx,tz), tz  }, {keys})

end



--move away from current position

function moveAway (unitID, r, keys)

    local x,y,z = Spring.GetUnitPosition (unitID)

    if (x and y and z) then

        local a = math.rad (math.random (0,360))

        x = x + (math.sin (a) * r)

        z = z + (math.cos (a) * r) 

        if(x<=0) then x=1 end
        if(x>Game.mapSizeX) then x = Game.mapSizeX-1 end
        
        if(z<=0) then x=1 end
        if(z>Game.mapSizeZ) then z = Game.mapSizeZ-1 end

        moveTo (unitID, x, z, keys)

    end

end



function patrolAway (unitID, r, keys)

    local x,y,z = Spring.GetUnitPosition (unitID)

    if (x and y and z) then

        local a = math.rad (math.random (0,360))

        x = x + (math.sin (a) * r)

        z = z + (math.cos (a) * r) 

        Spring.GiveOrderToUnit(unitID, CMD.PATROL , {tx, Spring.GetGroundHeight (tx,tz), tz  }, {keys})

    end

end



function deployNearRes (unitID, keys)

    local nearest_resID, rx,ry,rz, nearest_res_distance  = nearestResFromUnit (unitID)

    --local ux,uy,uz = Spring.GetUnitPosition (unitID)

    local x,y,z = getBuildSpot (rx,ry,rz, "kdroneminingtower", 20, 5)

    deployAt (unitID,  x,z , keys)

end



--engineer geht zu x:z und morpht sich zum mining tower

--funzt!

function deployAt (unitID, tx,tz, keys)

    Spring.GiveOrderToUnit(unitID, CMD.FIGHT , {tx, Spring.GetGroundHeight (tx,tz), tz  }, {keys})

    Spring.GiveOrderToUnit(unitID, 31210,{UnitDefNames["kdroneminingtower"].id},{"shift"})

end



function undeploy (unitID)

    Spring.GiveOrderToUnit(unitID, 31210,{UnitDefNames["kdroneengineer"].id},{})

end



function do_attacknearest (unitID)
    local enemy = Spring.GetUnitNearestEnemy (unitID)
    if (enemy) then 
        Spring.GiveOrderToUnit(unitID, CMD.ATTACK  , { enemy  }, {}) 
    end
end



function cloneUnit (unitID, cloneDef)

    if Spring.ValidUnitID (unitID) then

        Spring.GiveOrderToUnit(unitID, 33333,{cloneDef},{})

    end

end



----------TICK TACK LOGIC (gets executed check every nth frame)------

function undeployEmptyMiningTowers (teamID)

    local mtowers = Spring.GetTeamUnitsByDefs (teamID, {UnitDefNames["kdroneminingtower"].id})

    --Spring.Echo ("#mtowers:" .. #mtowers)

    for i in pairs (mtowers) do

        local nearest_resID, rx,ry,rz, nearest_res_distance  = nearestResFromUnit (mtowers[i])

        if ((nearest_res_distance or 0) > 150) then undeploy (mtowers[i]) end

    end

end



--[[

function sendOutIdleEngineers (teamID)

    local engs = Spring.GetTeamUnitsByDefs (teamID, {UnitDefNames["kdroneengineer"].id})

    if (engs == nil) then return end

    --Spring.Echo ("#mtowers:" .. #mtowers)

    for i in pairs (engs) do

        if (Spring.ValidUnitID (engs[i])) then      

            if (not Spring.GetCommandQueue(engs[i])) then 

                Spring.Echo ("engineer " .. engs[i] .. " has nothing to do and runs away, lol")

                moveAway (engs[i], 1000)

                deployNearRes (engs[i], "shift")

            end

        end

    end

end

--]]



function clonetest (teamID)

    local munits = Spring.GetTeamUnitsByDefs (teamID, {UnitDefNames["kdroneengineer"].id})

    for i in pairs (munits) do

        cloneUnit (munits[i], UnitDefNames["kdroneengineer"].id)

    end

end


function gadget:UnitFinished(unitID, unitDefID, teamID) 

    if (isTeamCBM (teamID)) then

        --Spring.Echo ("den controll ich!")

        --Spring.GiveOrderToUnit(unitID, CMD.IDLEMODE,{0},{})   --always fly

        --if (unitIsMobile (unitID) == true) then

            --Spring.Echo ("ich bin da und renn weg")

            moveAway (unitID, 200)

            unitOnMission [unitID] = 30

            if ( (unitName(unitID) ~= "kdroneengineer") and (unitName(unitID) ~= "kdroneminingtower") and (unitName(unitID) ~= "kgrounddronestructure") and (unitName(unitID) ~= "kdroneairfactory") ) then
                squadassign = math.random(1,4)
                table.insert(teamsData[teamID].squads[squadassign], unitID) --random squad
            end

        


    else

        --Spring.Echo ("den controll ich NICHT!")

    end

    --if (teamID ~= myTeam) then return end

    --Spring.Echo ("SchwarmAI: hab ne neue unit!")

    --local unitDef = UnitDefs[unitDefID]

    --if (unitDef.name == "kdroneengineer") then 

        --local nearest_resID, rx,ry,rz, nearest_res_distance  = nearestResFromUnit (unitID)

        --Spring.Echo ("going to " .. rx .. ":" .. rz)

        --deployAt (unitID,  rx+math.random(-50,50), rz+math.random(-50,50))        

    --end   

    --if (isResourceType (unitDefID)) then Spring.Echo ("its a resource!") end 

end







------HELPER functions-----------

--is team controlled by me?

function isTeamCBM (teamID)

    for t in pairs(myTeam) do

        if (teamID == myTeam[t]) then return true end

    end

    return false

end

function round(num, idp) --mathematical rounding
  if idp and idp>0 then
    local mult = 10^idp
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end

function unweighted_choice ( inputTable )
    local numchoices = 0
    for i,v in ipairs(inputTable) do
        numchoices = numchoices+1
    end
    
    local x = math.random(1, numchoices)
    
    return inputTable[x]
end


function unitIsMobile(unitID)

    local udID =Spring.GetUnitDefID(unitID)

    local uDef = UnitDefs [udID]    

    return (uDef.maxVelocity or 0) > 0

end



function getBuildSpot (ux, uy, uz, buildingname, r, rgrow)  

    --Spring.MarkerAddPoint (ux,uy,uz, "trying to find a spot here")
    
    --if(buildingname=="kdronebigminingtower") then ux,uy,uz,dist = nearestResFromUnit( end

    local blocked = 0

    if (r == nil) then r = 200 end

    if (rgrow == nil) then rgrow = 200 end

    try = 0

    

    while (blocked ~=2 and try < 20) do

        local randtry = 2
        
        local rx,rz,ry = 0,0,0

        while(blocked ~=2 and randtry < 20) do
            rx = ux + math.random (-r, r)

            rz = uz + math.random (-r, r)

            ry = Spring.GetGroundHeight (rx,rz)

            blocked =Spring.TestBuildOrder (UnitDefNames[buildingname].id, rx,ry,rz,0)
        
            randtry = randtry+1
        
        end
        
        x,y,z = rx,ry,rz
        
        r = r +rgrow

        try = try +1

    end 

    --Spring.MarkerAddPoint (x,y,z, "found this after " .. try .. " tries")

    return x,y,z

end

function getMiningTowerSpot (ux, uy, uz, builder, r, rgrow)  --NOT YET IMPLEMENTED! DO NOT USE!

    local ox,oy,oz = ux,uy,uz --for debugging - holding on to input data
    
    --Spring.MarkerAddPoint (ux,uy,uz, "trying to find a spot here")
    
    id,ux,uy,uz,dist = nearestResFromUnit(builder) --start building at the nearestResFromUnit 
    
    --[[Spring.Echo("resXZ   " .. ux .. "     " .. uz)
    Spring.MarkerAddPoint(ux,uy,uz,"targeting this res")
    Spring.Echo("Differences:    " .. ox-ux ..  "   " ..oz-uz)]]--
    
    local blocked = 0

    if (r == nil) then r = 0 end

    if (rgrow == nil) then rgrow = 20 end

    try = 0

    while (blocked ~=2 --[[and try < 20]]) do

        x = ux + math.random (-r, r)

        z = uz + math.random (-r, r)

        y = Spring.GetGroundHeight (x,z)

        blocked =Spring.TestBuildOrder (UnitDefNames["kdronebigminingtower"].id, x,y,z,0)

        r = r +rgrow

        try = try +1
        
        end 

    --Spring.MarkerAddPoint (x,y,z, "found this after " .. try .. " tries")
    
    

    return x,y,z

end



function units_allied (unitID1, unitID2)

    return Spring.GetUnitAllyTeam (unitID1) == Spring.GetUnitAllyTeam (unitID2)

end



--funzt aber irgendwie naja

function nearestResFromUnit (uID)

    local nearest_resID = nil

    local nearest_res_distance = 9999999999

    local x,y,z = Spring.GetUnitPosition(uID)

    if (not x or not z) then return end

    res=Spring.GetUnitsInCylinder (x,z, 5000, Spring.GetGaiaTeamID())

    if (res == nil) then return nil end --no near units at all :/

    --Spring.Echo ("#res:" .. #res)

    for i in pairs (res) do

        if Spring.ValidUnitID (res[i]) then

            --Spring.Echo ("jo:"..res[i])

            --Spring.Echo ("vergleiche" .. res[i])

            --if (isResourceType (Spring.GetUnitDefID(res[i])) == true) then            

            if (true) then

                local d = Spring.GetUnitSeparation (uID, res[i])

                if (d < nearest_res_distance) then

                    nearest_res_distance = d

                    nearest_resID = res[i]

                end

            end

        end

    end

    if (nearest_resID~=nil) then        

        local rx,ry,rz=Spring.GetUnitPosition(nearest_resID)

        return nearest_resID, rx,ry,rz, nearest_res_distance 

        else return 666,666,666,666,666,666,666 --lol! -yanom

    end

end



--funzt!

function isResourceType (unitDefID) 

    if (UnitDefID == nil) then return false end

    local udef = UnitDefs[unitDefID]

    if (udef) then

        local cp = udef.customParams

        if (cp) then

            if (cp.is_mineable) then return true end

        end

    end

    return false

end

---------------------------------



--2         3        4   5   6   7   

--playerID, cmdType, px, py, pz, label

function gadget:RecvLuaMsg(msg, playerID)

    --Spring.Echo ("AI: look what i got " .. msg)

    if (msg:find("MapDrawCmd",1,true)) then

        local p = explode ("|", msg)

        if (p[3] == "point") then

            local x = p[4]

            local y = p[5]

            local z = p[6]

            local label = p[7]

        end

    end

    

end









-- explode(seperator, string)

function explode(d,p)

  local t, ll

  t={}

  ll=0

  if(#p == 1) then return {p} end

    while true do

      l=string.find(p,d,ll,true) -- find the next d in the string

      if l~=nil then -- if "not not" found then..

        table.insert(t, string.sub(p,ll,l-1)) -- Save it in our array.

        ll=l+1 -- save just after where we found it for searching next time.

      else

        table.insert(t, string.sub(p,ll)) -- Save what's left in our array.

        break -- Break at end, as it should be, according to the lua manual.

      end

    end

  return t

end







else ------UNSYNCED--------



--function gadget:AddConsoleLine(msg,priority)                          --does not work

--  Spring.Echo ("i hear you man")

--end







--function gadget:KeyPress(key)                                         --this works!

    --Spring.Echo ("pressed key in gadget: " .. key)

--end



--function gadget:MapDrawCmd(playerID, cmdType, px, py, pz, label)

--  Spring.Echo ("marker!")

--  Spring.Echo ("playerID: " .. playerID .. "cmdType:" .. cmdType .. "px:" .. px .. "py:" .. py .. "pz:" .. pz .."label:" .. label)    

--end

end --end unsynced


