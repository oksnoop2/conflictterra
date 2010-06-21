	unitDef = {
	  unitname            = [[kjjantitank]],
	  name                = [[Jump Jet Anti-Tank Mech]],
	  description         = [[Jump Jet Anti-Tank Mech]],
	  acceleration        = 0.12,
	  bmcode              = [[1]],
	  brakeRate           = 0.19,
	  buildCostEnergy     = 90,
	  buildCostMetal      = 90,
	  builder             = false,
	  buildPic            = [[kjjantitank.png]],
	  buildTime           = 90,
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
	  iconType            = [[kbotskirm]],
	  idleAutoHeal        = 5,
	  idleTime            = 1800,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 45,
	  maxDamage           = 480,
	  maxSlope            = 36,
	  maxVelocity         = 2.1,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[KBOT2]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[kjjantitank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
	      [[custom:rockomuzzle]],
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 523,
	  smoothAnim          = true,
	  steeringmode        = [[2]],
	  TEDClass            = [[KBOT]],
	  turninplace         = 0,
	  turnRate            = 1106,
	  upright             = true,
	  workerTime          = 0,
          script              = [[kjjantitank.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Anti-Tank Gun]],
	      areaOfEffect            = 32,
	
	      damage                  = {
	        default = 99.5,
	        planes  = 99.5,
	        subs    = 5.25,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:DEFAULT]],
	      interceptedByShieldType = 1,
	      range                   = 340,
	      reloadtime              = 3,
	      soundHit                = [[OTAunit/XPLOSML3]],
	      soundStart              = [[OTAunit/CANLITE3]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Jump Jet Anti-Tank Mech]],
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
	      description      = [[Debris - Jump Jet Anti-Tank Mech]],
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
	
	return lowerkeys({ kjjantitank = unitDef })