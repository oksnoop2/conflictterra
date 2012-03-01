	unitDef = {
	  unitname            = [[bheavysiegemech]],
	  name                = [[Shimazu Combat Mech]],
	  description         = [[Heavy Siege Mech - Slow SM that fires a salvo of inaccurate anti-building shells. - Build Limit: 15]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 1125,
	  buildCostMetal      = 1125,
	  builder             = false,
	  buildPic            = [[bheavysiegemech.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
 	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Ace Pilot's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  mass                = 2150,
	  maxDamage           = 1325,
	  maxSlope            = 36,
	  maxVelocity         = 2.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[Mech4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
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

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_artillery",
		"custom:ct_cannon_artillery_side_small",
	    },
	
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  unitRestricted      = 15,
	  script              = [[bheavysiegemech.lua]],
	
	  weapons             = {

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
	      burst                   = 4,
	      burstrate               = 0.5,
	      craterMult              = 0.25,
	      accuracy                = 300,
	
	      damage                  = {
		default = 100,
		Cruiser = 100,
		Building = 500,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_artillery]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 800,
	      reloadtime              = 6,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      sprayAngle              = 1000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Shimazu Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 662,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 562,
	      object           = [[wrecks/bheavysiegemechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 16800,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Shimazu Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 331,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 281,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 8400,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavysiegemech = unitDef })