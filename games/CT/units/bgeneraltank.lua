	unitDef = {
	  unitname            = [[bgeneraltank]],
	  name                = [[Taisho Type Tank]],
	  description         = [[General's Tank - Heals surrounding units. Unlocks stronger units. - Build Limit: 1]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 1000,
	  builder             = false,
	  buildPic            = [[bgeneraltank.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	ProvideTech   = [[General's Presence, Raised Strategic Importance]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 400,
	  maxDamage           = 1000,
	  maxSlope            = 18,
	  maxVelocity         = 1.5,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bgeneraltank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 700,

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
	  trackWidth          = 40,
	  
	  turnInPlace         = 1,
	  turnRate            = 500,
	  unitRestricted      = 1,
	  script              = [[bgeneraltank.lua]],
	
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
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      burst                   = 2,
	      burstrate               = 1,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--No Bonus
		--120 dps
		default = 300,
		Cruiser = 300,
		Building = 300,
		Land = 300,
		Aircraft = 300,
		Ship = 300,
		Sub = 300,

		Meteor = 0,
		Drone = 300,
		Spare1 = 300,
		Spare2 = 300,
		Spare3 = 300,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 600,
	      reloadtime              = 5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Taisho Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 500,
	      object           = [[wrecks/bgeneraltankwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Taisho Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 250,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bgeneraltank = unitDef })