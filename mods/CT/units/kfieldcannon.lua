	unitDef = {
	  unitname            = [[kfieldcannon]],
	  name                = [[Field Cannon]],
	  description         = [[Pew!]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[kfieldcannon.png]],
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
	  objectName          = [[kfieldcannon.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDINGEX]],
	  side                = [[PN]],
	  sightDistance       = 473,
	  smoothAnim          = true,
	  TEDClass            = [[FORT]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[oo oo]],
          script              = [[kfieldcannon.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 10,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:DEFAULT]],
	      interceptedByShieldType = 1,
	      range                   = 540,
	      reloadtime              = 3,
	      soundHit                = [[OTAunit/XPLOSML3]],
	      soundStart              = [[OTAunit/CANLITE3]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Land Turret]],
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
	      description      = [[Debris - Anti-Land Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kfieldcannon = unitDef })
