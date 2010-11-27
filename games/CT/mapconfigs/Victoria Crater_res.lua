local res = {}

local function SpawnResource  (x,y)
	newrock = {}
	newrock.x = x
	newrock.y = y
	table.insert (res, newrock)
end

---coordinates go in between here---
SpawnResource (2989 , 3019)   -- CENTER OF CRATER
SpawnResource (3001 , 3581)   -- 
SpawnResource (2989 , 3398)   -- 
SpawnResource (2984 , 3188)   -- 
SpawnResource (2984 , 2772)   -- 
SpawnResource (2961 , 2464)   -- 
SpawnResource (2925 , 2133)   -- 
SpawnResource (2264 , 2978)   -- 
SpawnResource (2478 , 2956)   -- 
SpawnResource (2687 , 2956)   -- 
SpawnResource (3153 , 2983)   -- 
SpawnResource (3337 , 2968)   -- 
SpawnResource (3570 , 2962)   -- 
SpawnResource (2745 , 3229)   -- 
SpawnResource (2665 , 2640)   -- 
SpawnResource (3201 , 2647)   -- 
SpawnResource (3191 , 3216)   -- 
SpawnResource (1027 , 1309)   -- TOP LEFT
SpawnResource (853 , 1442)   -- 
SpawnResource (1262 , 1090)   -- 
SpawnResource (1268 , 1524)   -- 
SpawnResource (1101 , 1632)   -- 
SpawnResource (1457 , 1299)   -- 
SpawnResource (1303 , 5034)   -- BOTTOM LEFT
SpawnResource (1140 , 4903)   -- 
SpawnResource (1459 , 5121)   -- 
SpawnResource (1041 , 5034)   -- 
SpawnResource (1229 , 5126)   -- 
SpawnResource (1366 , 5195)   -- 
SpawnResource (5181 , 4979)   -- BOTTOM RIGHT
SpawnResource (5288 , 4835)   -- 
SpawnResource (5082 , 5069)   -- 
SpawnResource (5233 , 5130)   -- 
SpawnResource (5306 , 5036)   -- 
SpawnResource (5411 , 4935)   -- 
SpawnResource (4898 , 1218)   -- TOP RIGHT
SpawnResource (4702 , 1056)   -- 
SpawnResource (5073 , 1337)   -- 
SpawnResource (5159 , 1168)   -- 
SpawnResource (4987 , 1033)   -- 
SpawnResource (4787 , 840)   -- 
SpawnResource (458 , 3290)   -- MIDDLE LEFT
SpawnResource (714 , 3269)   -- 
SpawnResource (568 , 3026)   -- 
SpawnResource (598 , 3453)   -- 
SpawnResource (568 , 3248)   -- 
SpawnResource (5671 , 3448)   -- MIDDLE RIGHT
SpawnResource (5681 , 3260)   -- 
SpawnResource (5838 , 3458)   -- 
SpawnResource (5488 , 3447)   -- 
SpawnResource (5651 , 3583)   -- 
---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=500, meteorstorm_number=6}