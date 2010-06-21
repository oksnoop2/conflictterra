	unitDef = {
	  unitname            = [[kadvmobileaa]],
	  name                = [[Air Buggy]],
	  description         = [[Advanced Mobile AA]],
	  acceleration        = 0.1,
	  bmcode              = [[1]],
	  brakeRate           = 0.24,
	  buildCostEnergy     = 4000,
	  buildCostMetal      = 4000,
	  builder             = false,
	  buildPic            = [[kadvmobileaa.png]],
	  buildTime           = 4000,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
  	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[CRAWL_BLASTSML]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  iconType            = [[t3generic]],
	  idleAutoHeal        = 5,
	  idleTime            = 1800,
	  immunetoparalyzer   = [[0]],
	  maneuverleashlength = [[640]],
	  mass                = 2000,
	  maxDamage           = 11000,
	  maxSlope            = 36,
	  maxVelocity         = 1.79,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[KBOT4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
	  objectName          = [[kadvmobileaa.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[CRAWL_BLASTSML]],
	  side                = [[NKG]],
	  sightDistance       = 660,
	  smoothAnim          = true,
	  steeringmode        = [[2]],
	  TEDClass            = [[KBOT]],
	  turnRate            = 528,
	  upright             = true,
	  workerTime          = 0,
          script              = [[kadvmobileaa.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Flak          = {
	      name                    = [[Flak Cannon]],
	      areaOfEffect            = 64,
	      burnblow                = true,
	      canattackground         = true,
	      color                   = 1,
	
	      damage                  = {
	        default = 100,
	        planes  = 100,
	        subs    = 2.5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:FLAK_HIT_24]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-24]],
	      projectiles             = 9,
	      sprayAngle              = 1024,
	      range                   = 900,
	      reloadtime              = 0.4,
	      soundHit                = [[flakhit]],
	      soundStart              = [[flakfire]],
	      turret                  = true,
	      unitsonly               = [[1]],
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Mobile AA]],
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
	      description      = [[Debris - Advanced Mobile AA]],
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
	
	return lowerkeys({ kadvmobileaa = unitDef })