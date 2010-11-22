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

SpawnResource (1722 , 3361)
SpawnResource (1574 , 3318)
SpawnResource (1880 , 3412)
SpawnResource (1373 , 3272)
SpawnResource (2042 , 3482)

SpawnResourceField (241,383, 3, 300)
SpawnResourceField (7932,790, 3, 300)
SpawnResourceField (6919,7796, 3, 300)
SpawnResourceField (690,7131, 3, 300)
SpawnResourceField (292,4168, 3, 300)
SpawnResourceField (7949,4345, 3, 300)
SpawnResourceField (3478,147, 3, 300)
SpawnResourceField (3601,7617, 3, 300)
SpawnResourceField (3212,2515, 3, 300)
SpawnResourceField (4531,4443, 3, 300)
SpawnResourceField (2862,5906, 3, 300)
---coordinates go in between here---
 
return {lolfactor=95, res=res}