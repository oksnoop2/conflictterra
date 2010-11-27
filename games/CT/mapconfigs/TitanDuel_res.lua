--layout by knorke: 1 start field per player, 2 mineral rings in center, 2 more fields in the corners
local res = {}

local function SpawnResource  (x,y)
	newrock = {}
	newrock.x = x
	newrock.y = y
	table.insert (res, newrock)
end

---coordinates go in between here---
SpawnResource (1097 , 1096)   -- top start field
SpawnResource (1008 , 1192)   -- 
SpawnResource (1213 , 965)   -- 
SpawnResource (1305 , 732)   -- 
SpawnResource (790 , 1206)   -- 
SpawnResource (921 , 1300)   -- 
SpawnResource (1137 , 1224)   -- 
SpawnResource (1326 , 1094)   -- 
SpawnResource (1474 , 855)   -- 
SpawnResource (3945 , 4142)   -- botttom start field
SpawnResource (4032 , 4037)   -- 
SpawnResource (3853 , 4248)   -- 
SpawnResource (3796 , 4423)   -- 
SpawnResource (4233 , 3963)   -- 
SpawnResource (4496 , 3895)   -- 
SpawnResource (3697 , 4237)   -- 
SpawnResource (3827 , 4063)   -- 
SpawnResource (4082 , 3871)   -- 
SpawnResource (2287 , 2853)   -- middle circle
SpawnResource (2199 , 2660)   -- 
SpawnResource (2194 , 2456)   -- 
SpawnResource (2320 , 2305)   -- 
SpawnResource (2565 , 2284)   -- 
SpawnResource (2792 , 2359)   -- 
SpawnResource (2922 , 2543)   -- 
SpawnResource (2825 , 2776)   -- 
SpawnResource (2677 , 2901)   -- 
SpawnResource (2477 , 2894)   -- 
SpawnResource (1346 , 3956)   -- bottom expansion
SpawnResource (1210 , 3846)   -- 
SpawnResource (1079 , 3977)   -- 
SpawnResource (1244 , 4059)   -- 
SpawnResource (1436 , 4208)   -- 
SpawnResource (1598 , 4060)   -- 
SpawnResource (983 , 4174)   -- 
SpawnResource (965 , 3785)   -- 
SpawnResource (4292 , 1084)   -- top expansion
SpawnResource (4479 , 1033)   -- 
SpawnResource (4392 , 1256)   -- 
SpawnResource (4232 , 1238)   -- 
SpawnResource (4325 , 828)   -- 
SpawnResource (4183 , 831)   -- 
SpawnResource (4140 , 1134)   -- 
SpawnResource (4061 , 767)   -- 
SpawnResource (2505 , 3237)   -- 2nd middle circle
SpawnResource (2730 , 3156)   -- 
SpawnResource (2877 , 3054)   -- 
SpawnResource (2967 , 2893)   -- 
SpawnResource (3042 , 2724)   -- 
SpawnResource (3058 , 2539)   -- 
SpawnResource (3007 , 2346)   -- 
SpawnResource (2889 , 2241)   -- 
SpawnResource (2665 , 2136)   -- 
SpawnResource (2405 , 2144)   -- 
SpawnResource (2128 , 2240)   -- 
SpawnResource (2012 , 2472)   -- 
SpawnResource (1955 , 2716)   -- 
SpawnResource (2001 , 2886)   -- 
SpawnResource (2112 , 3076)   -- 
SpawnResource (2230 , 3185)   -- 
---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=120, meteorstorm_number=6}