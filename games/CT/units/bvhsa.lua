	unitDef = {
	  unitname            = [[bvhsa]],
	  name                = [[Sekai Type Tank]],
	  description         = [[Very Heavy Siege Artillery - Heavily armored, long range artillery.  Has secondary gun.  Must turn to aim. - Build Limit: 5]],
	  acceleration        = 0.02,
	  bmcode              = [[1]],
	  brakeRate           = 0.03,
	  buildCostEnergy     = 1900,
	  buildCostMetal      = 1520,
	  builder             = false,
	  buildPic            = [[bvhsa.png]],
	  buildTime           = 22,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 950,
	  maxDamage           = 3000,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[HeavyTANK]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[bvhsa.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],


	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
		"custom:orc_machinegun_flash_big",
		"custom:orc_machinegun_muzzle_big",
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
	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 45,
	  turnRate            = 200,
	  workerTime          = 0,
	  unitRestricted      = 5,
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
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
	      crater                  = 0.25,
	
	      damage                  = {
		Cruiser = 1000,
		Building = 2500,
		Mech = 1000,
		Tank = 1000,
		Aircraft = 1000,
		Ship = 1000,
		Sub = 50,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:LRPC_Expl]],
	      interceptedByShieldType = 1,
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
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 5,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
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
	      description      = [[Wreckage - Very Heavy Siege Artillery]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 760,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Very Heavy Siege Artillery]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 380,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bvhsa = unitDef })