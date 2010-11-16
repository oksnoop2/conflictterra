--[[
Task Queues!
]]--
math.randomseed( os.time() )
math.random(); math.random(); math.random()

taskqueues = {
   bflagshipbase_AI = {
        "bminer",
        "bengineer1",
        "breztank",
       },  
  
      bengineer1 = {

---------------------------------MEX---------------------------------
        "bsupplydepot",
        "bsupplydepot",

---------------------------------MEX OR ENEGRY---------------------------------
        (function()
                        local r = math.random(0,4)
                        if r == 0 then
                                return "bsupplydepot"
                        elseif r == 1 then
                                return "bsupplydepot"
                        elseif r == 2 then
                                return "bpowerplant"
                        elseif r == 3 then
                                return "bpowerplant"
                        elseif r == 4 then
                                return "bpowerplant"
                                
                        end                                                                                             
                        
                end),

---------------------------------MEX OR ENEGRY---------------------------------
        (function()
                        local r = math.random(0,4)
                        if r == 0 then
                                return "bsupplydepot"
                        elseif r == 1 then
                                return "bsupplydepot"
                        elseif r == 2 then
                                return "bpowerplant"
                        elseif r == 3 then
                                return "bpowerplant"
                        elseif r == 4 then
                                return "bpowerplant"
                                
                        end                                                                                             
                        
                end),

---------------------------------ENGERGY---------------------------------
        "bpowerplant",
        "bpowerplant",
        "bpowerplant",

---------------------------------PICK A FACTORY---------------------------------
        (function()
                        local r = math.random(0,1)
                        if r == 0 then
                                return "bsubpens"
                        elseif r == 1 then
                                return "bshipyard"
                                
                        end                                                                                             
                        
                end),

----------------------------------PICK A DEFENSE---------------------------------
          (function()
                        local r = math.random(0,16)
                        if r == 0 then
                                return "bairturret"
                        elseif r == 1 then
                                return "blandnavalturret"
                        elseif r == 2 then
                                return "bgatlingturret"
                        elseif r == 3 then
                                return "bgatlingturret"
                        elseif r == 4 then
                                return "bgatlingturret"
                        elseif r == 5 then
                                return "bgatlingturret"
                        elseif r == 6 then
                                return "blandturret"
                        elseif r == 7 then
                                return "blandturret"
                        elseif r == 8 then
                                return "blandturret"
                        elseif r == 9 then
                                return "blandturret"
                        elseif r == 10 then
                                return "blandturret"
                        elseif r == 11 then
                                return "blandturret"
                        elseif r == 12 then
                                return "bmechturret"
                        elseif r == 13 then
                                return "bradartower"
                        elseif r == 14 then
                                return "bradartower"
                        elseif r == 15 then
                                return "bairturret"
                        elseif r == 16 then
                                return "bairturret"
                                
                        end                                                                                             
                        
                end),

---------------------------------PICK A DEFENSE---------------------------------
        (function()
                        local r = math.random(0,16)
                        if r == 0 then
                                return "bairturret"
                        elseif r == 1 then
                                return "blandnavalturret"
                        elseif r == 2 then
                                return "bgatlingturret"
                        elseif r == 3 then
                                return "bgatlingturret"
                        elseif r == 4 then
                                return "bgatlingturret"
                        elseif r == 5 then
                                return "bgatlingturret"
                        elseif r == 6 then
                                return "blandturret"
                        elseif r == 7 then
                                return "blandturret"
                        elseif r == 8 then
                                return "blandturret"
                        elseif r == 9 then
                                return "blandturret"
                        elseif r == 10 then
                                return "blandturret"
                        elseif r == 11 then
                                return "blandturret"
                        elseif r == 12 then
                                return "bmechturret"
                        elseif r == 13 then
                                return "bradartower"
                        elseif r == 14 then
                                return "bradartower"
                        elseif r == 15 then
                                return "bairturret"
                        elseif r == 16 then
                                return "bairturret"
                                
                        end                                                                                             
                        
                end),

---------------------------------PICK A DEFENSE---------------------------------
        (function()
                        local r = math.random(0,16)
                        if r == 0 then
                                return "bairturret"
                        elseif r == 1 then
                                return "blandnavalturret"
                        elseif r == 2 then
                                return "bgatlingturret"
                        elseif r == 3 then
                                return "bgatlingturret"
                        elseif r == 4 then
                                return "bgatlingturret"
                        elseif r == 5 then
                                return "bgatlingturret"
                        elseif r == 6 then
                                return "blandturret"
                        elseif r == 7 then
                                return "blandturret"
                        elseif r == 8 then
                                return "blandturret"
                        elseif r == 9 then
                                return "blandturret"
                        elseif r == 10 then
                                return "blandturret"
                        elseif r == 11 then
                                return "blandturret"
                        elseif r == 12 then
                                return "bmechturret"
                        elseif r == 13 then
                                return "bradartower"
                        elseif r == 14 then
                                return "bradartower"
                        elseif r == 15 then
                                return "bairturret"
                        elseif r == 16 then
                                return "bairturret"
                                
                        end                                                                                             
                        
                end),

----------------------------------PICK A DEFENSE---------------------------------           
        (function()
                        local r = math.random(0,16)
                        if r == 0 then
                                return "bairturret"
                        elseif r == 1 then
                                return "blandnavalturret"
                        elseif r == 2 then
                                return "bgatlingturret"
                        elseif r == 3 then
                                return "bgatlingturret"
                        elseif r == 4 then
                                return "bgatlingturret"
                        elseif r == 5 then
                                return "bgatlingturret"
                        elseif r == 6 then
                                return "blandturret"
                        elseif r == 7 then
                                return "blandturret"
                        elseif r == 8 then
                                return "blandturret"
                        elseif r == 9 then
                                return "blandturret"
                        elseif r == 10 then
                                return "blandturret"
                        elseif r == 11 then
                                return "blandturret"
                        elseif r == 12 then
                                return "bmechturret"
                        elseif r == 13 then
                                return "bradartower"
                        elseif r == 14 then
                                return "bradartower"
                        elseif r == 15 then
                                return "bairturret"
                        elseif r == 16 then
                                return "bairturret"
                                
                        end                                                                                             
                        
                end),

---------------------------------MEX OR ENEGRY---------------------------------
        (function()
                        local r = math.random(0,4)
                        if r == 0 then
                                return "bsupplydepot"
                        elseif r == 1 then
                                return "bsupplydepot"
                        elseif r == 2 then
                                return "bpowerplant"
                        elseif r == 3 then
                                return "bpowerplant"
                        elseif r == 4 then
                                return "bpowerplant"
                                
                        end                                                                                             
                        
                end),
---------------------------------PICK A FACTORY---------------------------------
        (function()
                        local r = math.random(0,1)
                        if r == 0 then
                                return "bsubpens"
                        elseif r == 1 then
                                return "bshipyard"
                                
                        end                                                                                             
                        
                end),

---------------------------------MEX OR ENEGRY---------------------------------
        (function()
                        local r = math.random(0,4)
                        if r == 0 then
                                return "bsupplydepot"
                        elseif r == 1 then
                                return "bsupplydepot"
                        elseif r == 2 then
                                return "bpowerplant"
                        elseif r == 3 then
                                return "bnuclearpower"
                        elseif r == 4 then
                                return "bnuclearpower"
                                
                        end                                                                                             
                        
                end),

                 },
---------------------------------TANK FACTORY BUILD TASKS---------------------------------
        btankfactory = {

                (function()
                
                 local r = math.random(0,9)
                         if r == 0 then
                                return "bengineer1"
                 elseif r == 1 then
                                return "bmissiletank"
                 elseif r == 2 then
                                return "bmissiletank"   
                 elseif r == 3 then              
                                return "bartillery"
                 elseif r == 4 then
                                return "bartillery"
                 elseif r == 5 then
                                return "bassaulttank"
                 elseif r == 6 then
                                return "bassaulttank"
                 elseif r == 7 then
                                return "bassaulttank"
                 elseif r == 8 then
                                return "baabuggy"
                 elseif r == 9 then
                                return "baabuggy"
                                                        
                 end                                                                                            
                        
                end)

                
                 },

---------------------------------MECH FACTORY BUILD TASKS---------------------------------
        bmechfactory = {

                (function()
                
                 local r = math.random(0,11)
                         if r == 0 then
                                return "bengineer1"
                 elseif r == 1 then
                                return "bbasicmech"
                 elseif r == 2 then
                                return "bbasicmech"     
                 elseif r == 3 then              
                                return "bmissilemech"
                 elseif r == 4 then
                                return "bmissilemech"
                 elseif r == 5 then
                                return "bamphmech"
                 elseif r == 6 then
                                return "bamphmech"
                 elseif r == 7 then
                                return "bamphmech"
                 elseif r == 8 then
                                return "bantitankmech"
                 elseif r == 9 then
                                return "bantitankmech"
                 elseif r == 10 then
                                return "bsiegemech"
                 elseif r == 11 then
                                return "bflyingmech"
                                                        
                 end                                                                                            
                        
                end)
                
                 },


---------------------------------AIR FACTORY BUILD TASKS---------------------------------
        bairport = {

                (function()
                
                 local r = math.random(0,9)
                         if r == 0 then
                                return "bfighter"
                 elseif r == 1 then
                                return "bfighter"
                 elseif r == 2 then
                                return "bfighter"       
                 elseif r == 3 then              
                                return "bfighter"
                 elseif r == 4 then
                                return "bradarplane"
                 elseif r == 5 then
                                return "brocketplane"
                 elseif r == 6 then
                                return "brocketplane"
                 elseif r == 7 then
                                return "brocketplane"
                 elseif r == 8 then
                                return "bbomber"
                 elseif r == 9 then
                                return "bbomber"
                                                        
                 end                                                                                            
                        
                end)
                
                 },

---------------------------------SUB FACTORY BUILD TASKS---------------------------------
        bsubpens = {

                (function()
                
                 local r = math.random(0,9)
                         if r == 0 then
                                return "bamphmech"
                 elseif r == 1 then
                                return "bamphmech"
                 elseif r == 2 then
                                return "bamphmech"      
                 elseif r == 3 then              
                                return "bamphmech"
                 elseif r == 4 then
                                return "bseaengineer1"
                 elseif r == 5 then
                                return "bsubmarine"
                 elseif r == 6 then
                                return "bsubmarine"
                 elseif r == 7 then
                                return "bsubmarine"
                 elseif r == 8 then
                                return "baasub"
                 elseif r == 9 then
                                return "baasub"
                                                        
                 end                                                                                            
                        
                end)
                
                 },

---------------------------------SHIPYARD FACTORY BUILD TASKS---------------------------------
        bshipyard = {

                (function()
                
                 local r = math.random(0,12)
                         if r == 0 then
                                return "bmetalsupplyboat"
                 elseif r == 1 then
                                return "bmetalsupplyboat"
                 elseif r == 2 then
                                return "benergysupplyboat"      
                 elseif r == 3 then              
                                return "benergysupplyboat"
                 elseif r == 4 then
                                return "bseaengineer1"
                 elseif r == 5 then
                                return "bbattleship"
                 elseif r == 6 then
                                return "bbattleship"
                 elseif r == 7 then
                                return "brocketbattleship"
                 elseif r == 8 then
                                return "baaship"
                 elseif r == 9 then
                                return "bbattleship"
                 elseif r == 10 then
                                return "bartilleryship"
                 elseif r == 11 then
                                return "bartilleryship"
                 elseif r == 12 then
                                return "bradarship"
                                                        
                 end                                                                                            
                        
                end)
                
                 },


                 
                 }