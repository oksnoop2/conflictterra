	unitDef = {
	  unitname            = [[bmechturret]],
	  name                = [[Anti-Mech Missile Turret]],
	  description         = [[Hidden defensive structure that fires three anti-mech missiles.]],
	  acceleration        = 0,
	  brakeRate           = 0,
	  buildCostEnergy     = 275,
	  buildCostMetal      = 275,
	  builder             = false,
	  buildPic            = [[bmechturret.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
          reclaimable         = false,

	  explodeAs           = [[SMALL_BUILDING]],
          footprintx          = 4,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 250,
	  maxDamage           = 1200,
          maxSlope            = 18,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bmechturret.s3o]],
	  seismicSignature    = 16,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  stealth             = true,

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  yardMap             = [[oooo oooo]],
          script              = [[bmechturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Large = {
	      name                    = [[Large Missile]],
	      areaOfEffect            = 96,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 75,
		Cruiser = 75,
		Building = 75,
		Mech = 200,
		Tank = 75,
		Aircraft = 75,
		Ship = 75,
		Sub = 75,

		Meteor = 0,
		Drone = 75,
		Spare1 = 75,
		Spare2 = 75,
		Spare3 = 75,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/blargemissile.s3o]],
	      noSelfDamage            = true,
	      range                   = 800,
	      reloadtime              = 3,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 9000,
	      vlaunch                 = true,
	      weaponAcceleration      = 1000,
	      weaponTimer             = 0.1,
	      weaponType              = [[StarburstLauncher]],
	      weaponVelocity          = 10000,
	    },

	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Mech Missile Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 600,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 2,
	      metal            = 137,
	      object           = [[wrecks/bmechturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3900,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Mech Missile Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 300,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 2,
	      metal            = 68,
	      object           = [[b4x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1950,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmechturret = unitDef })
