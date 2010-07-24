	unitDef = {
	  unitname            = [[baatruckturret]],
	  name                = [[Taka Type Anti-Air Turret]],
	  description         = [[Anti-Air Truck Turret Mode - Immobile flak turret.  Can morph back into Anti-Air Truck.]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[baatruckturret.png]],
	  buildTime           = 14,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable                   = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[SMALL_UNIT]],
          footprintx          = 2,
	  footprintZ          = 2,
	  levelground         = false,
	  idleAutoHeal        = 0,
	  mass                = 110,
	  maxDamage           = 2100,
          maxSlope            = 18,
	  maxVelocity         = 0,
          maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[baatruckturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  TEDClass            = [[TANK]],
	  turninplace         = 0,
	  workerTime          = 0,
	  unitRestricted      = 20,
          script              = [[baatruckturret.lua]],
	
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
	
	  },
	
	
	  weaponDefs          = {
	
	    Flak          = {
	      name                    = [[Flak Cannon]],
	      areaOfEffect            = 64,
	      burnblow                = true,
	      canattackground         = true,
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
	      description      = [[Wreckage - Anti-Air Truck Turret Mode]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1575,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1575,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Truck Turret Mode]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1050,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1050,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ baatruckturret = unitDef })
