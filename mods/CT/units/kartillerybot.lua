	unitDef = {
	  unitname            = [[kartillerybot]],
	  name                = [[Artillery Bot]],
	  description         = [[Artillery Bot]],
	  acceleration        = 0.18,
	  bmcode              = [[1]],
	  brakeRate           = 0.18,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  builder             = false,
	  buildPic            = [[kartillerybot.png]],
	  buildTime           = 300,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNITEX]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  iconType            = [[spiderskirm]],
	  idleAutoHeal        = 5,
	  idleTime            = 1800,
	  maneuverleashlength = [[640]],
	  mass                = 150,
	  maxDamage           = 600,
	  maxSlope            = 72,
	  maxVelocity         = 1.8,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TKBOT3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP SATELLITE SUB]],
	  objectName          = [[kartillerybot.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],
	  side                = [[NKG]],
	  sightDistance       = 605,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  turninplace         = 0,
	  turnRate            = 1122,
	  workerTime          = 0,
          script              = [[kartillerybot.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[PLASMA]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    PLASMA = {
	      name                    = [[Light Plasma Artillery]],
	      accuracy                = 250,
	      areaOfEffect            = 64,
	      craterBoost             = 1,
	      craterMult              = 2,
	
	      damage                  = {
	        default = 190,
	        planes  = 190,
	        subs    = 9.5,
	      },
	
	      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	      impulseBoost            = 0,
	      impulseFactor           = 0.4,
	      interceptedByShieldType = 1,
	      myGravity               = 0.1,
	      noSelfDamage            = true,
	      range                   = 800,
	      reloadtime              = 4.5,
	      renderType              = 4,
	      soundHit                = [[TAWF113b]],
	      soundStart              = [[TAWF113a]],
	      startsmoke              = [[1]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 350,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Jeffy]],
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
	      description      = [[Debris - Jeffy]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[HEAP]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[2X2F]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kartillerybot = unitDef })