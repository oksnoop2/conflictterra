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
		Cruiser = 50,
		Building = 50,
		Mech = 100,
		Tank = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[blargemissile.s3o]],
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
	      description      = [[Wreckage - Anti-Mech Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3562,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Mech Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 100,
	      object           = [[b4x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmechturret = unitDef })
