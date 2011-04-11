	unitDef = {
	  unitname            = [[bheavyassaulttank]],
	  name                = [[Ogami Type Tank]],
	  description         = [[Heavy Tank - Hardier battle tank.  Fires heavier shells. - Build Limit: 20]],
	  acceleration        = 0.03,
	  brakeRate           = 0.07,
	  buildCostEnergy     = 500,
	  buildCostMetal      = 500,
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
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 400,
	  maxDamage           = 2500,
	  maxSlope            = 18,
	  maxVelocity         = 1.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK3x3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bheavyassaulttank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 480,
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
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
	  unitRestricted      = 20,
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
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 300,
		Cruiser = 300,
		Building = 300,
		Mech = 300,
		Tank = 300,
		Aircraft = 300,
		Ship = 300,
		Sub = 300,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
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
	      description      = [[Wreckage - Heavy Assault Tank]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1875,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 320,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Heavy Assault Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 160,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavyassaulttank = unitDef })