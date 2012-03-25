	unitDef = {
	  unitname            = [[bvhsa]],
	  name                = [[Sekai Type Tank]],
	  description         = [[Very Heavy Siege Artillery - Very long range Anti-Building artillery. Has secondary gun. Must turn to aim.]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 700,
	  builder             = false,
	  buildPic            = [[bvhsa.png]],
	  buildTime           = 30,
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
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 950,
	  maxDamage           = 3000,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK5x5]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bvhsa.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_machinegun",
		"custom:ct_cannon_artillery",
		"custom:ct_cannon_artillery_side_long",
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
	  sightDistance       = 750,
	  smoothAnim          = true,
	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 45,
	  turnInPlace         = 1,
	  turnRate            = 500,
	  script              = [[bvhsa.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      crater                  = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Building
		default = 1000,
		Cruiser = 1000,
		Building = 2500,
		Land = 1000,
		Aircraft = 1000,
		Ship = 1000,
		Sub = 1000,

		Meteor = 0,
		Drone = 1000,
		Spare1 = 1000,
		Spare2 = 1000,
		Spare3 = 1000,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_artillery]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 1000,
	      reloadtime              = 7.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },

	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Unit
		default = 100,
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      impulseFactor           = 0,
	      interceptedByShieldType = 1,
	      range                   = 340,
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
	      description      = [[Wreckage - Sekai Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 350,
	      object           = [[wrecks/bvhsawreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 10500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Sekai Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 175,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bvhsa = unitDef })