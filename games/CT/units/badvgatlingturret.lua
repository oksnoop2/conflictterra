	--Dual Gatling Turret Unit Def by Sanada
	--Notes:  NOT Balanced Version 1

	unitDef = {
	  unitname            = [[badvgatlingturret]],
	  name                = [[BJ-006 Dual Gatling Turret]],
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
	      rgbColor                = [[1 1 1]],
	      separation              = 2,
	      size                    = 1,
	      stages                  = 50,
	      soundStart              = [[ct/machine_gun]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
	      sprayAngle              = 1180,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Dual Gatling Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 150,
	      object           = [[wrecks/badvgatlingturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Dual Gatling Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1250,
	      energy           = 0,
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 75,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvgatlingturret = unitDef })
