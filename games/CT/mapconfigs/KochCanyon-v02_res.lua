--map config by knorke: placing resources on the hills based on terrain heigth

local res = {}

local function SpawnResource  (x,y)
	newrock = {}
	newrock.x = x
	newrock.y = y
	table.insert (res, newrock)
end

local function SpawnResourceField (x,z,  number, spread)
        for i = 0, number, 1 do
                local sx = x+math.random (-spread/2,spread/2)
                local sz = z+math.random (-spread/2,spread/2)
                SpawnResource (sx,sz)
        end
end


---coordinates go in between here---
mapstep = 200
	for mx = mapstep, Game.mapSizeX-mapstep, mapstep do
		for mz = mapstep, Game.mapSizeZ-mapstep, mapstep do
			local h = Spring.GetGroundHeight (mx,mz)
			if (h > 360) then
				SpawnResourceField  (mx,mz, 2, 100)
			end
		end
	end
---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=900, meteorstorm_number=6, featurehandling="remove"}