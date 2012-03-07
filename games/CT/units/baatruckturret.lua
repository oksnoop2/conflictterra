	unitDef = {
	  unitname            = [[baatruckturret]],
	  name                = [[Taka Type Anti-Air Turret]],
	  description         = [[Anti-Air Truck Turret Mode - Immobile flak turret. Can Mobilize into an Anti-Air Truck.]],
	  buildCostEnergy     = 600,
	  buildCostMetal      = 600,
	  builder             = false,
	  buildPic            = [[baatruckturret.png]],
	  buildTime           = 24,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintx          = 2,
	  footprintZ          = 2,
	  levelground         = false,
	  idleAutoHeal        = 0,
	  mass                = 110,
	  maxDamage           = 2100,
	  maxSlope            = 18,
	  maxWaterDepth       = 22,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[baatruckturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
	    },
	
	  },

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  workerTime          = 0,
	  script              = [[baatruckturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
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
		  collideFriendly         = false,		  
	
	      damage                  = {
		default = 5,
		Cruiser = 100,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 100,
		Ship = 5,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:ct_impact_flak]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 900,
	      reloadtime              = 0.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Taka Type Anti-Air Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1050,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 300,
	      object           = [[wrecks/baatruckturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 9000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Taka Type Anti-Air Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 525,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 150,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ baatruckturret = unitDef })
