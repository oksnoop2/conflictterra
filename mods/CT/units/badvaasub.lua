	unitDef = {
	  unitname            = [[badvaasub]],
	  name                = [[Okaze Class Submarine]],
	  description         = [[Advanced Anti-Air Submarine - Brand new submarine armed with two flak turrets.  Surfaces to attack. - Build Limit: 5]],
	  acceleration        = 0.02,
          activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.23,
	  buildCostEnergy     = 600,
	  buildCostMetal      = 480,
	  builder             = false,
	  buildPic            = [[badvaasub.png]],
	  buildTime           = 34,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SUB]],
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[64 50 150]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 300,
	  maxDamage           = 2000,
	  maxVelocity         = 2.25,
	  minCloakDistance    = 75,
	  minWaterDepth       = 45,
	  movementClass       = [[UBOAT3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE HOVER]],
	  objectName          = [[badvaasub.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[WATER]],
	  turnRate            = 225,
          waterline           = 45,
	  unitRestricted      = 5,
          script              = [[badvaasub.lua]],
	
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
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 100,
		Ship = 5,
		Sub = 2.5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-24]],
	      range                   = 900,
	      reloadtime              = 0.4,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      unitsonly               = [[1]],
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Anti-Air Submarine]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1500,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Anti-Air Submarine]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1000,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvaasub = unitDef })