	unitDef = {
	  unitname            = [[blandnavalturret]],
	  name                = [[Anti-Ship Turret]],
	  description         = [[Fires three shells that do much more damage to ships. Should be built near shore.]],
	  activateWhenBuilt   = true,
	  buildCostEnergy     = 275,
	  buildCostMetal      = 275,
	  builder             = false,
	  buildPic            = [[blandnavalturret.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 125,
	  maxDamage           = 875,
	  maxSlope            = 36,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[blandnavalturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  yardMap             = [[ooo ooo ooo]],

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


	  script              = [[blandnavalturret.lua]],
	
	  weapons             = {
	
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
		Ship = 300,
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
	      range                   = 1000,
	      reloadtime              = 1,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 140,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 70,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blandnavalturret = unitDef })
