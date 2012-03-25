	unitDef = {
	  unitname            = [[badvlandnavalturret]],
	  name                = [[Advanced Anti-Ship Turret]],
	  description         = [[Fires four powerful Anti-Navy shells. Should be built near shore.]],
	  activateWhenBuilt   = true,
	  buildCostEnergy     = 550,
	  buildCostMetal      = 550,
	  builder             = false,
	  buildPic            = [[badvlandnavalturret.png]],
	  buildTime           = 40,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Raised Strategic Importance]],
	  },
	  
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 125,
	  maxDamage           = 5000,
	  maxSlope            = 36,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[badvlandnavalturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	 
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

	  smoothAnim          = true,
	  sonarDistance       = 580,
	  yardMap             = [[oooo oooo oooo oooo]],
	  script              = [[badvlandnavalturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[LAND SINK]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[LAND SINK]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		--Anti-Navy
		default = 5,
		Cruiser = 5,
		Building = 5,
		Land = 5,
		Aircraft = 5,
		Ship = 400,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 1200,
	      reloadtime              = 1.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 6975,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 400,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 4650,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvlandnavalturret = unitDef })
