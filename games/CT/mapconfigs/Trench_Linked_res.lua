--layout by knorke: resoucers around all the edges on some on the bridge thingies
local res = {}

local function SpawnResource  (x,y)
	newrock = {}
	newrock.x = x
	newrock.y = y
	table.insert (res, newrock)
end

---coordinates go in between here---
SpawnResource (368 , 429)   --
SpawnResource (351 , 730)   -- 
SpawnResource (342 , 1102)   -- 
SpawnResource (1338 , 421)   -- 
SpawnResource (1323 , 754)   -- 
SpawnResource (1301 , 1185)   -- 
SpawnResource (804 , 397)   -- 
SpawnResource (1865 , 360)   -- 
SpawnResource (1888 , 766)   -- 
SpawnResource (1844 , 1196)   -- 
SpawnResource (2236 , 360)   -- 
SpawnResource (2758 , 354)   -- 
SpawnResource (2727 , 760)   -- 
SpawnResource (2747 , 1261)   -- 
SpawnResource (364 , 7843)   -- 
SpawnResource (361 , 7558)   -- 
SpawnResource (357 , 7196)   -- 
SpawnResource (726 , 7876)   -- 
SpawnResource (1296 , 7880)   -- 
SpawnResource (1281 , 7529)   -- 
SpawnResource (1265 , 7215)   -- 
SpawnResource (1846 , 7876)   -- 
SpawnResource (1859 , 7534)   -- 
SpawnResource (1852 , 7196)   -- 
SpawnResource (2250 , 7876)   -- 
SpawnResource (2783 , 7881)   -- 
SpawnResource (2774 , 7519)   -- 
SpawnResource (2755 , 7186)   -- 
SpawnResource (1241 , 6796)   -- 
SpawnResource (1825 , 6796)   -- 
SpawnResource (1240 , 6486)   -- 
SpawnResource (1846 , 6434)   -- 
SpawnResource (1233 , 6249)   -- 
SpawnResource (1854 , 6158)   -- 
SpawnResource (1237 , 5912)   -- 
SpawnResource (1843 , 5867)   -- 
SpawnResource (314 , 6785)   -- 
SpawnResource (319 , 6459)   -- 
SpawnResource (300 , 6169)   -- 
SpawnResource (299 , 5902)   -- 
SpawnResource (2808 , 6847)   -- 
SpawnResource (2785 , 6460)   -- 
SpawnResource (2787 , 6204)   -- 
SpawnResource (2771 , 5878)   -- 
SpawnResource (1847 , 1529)   -- 
SpawnResource (1826 , 1847)   -- 
SpawnResource (1838 , 2169)   -- 
SpawnResource (2765 , 1522)   -- 
SpawnResource (2745 , 1854)   -- 
SpawnResource (2739 , 2143)   -- 
SpawnResource (1269 , 1555)   -- 
SpawnResource (1284 , 1854)   -- 
SpawnResource (1219 , 2156)   -- 
SpawnResource (307 , 1469)   -- 
SpawnResource (298 , 1814)   -- 
SpawnResource (309 , 2154)   -- 
SpawnResource (2259 , 5597)   -- 
SpawnResource (2271 , 5313)   -- 
SpawnResource (2277 , 4926)   -- 
SpawnResource (776 , 5566)   -- 
SpawnResource (744 , 5281)   -- 
SpawnResource (736 , 4895)   -- 
SpawnResource (729 , 5075)   -- 
SpawnResource (741 , 5416)   -- 
SpawnResource (2259 , 5459)   -- 
SpawnResource (2274 , 5092)   -- 
SpawnResource (2296 , 3344)   -- 
SpawnResource (2272 , 3124)   -- 
SpawnResource (2281 , 2887)   -- 
SpawnResource (2276 , 2603)   -- 
SpawnResource (2269 , 2752)   -- 
SpawnResource (839 , 3308)   -- 
SpawnResource (804 , 3111)   -- 
SpawnResource (768 , 2906)   -- 
SpawnResource (797 , 2706)   -- 
SpawnResource (820 , 2570)   -- 
SpawnResource (1360 , 2890)   -- 
SpawnResource (1424 , 2968)   -- 
SpawnResource (1505 , 3051)   -- 
SpawnResource (1641 , 3007)   -- 
SpawnResource (1549 , 2899)   -- 
SpawnResource (1348 , 3081)   -- 
SpawnResource (1630 , 3160)   -- 
SpawnResource (1773 , 2899)   -- 
SpawnResource (1458 , 2794)   -- 
SpawnResource (1531 , 2971)   -- 
SpawnResource (1327 , 5156)   -- 
SpawnResource (1456 , 5276)   -- 
SpawnResource (1614 , 5156)   -- 
SpawnResource (1640 , 5410)   -- 
SpawnResource (1459 , 5164)   -- 
SpawnResource (1770 , 5148)   -- 
SpawnResource (1591 , 5272)   -- 
SpawnResource (1433 , 5398)   -- 
SpawnResource (1356 , 5248)   -- 
SpawnResource (1606 , 5096)   -- 
---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=480, meteorstorm_number=6}