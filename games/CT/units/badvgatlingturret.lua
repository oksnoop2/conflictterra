	unitDef = {
	  unitname            = [[badvgatlingturret]],
	  name                = [[Dual Gatling Turret]],
	  description         = [[Pair of Anti-Unit rapid fire cannons.]],
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  builder             = false,
	  buildPic            = [[badvgatlingturret.png]],
	  buildTime           = 24,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Raised Strategic Importance]],
	  },
		  
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 35,
	  maxDamage           = 5000,
	  maxSlope            = 36,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[badvgatlingturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 500,

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_machinegun_big",
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
	  workerTime          = 0,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
	  script              = [[badvgatlingturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      burst                   = 2,
	      burstrate               = 0.001,
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		--Anti-Land
		default = 25,
		Cruiser = 25,
		Building = 25,
		Land = 50,
		Aircraft = 25,
		Ship = 25,
		Sub = 25,

		Meteor = 0,
		Drone = 25,
		Spare1 = 25,
		Spare2 = 25,
		Spare3 = 25,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_machinegun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 400,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
	      size                    = 1.25,
	      soundStart              = [[ct/machine_gun]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
	      stages                  = 50,
	      sprayAngle              = 1180,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Gatling Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 7500,
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
	      description      = [[Debris - Gatling Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 5000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvgatlingturret = unitDef })
