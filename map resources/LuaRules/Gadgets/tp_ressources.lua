
function gadget:GetInfo()
	return {
		name      = "ressource spawner",
		desc      = "put some ressource on the map",
		author    = "knorke",
		date      = "Okt 2010",
		license   = "ja ne!",
		layer     = 0,
		enabled   = true
	}
end

-- synced only
if (not gadgetHandler:IsSyncedCode()) then
	return false
end

local ressource_name = "bminerals"


local function SpawnRessource (sx,sz)
	local sh = Spring.GetGroundHeight(sx, sz)
	local res = Spring.CreateUnit(ressource_name, sx, sh, sz, math.random(0,3), Spring.GetGaiaTeamID())
	Spring.GiveOrderToUnit(res, CMD.ONOFF, { 0 }, {} )
--	Spring.SetUnitNeutral (res, true)
	Spring.SetUnitAlwaysVisible(res, true)
	--Spring.SetUnitMaxHealth (res, 250) --does nothing?
	--Spring.SetUnitHealth (res,200) --does nothing?
end

local function SpawnRessourceField (x,z,  number, spread)
	for i = 0, number, 1 do
		local sx = x+math.random (-spread/2,spread/2)
		local sz = z+math.random (-spread/2,spread/2)
		SpawnRessource (sx,sz)
	end
end

--'0' normal '1' hill
function gadget:GameStart()	
	Spring.Echo ("MAP: spawning ressources - start")
	local layout = Spring.GetMapOptions().rocklayout	
	Spring.Echo ("MAP: using layout:" .. layout)
	if (layout == '0') then	
		Spring.Echo ("MAP: normal rock layout")
		SpawnRessourceField (241,383, 3, 300)
		SpawnRessourceField (7932,790, 3, 300)
		SpawnRessourceField (6919,7796, 3, 300)
		SpawnRessourceField (690,7131, 3, 300)
		SpawnRessourceField (292,4168, 3, 300)
		SpawnRessourceField (7949,4345, 3, 300)
		SpawnRessourceField (3478,147, 3, 300)
		SpawnRessourceField (3601,7617, 3, 300)
		SpawnRessourceField (3212,2515, 3, 300)
		SpawnRessourceField (4531,4443, 3, 300)
		SpawnRessourceField (2862,5906, 3, 300)

	end
	if (layout == '1') then	
		Spring.Echo ("MAP: hill layout")
		SpawnRessourceField (1363,1040, 3, 300)
		SpawnRessourceField (4128,1525, 3, 300)
		SpawnRessourceField (6224,894, 3, 300)
		SpawnRessourceField (6127,2420, 3, 300)
		SpawnRessourceField (4357,3099, 3, 300)
		SpawnRessourceField (1834,2832, 3, 300)
		SpawnRessourceField (1446,5285, 3, 300)
		SpawnRessourceField (3031,4591, 3, 300)
		SpawnRessourceField (5913,4626, 3, 300)
		SpawnRessourceField (6854,6376, 3, 300)
		SpawnRessourceField (4384,6019, 3, 300)
		SpawnRessourceField (1882,6973, 3, 300)

	end		
	
	Spring.Echo ("MAP: spawning ressources - done")
end