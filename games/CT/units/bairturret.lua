	unitDef = {
	  unitname            = [[bairturret]],
	  name                = [[Anti-Air Flak Turret]],
	  description         = [[Fires explosive flak at flying enemies. Cheap and easy to build.]],
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  builder             = false,
	  buildPic            = [[bairturret.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 40,
	  maxDamage           = 950,
	  maxSlope            = 18,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[badvairturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 800,
	  smoothAnim          = true,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
	  script              = [[bairturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },

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
		  avoidFeature            = false,
	      burnblow                = true,
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		--Anti-Plane
		default = 5,
		Cruiser = 50,
		Building = 5,
		Land = 5,
		Aircraft = 50,
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
	      range                   = 800,
	      reloadtime              = 1,
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
	      description      = [[Wreckage - Anti-Air Flak Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 475,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 125,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Flak Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 237,
	      energy           = 0,
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 62,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bairturret = unitDef })
