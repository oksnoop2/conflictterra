	unitDef = {
	  unitname            = [[bheavyassaulttank]],
	  name                = [[Ogami Type Tank]],
	  description         = [[Heavy Tank - Fires inaccurate, explosive shells. Damages a wide area.]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 400,
	  builder             = false,
	  buildPic            = [[bheavyassaulttank.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[General's Presence]],
		nofriendlyfire = true,		
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 400,
	  maxDamage           = 750,
	  maxSlope            = 18,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK3x3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bheavyassaulttank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 600,

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_tank",
	    },
	  },


	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 35,
	  
	  turnInPlace         = 1,
	  turnRate            = 500,
	  script              = [[bheavyassaulttank.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Cannon]],
		  accuracy                = 500,
	      areaOfEffect            = 256,
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--No Bonus
		--25 dps
		default = 75,
		Cruiser = 75,
		Building = 75,
		Land = 75,
		Aircraft = 75,
		Ship = 75,
		Sub = 75,

		Meteor = 0,
		Drone = 75,
		Spare1 = 75,
		Spare2 = 75,
		Spare3 = 75,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon_explosive]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 500,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Ogami Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 200,
	      object           = [[wrecks/bheavyassaulttankwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 6000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Ogami Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 187,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 100,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavyassaulttank = unitDef })