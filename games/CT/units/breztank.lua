local breztank = {
	name                = [[Resurrection Truck]],
	description         = [[Unarmed resurrection unit to revive fallen units, friend and foe alike]],
	acceleration        = 1,
	brakerate           = 0.1,
	buildpic            = [[bmetaltruck.png]],
	buildCostEnergy     = 300,
	buildCostMetal      = 300,
	buildDistance       = 180,
	builder             = true,

	buildTime           = 15,
	canAttack           = false,
	canAssist           = false,
	canGuard            = true,
	canMove		        = true,
	canPatrol           = true,
	canReclaim          = true,
	canFight            = false,
	canResurrect        = true,
	canStop             = true,
	category            = [[LAND]],
	corpse              = [[DEAD]],
	reclaimable         = false,
	
	energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
	footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	mass                = 50,
	maxDamage           = 450,
	maxSlope            = 18,
	maxVelocity         = 2,
	maxWaterDepth       = 22,
	metalMake           = 0,
	movementClass       = [[TANK2x2]],
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
		"custom:ct_weldingsparks",
	    },
	  },

	trackOffset         = 3,
	trackStrength       = 6,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 24,
	
	terraformSpeed      = 300,
	resurrectSpeed      = 0.75,
	reclaimSpeed        = 300,
	repairSpeed         = 0.5,
	turnInPlace         = 0,
	turnInPlaceSpeedLimit = 1,
	turnRate            = 500,
	showNanospray	    = 0,
	workerTime          = 1,
	script              = "breztank.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Resurrection Truck]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 225,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 150,
	      object           = [[wrecks/breztruckwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Resurrection Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 112,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 75,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2250,
	    },

  	  },

	}


return lowerkeys({ ["breztank"] = breztank })