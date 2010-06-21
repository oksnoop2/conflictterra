	unitDef = {
	  unitname            = [[bheavysiegemech]],
	  name                = [[Shimazu Combat Mech]],
	  description         = [[Heavy Siege Mech - Slow, heavily armed SM sporting two long ranged cannons. - Build Limit: 15]],
	  acceleration        = 0.02,
	  bmcode              = [[1]],
	  brakeRate           = 0.1,
	  buildCostEnergy     = 4300,
	  buildCostMetal      = 3440,
	  builder             = false,
	  buildPic            = [[bheavysiegemech.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
 	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 2150,
	  maxDamage           = 1325,
	  maxSlope            = 36,
	  maxVelocity         = 1,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[KBOT4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[bheavysiegemech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  steeringmode        = [[1]],
	  TEDClass            = [[KBOT]],
	  turnRate            = 231,
	  unitRestricted      = 15,
          script              = [[bheavysiegemech.lua]],
	
	  weapons             = {

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	
	  },
	
	
	  weaponDefs          = {
	
	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	      accuracy                = 300,
	
	      damage                  = {
		Cruiser = 500,
		Building = 1000,
		Mech = 500,
		Tank = 500,
		Aircraft = 500,
		Ship = 500,
		Sub = 50,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:TESS]],
	      interceptedByShieldType = 1,
	      myGravity               = 0.1,
	      range                   = 800,
	      reloadtime              = 7.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Heavy Siege Mech]],
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
	      description      = [[Debris - Heavy Siege Mech]],
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
	
	return lowerkeys({ bheavysiegemech = unitDef })