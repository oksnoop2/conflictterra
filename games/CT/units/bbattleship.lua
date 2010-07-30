	unitDef = {
	  unitname            = [[bbattleship]],
	  name                = [[Ii Class Battleship]],
	  description         = [[Battleship - Standard naval battleship of the NKG fleet.  Armed with two naval cannons.]],
	  acceleration        = 0.04,
          activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.06,
	  buildCostEnergy     = 1800,
	  buildCostMetal      = 1440,
	  builder             = false,
	  buildPic            = [[bbattleship.png]],
	  buildTime           = 22,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
          collisionVolumeOffsets = [[0 -5 0]],
          collisionVolumeScales  = [[64 69 240]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 900,
	  maxDamage           = 4750,
	  maxVelocity         = 2,
	  minCloakDistance    = 75,
	  minWaterDepth       = 10,
	  movementClass       = [[BOAT4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE]],
	  objectName          = [[bbattleship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 448,
	  workerTime          = 0,
          waterline           = 5,
          script              = [[bbattleship.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Naval Gun]],
	      areaOfEffect            = 96,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 250,
		Building = 250,
		Mech = 250,
		Tank = 250,
		Aircraft = 250,
		Ship = 250,
		Sub = 250,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-25]],
	      range                   = 1000,
	      reloadtime              = 7,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      sprayAngle              = 768,
	      tolerance               = 4096,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Battleship]],
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
	      metal            = 720,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Battleship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2375,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 360,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbattleship = unitDef })