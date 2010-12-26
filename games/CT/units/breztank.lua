local breztank = {
	name                = [[Resurrection Truck]],
	description         = [[Mobile resurrection unit.  Unarmed.]],
        acceleration        = 0.04,
        brakerate           = 0.02,
        buildpic            = [[bmetaltruck.png]],
	buildCostEnergy     = 300,
	buildCostMetal      = 300,
        buildDistance       = 180,
        builder             = true,

	buildoptions		= {
	},

	buildTime           = 15,
	canAttack           = false,
        canAssist           = false,
        canGuard            = true,
	canMove		    = true,
	canPatrol           = true,
        canReclaim          = true,
	canFight            = false,
	canResurrect        = true,
	canstop             = [[1]],
	category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,


	defaultmissiontype  = [[Standby]],
        energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
        footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	maneuverleashlength = [[640]],
	mass                = 50,
	maxDamage           = 750,
        maxSlope            = 18,
	maxVelocity         = 2,
        maxWaterDepth       = 22,
        metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[TANK2x2]],
        noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	objectName          = "bmetaltruck.s3o",
        onoffable           = false,
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 400,
	smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:buildersparks",
	    },
	
	  },

	steeringmode        = [[1]],
	TEDClass            = [[TANK]],
	trackOffset         = 3,
	trackStrength       = 6,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 24,
        terraformSpeed      = 300,
	resurrectSpeed      = 0.75,
        reclaimSpeed        = 300,
	repairSpeed         = 0.5,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 550,
	showNanospray	    = 0,
	workerTime          = 1,
	script		    = "breztank.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Resurrection Truck]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 750,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Resurrection Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 30,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["breztank"] = breztank })