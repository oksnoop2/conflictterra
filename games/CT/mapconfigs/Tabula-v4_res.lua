--map config by oksnoop2

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
SpawnResource (810 , 424)   -- 
SpawnResource (636 , 452)   -- 
SpawnResource (560 , 643)   -- 
SpawnResource (577 , 819)   -- 
SpawnResource (820 , 790)   -- ````````````````````````````````````
SpawnResource (1038 , 754)   -- 
SpawnResource (1112 , 543)   -- 
SpawnResource (987 , 361)   -- 
SpawnResource (689 , 826)   -- 
SpawnResource (1186 , 515)   -- 
SpawnResource (833 , 255)   -- 
SpawnResource (342 , 2683)   -- 
SpawnResource (365 , 2841)   -- 
SpawnResource (406 , 2986)   -- 
SpawnResource (516 , 3021)   -- 
SpawnResource (699 , 3048)   -- 
SpawnResource (861 , 2994)   -- 
SpawnResource (860 , 2862)   -- 
SpawnResource (832 , 2689)   -- 
SpawnResource (676 , 2533)   -- 
SpawnResource (451 , 2529)   -- 
SpawnResource (799 , 3064)   -- 
SpawnResource (365 , 4220)   -- 
SpawnResource (381 , 4298)   -- 
SpawnResource (399 , 4396)   -- 
SpawnResource (453 , 4509)   -- 
SpawnResource (642 , 4512)   -- 
SpawnResource (448 , 4021)   -- 
SpawnResource (679 , 4072)   -- 
SpawnResource (863 , 4264)   -- 
SpawnResource (821 , 4359)   -- 
SpawnResource (780 , 4408)   -- 
SpawnResource (783 , 4119)   -- 
SpawnResource (785 , 6172)   -- 
SpawnResource (797 , 6291)   -- 
SpawnResource (791 , 6400)   -- 
SpawnResource (800 , 6481)   -- 
SpawnResource (300 , 6252)   -- 
SpawnResource (557 , 6403)   -- 
SpawnResource (308 , 6454)   -- 
SpawnResource (538 , 6535)   -- 
SpawnResource (627 , 5988)   -- 
SpawnResource (494 , 6074)   -- 
SpawnResource (429 , 6487)   -- 
SpawnResource (2167 , 4054)   -- 
SpawnResource (2280 , 4212)   -- 
SpawnResource (2316 , 4304)   -- 
SpawnResource (2301 , 4510)   -- 
SpawnResource (1766 , 4542)   -- 
SpawnResource (1696 , 4348)   -- 
SpawnResource (1794 , 4131)   -- 
SpawnResource (1856 , 4050)   -- 
SpawnResource (2035 , 4040)   -- 
SpawnResource (2194 , 4554)   -- 
SpawnResource (1708 , 4410)   -- 
SpawnResource (1996 , 3204)   -- 
SpawnResource (2088 , 3274)   -- 
SpawnResource (2202 , 3319)   -- 
SpawnResource (2293 , 3316)   -- 
SpawnResource (2422 , 3241)   -- 
SpawnResource (2040 , 3034)   -- 
SpawnResource (2430 , 3067)   -- 
SpawnResource (2345 , 2872)   -- 
SpawnResource (2081 , 3146)   -- 
SpawnResource (2433 , 3131)   -- 
SpawnResource (3954 , 999)   -- 
SpawnResource (4047 , 1070)   -- 
SpawnResource (3881 , 1098)   -- 
SpawnResource (3980 , 1152)   -- 
SpawnResource (3812 , 1176)   -- 
SpawnResource (3932 , 5715)   -- 
SpawnResource (4031 , 5693)   -- 
SpawnResource (4008 , 5781)   -- 
SpawnResource (4083 , 5734)   -- 
SpawnResource (3917 , 5765)   -- 3916
SpawnResource (3917 , 5765)   -- 
SpawnResource (5941 , 2677)   -- 
SpawnResource (5905 , 2819)   -- 
SpawnResource (5931 , 2914)   -- 
SpawnResource (6007 , 3018)   -- 
SpawnResource (6113 , 3008)   -- 
SpawnResource (6211 , 3025)   -- 
SpawnResource (6313 , 2995)   -- 
SpawnResource (6376 , 2904)   -- 
SpawnResource (6374 , 2791)   -- 
SpawnResource (6334 , 2634)   -- 
SpawnResource (6015 , 3953)   -- 
SpawnResource (5979 , 3732)   -- 
SpawnResource (6073 , 3592)   -- 6073
SpawnResource (6078 , 3595)   -- 
SpawnResource (6010 , 3827)   -- 
SpawnResource (6434 , 3782)   -- 
SpawnResource (6339 , 3605)   -- 
SpawnResource (6458 , 4030)   -- 6457
SpawnResource (6458 , 4030)   -- 
SpawnResource (6389 , 4086)   -- 
SpawnResource (6249 , 4117)   -- 
SpawnResource (6091 , 4063)   -- 
SpawnResource (6269 , 3629)   -- 
SpawnResource (7268 , 4182)   -- 
SpawnResource (7274 , 4446)   -- 
SpawnResource (7263 , 4547)   -- 
SpawnResource (7428 , 4570)   -- 
SpawnResource (7554 , 4575)   -- 
SpawnResource (7673 , 4569)   -- 
SpawnResource (7448 , 4098)   -- 
SpawnResource (7530 , 4120)   -- 
SpawnResource (7618 , 4118)   -- 
SpawnResource (7732 , 4249)   -- 
SpawnResource (7752 , 4336)   -- 
SpawnResource (7189 , 5965)   -- 
SpawnResource (7133 , 6129)   -- 
SpawnResource (7121 , 6302)   -- 
SpawnResource (7177 , 6479)   -- 
SpawnResource (7163 , 6640)   -- 
SpawnResource (7263 , 6697)   -- 
SpawnResource (7497 , 6228)   -- 
SpawnResource (7713 , 6307)   -- 
SpawnResource (7640 , 6716)   -- 
SpawnResource (7433 , 6777)   -- 
SpawnResource (7573 , 6490)   -- 
SpawnResource (7653 , 2463)   -- 
SpawnResource (7724 , 2606)   -- 
SpawnResource (7755 , 2785)   -- 
SpawnResource (7405 , 2978)   -- 
SpawnResource (7348 , 2779)   -- 
SpawnResource (7431 , 2579)   -- 
SpawnResource (7541 , 3025)   -- 
SpawnResource (7709 , 3017)   -- 
SpawnResource (7794 , 2913)   -- 
SpawnResource (7592 , 2579)   -- 
SpawnResource (7643 , 3022)   -- 
SpawnResource (7344 , 2844)   -- 
SpawnResource (7388 , 698)   -- 
SpawnResource (7414 , 871)   -- 
SpawnResource (7527 , 983)   -- 
SpawnResource (7663 , 1058)   -- 
SpawnResource (7777 , 950)   -- 
SpawnResource (7851 , 761)   -- 
SpawnResource (7745 , 704)   -- 
SpawnResource (7512 , 598)   -- 
SpawnResource (7579 , 553)   -- 
SpawnResource (7461 , 1006)   -- 
SpawnResource (7879 , 890)   -- 
SpawnResource (2891 , 126)   -- 
SpawnResource (2765 , 123)   -- 
SpawnResource (2811 , 205)   -- 
SpawnResource (3108 , 166)   -- 
SpawnResource (5300 , 6833)   -- 
SpawnResource (5337 , 6891)   -- 
SpawnResource (5217 , 6886)   -- 
SpawnResource (5490 , 6963)   -- 
SpawnResource (5312 , 6947)   -- 
SpawnResource (3867 , 2696)   -- 
SpawnResource (3795 , 2869)   -- 3795
SpawnResource (3795 , 2867)   -- 
SpawnResource (3899 , 2773)   -- 
SpawnResource (3928 , 2869)   -- 
SpawnResource (4015 , 2696)   -- 
SpawnResource (4139 , 4317)   -- 
SpawnResource (4097 , 4339)   -- 
SpawnResource (4187 , 4384)   -- 
SpawnResource (4139 , 4410)   -- 
SpawnResource (4036 , 4403)   -- 
SpawnResource (3411 , 3464)   -- 
SpawnResource (3264 , 3538)   -- 
SpawnResource (3254 , 3611)   -- 
SpawnResource (3473 , 3631)   -- 
SpawnResource (3344 , 3602)   -- 
SpawnResource (4864 , 3598)   -- 
SpawnResource (4866 , 3720)   -- 
SpawnResource (5116 , 3613)   -- 
SpawnResource (4945 , 3720)   -- 
SpawnResource (4977 , 3587)   -- 
SpawnResource (5243 , 5593)   -- 
SpawnResource (5257 , 5678)   -- 
SpawnResource (5138 , 5726)   -- 
SpawnResource (5128 , 5557)   -- 
SpawnResource (5131 , 5646)   -- 
SpawnResource (2780 , 1434)   -- 
SpawnResource (2552 , 1434)   -- 
SpawnResource (2608 , 1327)   -- 
SpawnResource (2792 , 1348)   -- 
SpawnResource (2649 , 1368)   -- 

---coordinates go in between here---


return {lolfactor=95, res=res, meteorstorm_interval=120, meteorstorm_firsttime=120, meteorstorm_number=6, featurehandling="remove"}