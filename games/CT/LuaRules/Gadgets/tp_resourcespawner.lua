function gadget:GetInfo()
  return {
    name      = "rock spawner",
    desc      = "Spawns rocks on the map, as defined in the map",
    author    = "knorke",
    date      = "28 Oct 2010",
    license   = "GNU GPL, v2 or later or horse",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end

if not gadgetHandler:IsSyncedCode() then
  return false -- no unsynced code
end

local resource_name = "bminerals"			--starting resource to be found on the map
gamesettings = VFS.Include(Game.mapName .. "_res.lua")

local function SpawnResource (sx,sz)
	if (sx == nil or sz == nil) then
		Spring.Echo ("tp_resourcespawner: sx or sz was NIL in SpawnResource (sx,sz)")
		return
	end
	Spring.Echo ("tp_resourcespawner: spawning resource at " .. sx ..":"..sz)
	local sh = Spring.GetGroundHeight(sx, sz)
	local res = Spring.CreateUnit(resource_name, sx, sh, sz, math.random(0,3), Spring.GetGaiaTeamID())
	Spring.GiveOrderToUnit(res, CMD.ONOFF, { 0 }, {} )
--	Spring.SetUnitNeutral (res, true)
	Spring.SetUnitAlwaysVisible(res, true)
	--Spring.SetUnitMaxHealth (res, 250) --does nothing?
	--Spring.SetUnitHealth (res,200) --does nothing?
end

local function PutResourcesOnMap ()
	if (gamesettings == nil) then Spring.Echo ("tp_resourcespawner: gamesettings==nil, doing nothing") return end
	Spring.Echo ("tp_resourcespawner: ----PutResourcesOnMap ()----")
	if (gamesettings.res) then
		for resID in pairs(gamesettings.res) do
			--Spring.Echo ( "res #" .. resID .. " at " ..  gamesettings.res[resID].x  .. ":"..gamesettings.res[resID].y )
			SpawnResource (gamesettings.res[resID].x, gamesettings.res[resID].y)
		end
	end
end

function gadget:GameStart()
	Spring.Echo ("tp_resourcespawner: Hey I am the resource spawn gadget")
	PutResourcesOnMap ()
	--Spring.Echo ("!!!!!!!! lolfactor=" .. gamesettings.lolfactor)
end

function gadget:GameFrame(frame)
--if (frame % 3200 ~=0) then return end
--Spring.Echo ("----resource spawner anfang testtext----")
--if (gamesettings == nil) then Spring.Echo ("was nil") end
--Spring.Echo ("!!!!!!!! lolfactor=" .. gamesettings.lolfactor)
--if (gamesettings.res) then
--	for resID in pairs(gamesettings.res) do
		--Spring.Echo ( "res #" .. resID .. " at " ..  gamesettings.res[resID].x  .. ":"..gamesettings.res[resID].y )
--	end
end

function gadget:Initialize()
Spring.Echo ("tp_resourcespawner: Game.mapName=" .. Game.mapName)
end