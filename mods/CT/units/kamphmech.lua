	unitDef = {
	  unitname            = [[kamphmech]],
	  name                = [[Amphibious Mech]],
	  description         = [[Floats like a duck.]],
	  acceleration        = 0.09,
	  activateWhenBuilt   = true,
	  amphibious          = [[1]],
	  bmcode              = [[1]],
	  brakeRate           = 0.188,
	  buildCostEnergy     = 450,
	  buildCostMetal      = 450,
	  builder             = false,
	  buildPic            = [[kamphmech.png]],
	  buildTime           = 450,
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
	  footprintX          = 3,
	  footprintZ          = 3,
	  iconType            = [[kbotassault]],
	  idleAutoHeal        = 5,
	  idleTime            = 1800,
	  maneuverleashlength = [[640]],
	  mass                = 225,
	  maxDamage           = 1000,
	  maxSlope            = 36,
	  maxVelocity         = 2.2,
	  maxWaterDepth       = 5000,
	  minCloakDistance    = 75,
	  movementClass       = [[AKBOT2]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE]],
	  objectName          = [[kamphmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
	      [[custom:BEAMWEAPON_MUZZLE_ORANGE]],
	    },
	
	  },

	  side                = [[PN]],
	  sightDistance       = 440,
	  smoothAnim          = true,
	  sonarDistance       = 300,
	  steeringmode        = [[2]],
	  TEDClass            = [[KBOT]],
	  turninplace         = 0,
	  turnRate            = 998,
	  upright             = true,
	  workerTime          = 0,
          script              = [[kamphmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[GAUSS]],
	      badTargetCategory  = [[FIXEDWING]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    GAUSS = {
	      name                    = [[Gauss Cannon]],
	      alphaDecay              = 0.12,
	      areaOfEffect            = 16,
	      bouncerebound           = 0.15,
	      bounceslip              = 1,
	      burst                   = 1,
	      cegTag                  = [[GAUSS_TAG_H]],
	      craterBoost             = 1,
	      craterMult              = 2,
	
	      damage                  = {
	        default = 600,
	        planes  = 600,
	        subs    = 7.5,
	      },
	
	      explosionGenerator      = [[custom:gauss_hit_m]],
	      groundbounce            = 1,
	      impactOnly              = true,
	      impulseBoost            = 0,
	      impulseFactor           = 0,
	      interceptedByShieldType = 0,
	      lineOfSight             = true,
	      noExplode               = true,
	      noSelfDamage            = true,
	      numbounce               = 40,
	      range                   = 600,
	      reloadtime              = 15,
	      renderType              = 4,
	      rgbColor                = [[0.5 1 1]],
	      separation              = 0.5,
	      size                    = 0.8,
	      sizeDecay               = -0.1,
	      soundHit                = [[OTAunit/XPLOMED2]],
	      soundStart              = [[armcomgun]],
	      sprayangle              = 800,
	      stages                  = 32,
	      startsmoke              = [[0]],
	      tolerance               = 8000,
	      turret                  = true,
	      waterbounce             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 900,
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
	
	return lowerkeys({ kamphmech = unitDef })