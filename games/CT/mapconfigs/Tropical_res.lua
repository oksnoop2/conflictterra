--map config by Sanada

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
SpawnResourceField (6725 , 2804, 5, 300)   -- starter
SpawnResourceField (6595 , 2984, 5, 300)   -- starter
SpawnResourceField (6009 , 2917, 5, 300)   -- starter
SpawnResourceField (6077 , 2596, 5, 300)   -- starter
SpawnResourceField (3333 , 2896, 5, 300)   -- starter
SpawnResourceField (3195 , 2623, 5, 300)   -- starter
SpawnResourceField (2435 , 2876, 5, 300)   -- starter
SpawnResourceField (2451 , 2586, 5, 300)   -- starter
SpawnResourceField (2451 , 7707, 5, 300)   -- starter
SpawnResourceField (2569 , 7429, 5, 300)   -- starter
SpawnResourceField (3159 , 7303, 5, 300)   -- starter
SpawnResourceField (2979 , 7726, 5, 300)   -- starter
SpawnResourceField (6099 , 7704, 5, 300)   -- starter
SpawnResourceField (5971 , 7302, 5, 300)   -- starter
SpawnResourceField (6760 , 7209, 5, 300)   -- starter
SpawnResourceField (6722 , 7636, 5, 300)   -- starter
SpawnResourceField (4360 , 5100, 3, 300)   -- middle
SpawnResourceField (4895 , 5122, 3, 300)   -- middle
SpawnResourceField (3271 , 4403, 2, 300)   -- island
SpawnResourceField (5965 , 5843, 2, 300)   -- island
SpawnResourceField (6244 , 4277, 2, 300)   -- island
SpawnResourceField (2945 , 5958, 2, 300)   -- island
SpawnResourceField (4535 , 7190, 4, 300)   -- big hill
SpawnResourceField (4664 , 2916, 4, 300)   -- big hill
SpawnResourceField (4772 , 1920, 4, 300)   -- big middle
SpawnResourceField (4644 , 8392, 4, 300)   -- big middle
SpawnResourceField (6640 , 8602, 3, 300)   -- back beach
SpawnResourceField (2425 , 8794, 3, 300)   -- back beach
SpawnResourceField (2518 , 1484, 3, 300)   -- back beach
SpawnResourceField (6775 , 1334, 3, 300)   -- back beach

---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=120, meteorstorm_number=6, featurehandling="remove"}