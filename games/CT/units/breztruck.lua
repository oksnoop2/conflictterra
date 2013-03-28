--Resurrection Truck Unit Def by Sanada
--Notes:  Balanced Version 1, Might remodel

local breztruck = {
	name                = [[Resurrection Truck]],
	description         = [[Unarmed resurrection unit to revive fallen units, friend and foe alike]],
	acceleration        = 1,
	brakerate           = 0.1,
	buildpic            = [[breztruck.png]],
	buildCostEnergy     = 500, --300
	buildCostMetal      = 500, --300
	buildDistance       = 180,
	builder             = true,

	buildTime           = 30, --15
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
	explodeAs           = [[TANK_EXPLOSION]],
	footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	leaveTracks         = true,
	mass                = 50,
	maxDamage           = 450,
	maxSlope            = 18,
	maxVelocity         = 2,
	maxWaterDepth       = 22,
	metalMake           = 0,
	movementClass       = [[TANK2x2]],
	objectName          = "breztruck.s3o",
	onoffable           = false,
	seismicSignature    = 4,
	selfDestructAs      = [[TANK_EXPLOSION]],
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

	trackOffset         = 10,
	trackStrength       = 6,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 24,
	
	terraformSpeed      = 300,
	resurrectSpeed      = 0.5, --0.75
	reclaimSpeed        = 300,
	repairSpeed         = 0.5,
	turnInPlace         = 0,
	turnInPlaceSpeedLimit = 1,
	turnRate            = 500,
	showNanospray	    = 0,
	workerTime          = 1,
	script              = "breztruck.lua",

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
	      metal            = 250,
	      object           = [[wrecks/breztruckwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Resurrection Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 112,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 125,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3750,
	    },

  	  },

	}


return lowerkeys({ ["breztruck"] = breztruck })