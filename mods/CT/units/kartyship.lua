	unitDef = {
	  unitname            = [[kartyship]],
	  name                = [[Artillery Ship]],
	  description         = [[Artillery Ship]],
	  acceleration        = 0.03,
          activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.13,
          buildAngle          = 16384,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 700,
	  builder             = false,
	  buildPic            = [[kartyship.png]],
	  buildTime           = 700,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNITEX]],
          floater             = true,
	  footprintX          = 3,
	  footprintZ          = 3,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[40 48 176]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  iconType            = [[destroyer]],
	  idleAutoHeal        = 5,
	  idleTime            = 1800,
	  maneuverleashlength = [[640]],
	  mass                = 350,
	  maxDamage           = 3090,
	  maxVelocity         = 3.1,
	  minCloakDistance    = 75,
	  minWaterDepth       = 10,
	  movementClass       = [[BOAT4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE]],
	  objectName          = [[kartyship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],
	  side                = [[PN]],
	  sightDistance       = 660,
	  smoothAnim          = true,
          sonarDistance       = 400,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 199,
	  workerTime          = 0,
          waterline           = 1,
          script              = [[kartyship.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {	
	
	    Cannon = {
	      name                    = [[Naval Artillery Cannon]],
	      areaOfEffect            = 64,
	
	      damage                  = {
	        default = 190,
	        planes  = 190,
	        subs    = 9.5,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	      interceptedByShieldType = 1,
	      myGravity               = 0.1,
	      range                   = 750,
	      reloadtime              = 7.5,
	      soundHit                = [[TAWF113b]],
	      soundStart              = [[TAWF113a]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Artillery Ship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Artillery Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kartyship = unitDef })