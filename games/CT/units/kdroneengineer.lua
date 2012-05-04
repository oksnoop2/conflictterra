local kdroneengineer = {
    name                = [[Drone Builder]],
    description         = [[Unarmed construction unit. Can Transform into a Drone Mining Tower to accumulate metal. Can Burrow.]],
    acceleration        = 1,
    brakerate           = 0.1,
    buildpic            = [[kdroneengineer.png]],
    buildCostEnergy     = 100,
    buildCostMetal      = 100,
    buildDistance       = 150,
    builder             = true,
    buildoptions        = {
        [[kgrounddronestructure]],
        [[kairdronestructure]],
        [[kdronemininghub]],
        [[kdronebigminingtower]],
    },

    buildTime           = 15,
    canAssist           = true,
    CanAttack           = false,
    CanCapture          = false,
    canGuard            = true,
    canMove             = true,
    canPatrol           = true,
    canReclaim          = true,
    canStop             = true,
    category            = [[LAND]],
    corpse              = [[DEAD]],
    commander           = true,    
    reclaimable         = false,
    
	customParams = {		
		ring1radius = "150",
		ring1color = "1,1,0,0.5",  
		ring1thickness = "3", 
		ring1showselected = "1", 
		ring1sides = "32", 		
	},
	
    cloakCost           = 2,
    cloakCostMoving     = 2,
    cloakTimeout        = 0,
    init_Cloaked        = false,    
    
    energyMake          = 1,
    explodeAs           = [[DRONE_GROUND_UNIT]],
    footprintx          = 3,
    footprintZ          = 3,
    idleAutoHeal        = 1,
    leaveTracks         = false,
    mass                = 80,
    maxDamage           = 500,
    maxSlope            = 99999999,
    maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
    movementClass       = [[kdrone]],
    objectName          = "kdroneengineer.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_GROUND_UNIT]],
    side                = [[Drone]],
    sightDistance       = 300,
    
    sfxtypes            = {
        explosiongenerators = {
        "custom:ct_dirt",
        },
    },
    
    sounds          = {
          select = {
        "golgotha/vehicle_done_44khz",
        },
          ok = {
        "golgotha/vehicle_done_44khz",
        },
      },
      
    smoothAnim          = true,
    terraformSpeed      = 300,
    reclaimSpeed        = 300,
    repairSpeed         = 0.5,  
    turnInPlace         = 1,
    turnRate            = 1000,
    showNanospray       = 1,
    Resurrectspeed      = 100,
    workerTime          = 1,
    script              = "kdroneengineer.lua",

    featureDefs         = {
    
        DEAD  = {
          description      = [[Wreckage - Drone Builder]],
          blocking         = true,
          category         = [[corpses]],
          damage           = 250,
          energy           = 0,
          featureDead      = [[DEAD2]],
          footprintX       = 3,
          footprintZ       = 3,
          metal            = 50,
          object           = [[wrecks/kdroneengineerwreck.s3o]],
          reclaimable      = true,
          reclaimTime      = 1500,
        },
    
    
        DEAD2 = {
          description      = [[Debris - Drone Builder]],
          blocking         = false,
          category         = [[heaps]],
          damage           = 125,
          energy           = 0,
          footprintX       = 3,
          footprintZ       = 3,
          metal            = 25,
          object           = [[b3x3heap.s3o]],
          reclaimable      = true,
          reclaimTime      = 750,
        },

      },

    }


return lowerkeys({ ["kdroneengineer"] = kdroneengineer })
