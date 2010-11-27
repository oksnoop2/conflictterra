--layout by knorke: some clusters in the big craters and one mineral in all the small ones
local res = {}

local function SpawnResource  (x,y)
	newrock = {}
	newrock.x = x
	newrock.y = y
	table.insert (res, newrock)
end

---coordinates go in between here---
SpawnResource (2884 , 2924)   -- left big crater
SpawnResource (2992 , 3158)   -- 
SpawnResource (3145 , 2944)   -- 
SpawnResource (3055 , 2677)   -- 
SpawnResource (3044 , 2900)   -- 
SpawnResource (2874 , 2703)   -- 
SpawnResource (3228 , 2777)   -- 
SpawnResource (3210 , 3098)   -- 
SpawnResource (4061 , 2647)   -- left small crater near big crater
SpawnResource (4063 , 2540)   -- 
SpawnResource (4148 , 2588)   -- 
SpawnResource (4151 , 2663)   -- 
SpawnResource (4072 , 2718)   -- 
SpawnResource (7622 , 1804)   -- right big crater
SpawnResource (7526 , 1615)   -- 
SpawnResource (7862 , 1697)   -- 
SpawnResource (7918 , 1982)   -- 
SpawnResource (7825 , 1839)   -- 
SpawnResource (7729 , 1633)   -- 
SpawnResource (7602 , 1936)   -- 
SpawnResource (7931 , 1822)   -- 
SpawnResource (7511 , 2894)   -- right small crater near big crater
SpawnResource (7465 , 2762)   -- 
SpawnResource (7363 , 2857)   -- 
SpawnResource (7471 , 3030)   -- 
SpawnResource (7663 , 2855)   -- 
SpawnResource (1491 , 696)   -- all the small craters everywhere
SpawnResource (1332 , 982)   -- 
SpawnResource (2362 , 1298)   -- 
SpawnResource (2167 , 302)   -- 
SpawnResource (1863 , 368)   -- 
SpawnResource (932 , 3339)   -- 
SpawnResource (1057 , 3527)   -- 
SpawnResource (1646 , 3760)   -- 
SpawnResource (1255 , 4726)   -- 
SpawnResource (4423 , 4677)   -- 
SpawnResource (4596 , 4325)   -- 
SpawnResource (4362 , 4230)   -- 
SpawnResource (5339 , 4850)   -- 
SpawnResource (6762 , 4109)   -- 
SpawnResource (6660 , 3704)   -- 
SpawnResource (6299 , 3478)   -- 
SpawnResource (8084 , 4560)   -- 
SpawnResource (8868 , 4950)   -- 
SpawnResource (9718 , 3518)   -- 
SpawnResource (9473 , 3295)   -- 
SpawnResource (9501 , 1715)   -- 
SpawnResource (9930 , 726)   -- 
SpawnResource (9502 , 522)   -- 
SpawnResource (8596 , 426)   -- 
SpawnResource (8681 , 215)   -- 
SpawnResource (5801 , 497)   -- 
SpawnResource (6198 , 600)   -- 
SpawnResource (6406 , 453)   -- 
SpawnResource (4529 , 1715)   -- 
SpawnResource (5916 , 3202)   -- 
SpawnResource (7367 , 4988)   -- 
---coordinates go in between here---


return {lolfactor=95, res=res, featurehandling="replace", meteorstorm_interval=30, meteorstorm_firsttime =600, meteorstorm_number=3}