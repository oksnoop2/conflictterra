	unitDef = {
	  unitname            = [[bassaulttank]],
	  name                = [[Oukami Type Tank]],
	  description         = [[Light Tank - Inexpensive, basic tank. Fires light shells.]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 225,
	  buildCostMetal      = 225,
	  builder             = false,
	  buildPic            = [[bassaulttank.png]],
	  buildTime           = 12,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 90,
	  maxDamage           = 600,
	  maxSlope            = 18,
	  maxVelocity         = 2.5,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bassaulttank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  	    
	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_tank",
	    },
	  },

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  
	  turnInPlace         = 1,
	  turnRate            = 500,
	  script              = [[bassaulttank.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--No Bonus
		--20 dps
		default = 60,
		Cruiser = 60,
		Building = 60,
		Land = 60,
		Aircraft = 60,
		Ship = 60,
		Sub = 60,

		Meteor = 0,
		Drone = 60,
		Spare1 = 60,
		Spare2 = 60,
		Spare3 = 60,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
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
	      description      = [[Wreckage - Oukami Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 575,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 125,
	      object           = [[wrecks/bassaulttankwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Oukami Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 287,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 62,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bassaulttank = unitDef })
