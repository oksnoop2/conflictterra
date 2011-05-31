local kdroneengineer = {
	name                = [[Drone Engineer]],
	description         = [[The Drone Engineer is unarmed building unit.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdroneengineer.png]],
	buildCostEnergy     = 100,
	buildCostMetal      = 100,
    buildDistance       = 150,
    builder             = true,
	buildoptions		= {
        
 		[[kdronestructure]],
		[[kairdronefactory]],
		

               
	},

	buildTime           = 15,
    canAssist           = true,
	CanAttack 			= false,
	CanCapture			= false,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[LAND]],
    corpse              = [[DEAD]],
    commander           = true,    
	reclaimable         = false,
    energyMake          = 1,
	explodeAs           = [[SMALL_UNIT]],
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
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS SHIP FLOAT SUB FIXEDWING GUNSHIP]],
	objectName          = "kdroneengineer.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
    side                = [[Drone]],
    sightDistance       = 300,
	sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	sfxtypes            = {
	
	    explosiongenerators = {
		"custom:buildersparks",
	    },
	
	  },


	  
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 560,
	showNanospray	    = 1,
	Resurrectspeed      =100,
	workerTime          = 1,
	script		    = "kdroneengineer.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Drone Engineer]],
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
	      description      = [[Debris - Drone Engineer]],
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