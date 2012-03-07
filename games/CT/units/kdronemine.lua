local kdronemine = {
	name                = [[Replicator]],
	description         = [[The Replicator will replicate.]],
    buildpic            = [[kdronemine.png]],
	buildCostEnergy     = 0,
	buildCostMetal      = 100,
    buildDistance       = 220,
    builder             = 1,
	buildoptions		= {
		[[kdronemine]],
	},
	buildTime           = 15,
    canAssist           = true,
	CanAttack           = 1,
	CanCapture          = false,
    canGuard            = true,
	canMove		        = false,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[LAND]],
    corpse              = [[DEAD]],
	CloakCost			= 7,
    reclaimable         = false,
    energyMake          = 10,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	leaveTracks         = false,
	mass                = 70,
	maxDamage           = 350,
    maxSlope            = 90,
    maxWaterDepth       = 10000,
    metalMake           = 10,
	minCloakDistance    = 5,
    noChaseCategory     = [[MINERALS]],
	objectName          = "kdronemine.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
	SelfDestructCountdown = 2,
    side                = [[Drone]],
    sightDistance       = 500,
	Kamikaze            = 1,
	KamikazeDistance    = 50,
	sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	weapons             = {
	
	    {
	      def                = [[Mine]],
	      badTargetCategory  = [[GUNSHIP CRUISER SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP CRUISER HOVER]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Mine = {
	      name                    = [[Mine]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
	      },
	
	      
	    },
	
	  },
	  
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 0,
	turnRate            = 560,
	showNanospray	    = 1,
	Resurrectspeed      =100,
	workerTime          = 1,
	script		    = "kdronemine.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Replicator]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 50,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Replicator]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["kdronemine"] = kdronemine })