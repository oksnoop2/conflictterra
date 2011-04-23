	unitDef = {
	  unitname            = [[kdroneroller]],
	  name                = [[Roller Drone]],
	  description         = [[Artillery troop ablity to fire from a great distance away.]],
	  acceleration        = 0.04,
	  brakeRate           = 0.02,
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  builder             = false,
	  buildPic            = [[kdroneroller.png]],
	  buildTime           = 10,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
      reclaimable         = false,
	  explodeAs           = [[SMALL_UNIT]],
      footprintx          = 2,
	  footprintZ          = 2,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 90,
	  maxDamage           = 2000,
      maxSlope            = 18,
	  maxVelocity         = 2,
      maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK2x2]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[kdroneroller.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  	    
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

	  side                = [[Drone]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turnInPlace         = 1,
	  turnRate            = 550,
          script              = [[kdroneroller.lua]],
	

	
	
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
	      areaOfEffect            = 80,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 200,
		Cruiser = 200,
		Building = 300,
		Mech = 200,
		Tank = 200,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,
	      },
	
	   -- model                   = [[bshell.s3o]],
		  cegtag                  = [[VULCANFX]],	     
		  explosionGenerator      = [[custom:LRPC_Expl]],
	      interceptedByShieldType = 1,
	      myGravity               = 0.1,
	      range                   = 1250,
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
	      description      = [[Wreckage - Roller Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1125,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 72,
	      object           = [[wrecks/kdronerollerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Roller Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 36,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneroller = unitDef })
