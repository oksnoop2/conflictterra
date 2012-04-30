	unitDef = {
	  unitname            = [[bartillery]],
	  name                = [[Uma Type Vehicle]],
	  description         = [[Artillery Vehicle - Long range, anti-building truck.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 375,
	  buildCostMetal      = 375,
	  builder             = false,
	  buildPic            = [[bartillery.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,	  
	  mass                = 80,
	  maxDamage           = 550,
	  maxSlope            = 18,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bartillery.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  	    
	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_artillery",
		"custom:ct_cannon_artillery_side",
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
	  sightDistance       = 1350,
	  smoothAnim          = true,
	  
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,	  
	  
	  turnInPlace         = false,
	  turnInPlaceSpeedLimit= 1.5,
	  turnRate            = 500,
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
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Building
		--20 dps
		--70 dps building
		default = 140,
		Cruiser = 140,
		Building = 490,
		Land = 140,
		Aircraft = 140,
		Ship = 140,
		Sub = 140,

		Meteor = 0,
		Drone = 140,
		Spare1 = 140,
		Spare2 = 140,
		Spare3 = 140,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_artillery]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 1250,
	      reloadtime              = 7,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Uma Type Vehicle]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 275,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 187,
	      object           = [[wrecks/bartillerywreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Uma Type Vehicle]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 137,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 93,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2550,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bartillery = unitDef })