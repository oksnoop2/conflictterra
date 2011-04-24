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
SpawnResourceField (1727 , 1490, 4, 300)   -- base1
SpawnResourceField (1916 , 1349, 4, 300)   -- base1
SpawnResourceField (999 , 2504, 4, 300)   -- expansion1
SpawnResourceField (1400 , 2804, 4, 300)   -- expansion1
SpawnResourceField (3266 , 2425, 3, 100)   -- obelisk1
SpawnResourceField (2400 , 2844, 4, 300)   -- expansion1
SpawnResourceField (2652 , 3078, 4, 300)   -- expansion1
SpawnResourceField (2360 , 5042, 4, 300)   -- expansion1
SpawnResourceField (2579 , 5341, 4, 300)   -- expansion1
SpawnResourceField (3052 , 4996, 4, 300)   -- expansion1
SpawnResourceField (5785 , 1255, 4, 300)   -- expansion2
SpawnResourceField (5669 , 915, 4, 300)   -- expansion 2
SpawnResourceField (5067 , 1135, 4, 300)   -- expansion 2
SpawnResourceField (4973 , 3755, 3, 100)   -- obelisk2
SpawnResourceField (4077 , 3124, 4, 600)   -- middle
SpawnResourceField (5475 , 3068, 4, 300)   -- expansion2
SpawnResourceField (5805 , 3387, 4, 300)   -- expansion2
SpawnResourceField (6806 , 3392, 4, 300)   -- expansion2
SpawnResourceField (7121 , 3747, 4, 300)   -- expansion2
SpawnResourceField (6170 , 4798, 4, 300)   -- base2
SpawnResourceField (6426 , 4646, 4, 300)   -- base2

---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=120, meteorstorm_number=6, featurehandling="remove"}