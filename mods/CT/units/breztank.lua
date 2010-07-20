local breztank = {
	name                = [[Resurrection Team]],
	description         = [[Resurrection Tank - Mobile resurrection unit.  Unarmed.]],
        acceleration        = 0.04,
        brakerate           = 0.02,
        buildpic            = [[breztank.png]],
	buildCostEnergy     = 150,
	buildCostMetal      = 120,
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
	canHover            = true,
	category            = [[HOVER]],
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
	maxDamage           = 1000,
        maxSlope            = 27,
	maxVelocity         = 1.75,
        maxWaterDepth       = 22,
        metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[HOVER3]],
        noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	objectName          = "breztank.s3o",
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

	steeringmode        = [[1]],
	TEDClass            = [[TANK]],
        terraformSpeed      = 300,
	resurrectSpeed      = 0.75,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 560,
	showNanospray	    = 0,
	workerTime          = 1,
	script		    = "breztank.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Resurrection Tank]],
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
	      metal            = 750,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Resurrection Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 500,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["breztank"] = breztank })