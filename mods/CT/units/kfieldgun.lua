	unitDef = {
	  unitname            = [[kfieldgun]],
	  name                = [[Field Gun]],
	  description         = [[I birng doom!]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[kfieldgun.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDINGEX]],
          footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 35,
	  maxDamage           = 4500,
          maxSlope            = 36,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[kfieldgun.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDINGEX]],
	  side                = [[NKG]],
	  sightDistance       = 473,
	  smoothAnim          = true,
	  TEDClass            = [[FORT]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[oo oo]],
          script              = [[kfieldgun.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 30,
		Building = 30,
		Mech = 30,
		Tank = 30,
		Aircraft = 30,
		Ship = 30,
		Sub = 30,
	      },
	
	      explosionGenerator      = [[custom:EMG_HIT]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 300,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
              size                    = 1.25,
	      soundStart              = [[ct/bmachinegunfire]],
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
	      description      = [[Debris - Gatling Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kfieldgun = unitDef })
