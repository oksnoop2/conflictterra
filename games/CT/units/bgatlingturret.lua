	unitDef = {
	  unitname            = [[bgatlingturret]],
	  name                = [[Gatling Turret]],
	  description         = [[Rapid fire cannon ideal for taking out several weaker units.]],
	  buildCostEnergy     = 150,
	  buildCostMetal      = 150,
	  builder             = false,
	  buildPic            = [[bgatlingturret.png]],
	  buildTime           = 12,
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
	  mass                = 35,
	  maxDamage           = 1125,
	  maxSlope            = 36,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bgatlingturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 400,

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
	  yardMap             = [[ooo ooo ooo]],
	  script              = [[bgatlingturret.lua]],
	
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
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		default = 30,
		Cruiser = 30,
		Building = 30,
		Mech = 30,
		Tank = 30,
		Aircraft = 30,
		Ship = 30,
		Sub = 30,

		Meteor = 0,
		Drone = 30,
		Spare1 = 30,
		Spare2 = 30,
		Spare3 = 30,
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
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 562,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 75,
	      object           = [[wrecks/bgatlingturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Gatling Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 281,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 32,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1050,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bgatlingturret = unitDef })
