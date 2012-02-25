--BUG: rocks fly on endlessly on /luarules reload or when gadget is killed for whatever reason

function gadget:GetInfo()
  return {
    name      = "Space Rock",
    desc      = "Spawns rocks from space.",
    author    = "oksnoop2 heavily modded by knorke by 98% yo!",
    date      = "4/24/2010",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end


if not gadgetHandler:IsSyncedCode() then
  return false -- no unsynced code
end
--constants DONT EDIT---
local LAND = 1
local WATER = 2
local LAND_WATER = 3
------------------------

----- Settings -----------------------------------------------------------------
local meteorDefName  = {} --{"bmeteor_big", "bmeteor"} --meteor unit name in flight -> add impactunitname="unitname" tag to a unitdef to make i spawn as a meteor
local meteorInterval = 120	--2000 	-- time between the arrival of meteor storms, in seconds
local meteorFirstTime = 300 --delay in seconds until the first meteor storm
local meteorNumber = 5		--how many meteors per meteor storm
local meteorSpread = 550	--how far apart meteors drop (meteors storms cover a square with a sidelength of meteorSpread)
local fallGravity = 1
local meteorSpawnHeight = 5000
local min_distance_to_units = 100	--how far away from player units a meteor must impact to leave a rock (as not to block units or factories)
local burnEffect1 = "ct_firetrail" -- CEG used for the meteor trail, needs to be visible out of los
local slidespeed = 30
local slidetime = 60	 --how long (in frames) a meteor can slide before exploding anyway
local disappearOnUnits = false --should rocks that fall on units stay or disappear? staying rocks might cause the unit to become stuck.
local maxWaterDepth = -20		--(water is always at 0) how deep may the water be that meteors will appear above that spot or roll into it without disappearing?
local debugtest = false
local mapconfig_fn = Game.mapName .. "_res.lua"		--name of map config files
----------------------------------------------------------------------------------
local meteors = {} -- meteor set 1==in flight, > 1 sliding on ground (time it is already sliding in frames)
local storms = {} --triggered meteor storms
local gameframe = 0	--current gameframe (orly)
-----read map config file----------------------------------------------------------
--find and open the config file
if (VFS.FileExists(mapconfig_fn)) then 
	Spring.Echo ("spacerocks: found" .. mapconfig_fn .." in mod root folder or map")
	gamesettings = VFS.Include(mapconfig_fn)
else
	if (VFS.FileExists("mapconfigs\\" .. mapconfig_fn)) then 
		Spring.Echo ("spacerocks: found " .. mapconfig_fn .. " in mod mapconfigs folder")
		gamesettings = VFS.Include("mapconfigs\\" .. mapconfig_fn)
	else
		Spring.Echo ("spacerocks.lua: " .. mapconfig_fn .. " not found at all")
	end
end
if (gamesettings) then
	if (gamesettings.meteorstorm_interval) then
		meteorInterval = gamesettings.meteorstorm_interval
		Spring.Echo ("spacerocks: map has defined meteorstorm_interval:" .. meteorInterval)
		end
	if (gamesettings.meteorstorm_firsttime) then
		meteorFirstTime = gamesettings.meteorstorm_firsttime
		Spring.Echo ("spacerocks: map has defined meteorstorm_firsttime:" .. meteorFirstTime)
		end
	if (gamesettings.meteorstorm_number) then
		meteorNumber = gamesettings.meteorstorm_number
		Spring.Echo ("spacerocks: map has defined meteorstorm_number:" .. meteorNumber)
		end
end
------------------------------------------------------------------------------------


function make_meteorDefName_table ()
if (debugtest) then Spring.Echo ("spacerocks.lua: looking for spacerocks unitdefs") end
	for id,unitDef in pairs(UnitDefs) do
		local cp = UnitDefs[id].customParams
		if (cp) then
			if (cp.impactunitname) then
				local resname = unitDef.name
				if (debugtest) then Spring.Echo ("spacerocks.lua: found unitdef with impactunitname tag:" .. resname) end
				table.insert (meteorDefName, resname)
			end
		end
	end
if (meteorDefName == nil or #meteorDefName == 0) then
	Spring.Echo ("spacerocks.lua: no unitdefs with impactunitname tag found, no meteors will drop.")
	gadgetHandler:RemoveGadget() 
	end
end



local function Impact (meteorID)
	local nearunits = Spring.GetUnitNearestEnemy  (meteorID, min_distance_to_units, false)		
	local x, y, z = Spring.GetUnitPosition(meteorID)
	local h = Spring.GetGroundHeight(x, z)
	local cp = UnitDefs[Spring.GetUnitDefID(meteorID)].customParams
	meteors[meteorID] = meteors[meteorID] + 1
	if (meteors[meteorID] < slidetime) then
		--slide down slopes
		local gnx,gny,gnz = Spring.GetGroundNormal (x,z)
		local mx = x+(gnx*slidespeed)
		local mz = z+(gnz*slidespeed)
		Spring.MoveCtrl.SetPosition (meteorID, mx, h,mz)	
		--Spring.MoveCtrl.SetRotationOffset (meteorID,0,0,0)
		--Spring.MoveCtrl.SetRotationVelocity (meteorID, gnx, 0, gnz) --this doesnt really work		
		if (math.abs (x-mx) > 3 or math.abs (z-mz) > 3) then return end --danger: depending on terrain and too high slidespeed, unit might jump between two positions and never come to rest
	end
	--	if (cp) then Spring.Echo ("has custom para") else Spring.Echo ("has NO custom para") end
	if (h > maxWaterDepth and (nearunits==nil or disappearOnUnits==false) and cp) then	--only leave a rock if the meteor landed on land and not too near units. otherwise just explode (so it does not block factories etc)	
--		Spring.Echo ("yo")
--		Spring.Echo (cp)
		--for i,v in ipairs(cp) do Spring.Echo(i .. "="..v) end
		local remains_name = UnitDefs[Spring.GetUnitDefID(meteorID)].customParams.impactunitname		
		if (remains_name ~= nil) then
--			Spring.Echo ("exploding into" .. remains_name)
			local remains = Spring.CreateUnit (remains_name, x,y,z, math.random(0,3), Spring.GetGaiaTeamID())  --leave a crashed meteor thing at the impact site
			Spring.SetUnitAlwaysVisible(remains, true)
			Spring.GiveOrderToUnit(remains, CMD.ONOFF, { 0 }, {} )
		end			
	end
	meteors[meteorID] = nil -- remove meteor from the meteor set
	Spring.DestroyUnit(meteorID) -- make meteor explode
end

local function NewMeteorStorm (stormX,stormY, a, n)
	newstorm = {}
	newstorm.stormX = stormX
	newstorm.stormY = stormY
	newstorm.a = a
	newstorm.n = n
	table.insert (storms, newstorm)
	--Spring.Echo ("storm added")
end

local function MeteorStorm (stormX,stormY, a, n)
	for i = 1, n, 1 do
		--pick a spawn point for the meteor, randomly spread near the meteor storms location
		local mh = Spring.GetGroundHeight(stormX, stormY) + meteorSpawnHeight+math.random (0,i*500)
		local mx =stormX+math.random(-a/2,a/2)
		local mz =stormY+math.random(-a/2,a/2)
		local meteortype =  math.random(table.getn(meteorDefName))	--select a random type of meteor
		local meteorID = Spring.CreateUnit(meteorDefName[meteortype], mx, mh, mz, "n", Spring.GetGaiaTeamID()) -- will ignore Y and spawn at ground level
		meteors[meteorID] = 1 -- put it in the meteor set
		Spring.SetUnitAlwaysVisible(meteorID, true)
		Spring.MoveCtrl.Enable(meteorID) -- tell spring we'll take care of moving the meteor
		Spring.MoveCtrl.SetPosition (meteorID,mx,mh,mz)
		Spring.MoveCtrl.SetGravity(meteorID, fallGravity*math.random(1,1.5)) -- make gravity affect the meteor
		Spring.MoveCtrl.SetRotationVelocity (0,math.random (-0.5,0.5),0)   --spinning
	end
end

function gadget:GameFrame(frame)	
	local gameframe = frame
	--spawn new meteorstorms by intervall--
	if frame > (30 * meteorFirstTime) and frame % (30 * meteorInterval) == 0 then 
		local meteorSpawnX, meteorSpawnZ = randomMapSpot (LAND,30)
		-- Spring.Echo ("Incoming Meteor Storm! Coordinates: [" .. meteorSpawnX .. " : " .. meteorSpawnZ .."]")
		MeteorStorm (meteorSpawnX, meteorSpawnZ, meteorSpread, meteorNumber)
	end
	--spawn "triggered" storms--
	if (storms ~=nil) then 
		--unleash all the stored storms
		if (#storms > 0) then		
			for i = 1, #storms, 1 do
				MeteorStorm (storms[i].stormX, storms[i].stormY, storms[i].a, storms[i].n)
			end
		storms = {} --all storms unleashed \o/
		end
	end
	
	--move the existing meteors--
	for meteorID in pairs(meteors) do
    local x, y, z = Spring.GetUnitPosition(meteorID)
    local h = Spring.GetGroundHeight(x, z)
    if y < h+15 then -- if the meteor below ground level
		Spring.MoveCtrl.SetGravity(meteorID, 0)
		Impact (meteorID)
    else -- above ground, show the meteor trail
      Spring.SpawnCEG(burnEffect1, x+math.random(-20,20), y, z+math.random(-20,20))
    end
  end
end


function gadget:UnitDestroyed(unitID, unitDefID, teamID, attackerID)
--for testing: if cheating is enabled you can summon meteor storms by selfdestructing bmex
	if (Spring.IsCheatingEnabled()==true and string.find (UnitDefs[unitDefID].name, "bmex") ~= nil) then 
		local x, y, z = Spring.GetUnitPosition(unitID)
		MeteorStorm (x, z, meteorSpread, 6)
		end
--triggering meteor storms (ie for missions)
	if (string.find (UnitDefs[unitDefID].name, "tptrigger_meteorstorm") ~=nil) then
		local x, y, z = Spring.GetUnitPosition(unitID)
		--MeteorStorm (x, z, meteorSpread, 6)
		--Spring.Echo ("storm triggered")
		NewMeteorStorm (x,z, meteorSpread, 6)
		end	
--blocking random meteor storms (ie for missions)
		if (string.find (UnitDefs[unitDefID].name, "tptrigger_nometeorstorms")) then
		meteorInterval = 999999999
		Spring.Echo ("spacerocks.lua: no random meteor storms")
		end		
end

function randomMapSpot (groundtype, max_retry)
	local spotOkay = false
	local retry = 0
	while (not spotOkay) do
		local x = math.random(Game.mapSizeX)
		local z = math.random(Game.mapSizeZ)
		local h = Spring.GetGroundHeight (x,z)
		if (groundtype == LAND and h < maxWaterDepth and retry < max_retry) then 
			spotOkay = false
			retry = retry+1
		else
			return x,z
		end
	end
end

function gadget:Initialize()
	if (debugtest) then Spring.Echo ("space rocks Initialize") end
	make_meteorDefName_table ()
end