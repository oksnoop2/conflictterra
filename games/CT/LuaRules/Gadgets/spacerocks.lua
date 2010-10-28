--BUG: rocks fly on endlessly on /luarules reload or when gadget is killed for whatever reason

function gadget:GetInfo()
  return {
    name      = "Space Rock",
    desc      = "Spawns rocks from space.",
    author    = "oksnoop2 modded by knorke",
    date      = "4/24/2010",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end


if not gadgetHandler:IsSyncedCode() then
  return false -- no unsynced code
end


----- Settings -----------------------------------------------------------------
local meteorDefName  = {"bmeteor_big", "bmeteor"} --meteor unit name in flight, use a unit with a death explosion
--local crashedMeteorDefname ="bminerals"  --the unit that should remain after the meteor has crashed into the ground
local meteorInterval = 120--2000 	-- time between the arrival of meteor storms, in seconds
local meteorNumber = 5		--how many meteors per meteor storm
local meteorSpread = 300	--how far apart meteors drop (this defines the maximum possible distance)
local fallGravity = 1
local meteorSpawnHeight = 5000
local min_distance_to_units = 100	--how far away from player units a meteor must impact to leave a rock (as not to block units or factories)
local burnEffect1 = "firetrail" -- CEG used for the meteor trail, needs to be visible out of los
local burnEffect2 = "buildersparks"

----------------------------------------------------------------------------------
local meteors = {} -- meteor set

local function Impact (meteorID)
	local nearunits = Spring.GetUnitNearestEnemy  (meteorID, min_distance_to_units, false)		
	local x, y, z = Spring.GetUnitPosition(meteorID)
	local h = Spring.GetGroundHeight(x, z)
	local cp = UnitDefs[Spring.GetUnitDefID(meteorID)].customParams
--	if (cp) then Spring.Echo ("has custom para") else Spring.Echo ("has NO custom para") end
	if (h > 0 and nearunits==nil and cp) then	--only leave a rock if the meteor landed on land and not too near units. otherwise just explode (so it does not block factories etc)	
--		Spring.Echo ("yo")
--		Spring.Echo (cp)
		for i,v in ipairs(cp) do Spring.Echo(i .. "="..v) end
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

function gadget:GameFrame(frame)
--Spring.SpawnCEG(burnEffect2, 10,300 , 10)
--Spring.SpawnCEG(burnEffect1, 50,300 , 10,0,1,0,5)
if (frame % 90 == 0) then Spring.SpawnCEG(burnEffect1, 100,300,10) end
	if frame > 1 and frame % (30 * meteorInterval) == 0 then 
		-- pick a random location for the meteor storm
		local meteorSpawnX = math.random(Game.mapSizeX)
		local meteorSpawnZ = math.random(Game.mapSizeZ)
		Spring.Echo ("Incoming Meteor Storm! Coordinates: [" .. meteorSpawnX .. " : " .. meteorSpawnZ .."]")
		for i = 0, meteorNumber, 1 do
			--pick a spawn point for the meteor, randomly spread near the meteor storms location
			local mh = Spring.GetGroundHeight(meteorSpawnX, meteorSpawnZ) + meteorSpawnHeight+math.random (0,i*500)
			local mx =meteorSpawnX+math.random(-meteorSpread/2,meteorSpread/2)
			local mz =meteorSpawnZ+math.random(-meteorSpread/2,meteorSpread/2)
			local meteortype =  math.random(table.getn(meteorDefName))	--select a random type of meteor
			local meteorID = Spring.CreateUnit(meteorDefName[meteortype], mx, mh, mz, "n", Spring.GetGaiaTeamID()) -- will ignore Y and spawn at ground level
			meteors[meteorID] = true -- put it in the meteor set
			Spring.SetUnitAlwaysVisible(meteorID, true)
			Spring.MoveCtrl.Enable(meteorID) -- tell spring we'll take care of moving the meteor
			Spring.MoveCtrl.SetPosition (meteorID,mx,mh,mz)
			Spring.MoveCtrl.SetGravity(meteorID, fallGravity*math.random(1,1.5)) -- make gravity affect the meteor
			
		end
	end
  for meteorID in pairs(meteors) do  -- loop through every meteor in the meteor set
    local x, y, z = Spring.GetUnitPosition(meteorID)
    local h = Spring.GetGroundHeight(x, z)
    if y < h then -- if the meteor below ground level
		Impact (meteorID)
    else -- above ground, show the meteor trail
      Spring.SpawnCEG(burnEffect1, x, y + 30, z)
--      Spring.SpawnCEG(burnEffect2, x, y, z)
    end
  end
end