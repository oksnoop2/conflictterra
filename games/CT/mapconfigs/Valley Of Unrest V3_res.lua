--map config by knorke: 1x startfield per player, another line of rocks near the start and 2 more fields on the trinangle geo hills

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
SpawnResourceField (4883 , 1254, 15, 500)   -- R startfield 1
SpawnResource (3774 , 809)   -- R startline near cliff
SpawnResource (3838 , 699)   -- 
SpawnResource (3898 , 565)   -- 
SpawnResource (3954 , 435)   -- 
SpawnResource (4055 , 284)   -- 
SpawnResource (4169 , 146)   -- 
SpawnResource (3658 , 898)   -- 
SpawnResource (3493 , 937)   -- 
SpawnResource (3381 , 978)   -- 
SpawnResource (3277 , 1031)   -- 
SpawnResourceField (4909 , 3653, 20, 800)   -- R triangle hill middle
SpawnResourceField (1262 , 3922,15, 500)   -- L startfield 1
SpawnResource (2113 , 4863)   -- L startline near cliff
SpawnResource (2195 , 4773)   -- 
SpawnResource (2266 , 4686)   -- 
SpawnResource (2360 , 4587)   -- 
SpawnResource (2443 , 4496)   -- 
SpawnResource (2543 , 4372)   -- 
SpawnResource (2655 , 4282)   -- 
SpawnResource (2780 , 4210)   -- 
SpawnResource (2887 , 4154)   -- 
SpawnResource (2874 , 3970)   -- 
SpawnResourceField (1217 , 1494,20,800)   -- L triangle hill middle
---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=900, meteorstorm_number=6, featurehandling="replace"}