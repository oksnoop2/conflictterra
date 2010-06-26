	unitDef = {
	  unitname            = [[bartillery]],
	  name                = [[Uma Type Tank]],
	  description         = [[Artillery - Light mobile artillery.  Stronger against buildings than units.]],
	  acceleration        = 0.02,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 160,
	  buildCostMetal      = 128,
	  builder             = false,
	  buildPic            = [[bartillery.png]],
	  buildTime           = 12,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  canHover            = true,
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
          reclaimable                   = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNITEX]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 80,
	  maxDamage           = 1000,
	  maxSlope            = 18,
	  maxVelocity         = 1.75,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[HOVER3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[bartillery.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],

	  	    
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  turninplace         = 0,
	  turnRate            = 300,
	  workerTime          = 0,
          script              = [[bartillery.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Artillery Cannon]],
	      areaOfEffect            = 64,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 190,
		Building = 280,
		Mech = 190,
		Tank = 190,
		Aircraft = 190,
		Ship = 190,
		Sub = 10,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	      interceptedByShieldType = 1,
	      myGravity               = 0.1,
	      range                   = 750,
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
	      description      = [[Wreckage - Artillery]],
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
	      description      = [[Debris - Artillery]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bartillery = unitDef })