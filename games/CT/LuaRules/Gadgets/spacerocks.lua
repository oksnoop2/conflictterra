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
local meteorDefName  = "bminerals" --meteor unit name in flight, use a unit with a death explosion
local crashedMeteorDefname ="bminerals"  --the unit that should remain after the meteor has crashed into the ground
local meteorInterval = 120 	-- time between the arrival of meteor storms, in seconds
local meteorNumber = 5		--how many meteors per meteor storm
local meteorSpread = 300	--how far apart meteors drop (this defines the maximum possible distance)
local fallGravity = 1
local meteorSpawnHeight = 5000
local burnEffect1 = "buildersparks" -- CEG used for the meteor trail, needs to be visible out of los
local burnEffect2 = "buildersparks"

----------------------------------------------------------------------------------


local meteors = {} -- meteor set

function gadget:GameFrame(frame)

	if frame % (30 * meteorInterval) == 0 then 
		-- pick a random location for the meteor storm
		local meteorSpawnX = math.random(Game.mapSizeX)
		local meteorSpawnZ = math.random(Game.mapSizeZ)
		for i = 0, meteorNumber, 1 do
			--pick a spawn point for the meteor, randomly spread near the meteor storms location
			local mh = Spring.GetGroundHeight(meteorSpawnX, meteorSpawnZ) + meteorSpawnHeight+math.random (0,i*500)
			local mx =meteorSpawnX+math.random(-meteorSpread/2,meteorSpread/2)
			local mz =meteorSpawnZ+math.random(-meteorSpread/2,meteorSpread/2)
			local meteorID = Spring.CreateUnit(meteorDefName, mx, mh, mz, "n", Spring.GetGaiaTeamID()) -- will ignore Y and spawn at ground level
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
      meteors[meteorID] = nil -- remove it from the meteor set
	  Spring.DestroyUnit(meteorID) -- make it explode
	  local remains = Spring.CreateUnit (crashedMeteorDefname, x,y,z, math.random(0,3), Spring.GetGaiaTeamID())  --leave a crashed meteor thing at the impact site
	  Spring.SetUnitAlwaysVisible(remains, true)
	  Spring.GiveOrderToUnit(remains, CMD.ONOFF, { 0 }, {} )
    else -- above ground, show the meteor trail
      Spring.SpawnCEG(burnEffect1, x, y + 30, z)
      Spring.SpawnCEG(burnEffect2, x, y, z)
    end
  end
end