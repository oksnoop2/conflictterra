	unitDef = {
	  unitname            = [[kdroneroller]],
	  name                = [[Roller Drone]],
	  description         = [[Heavily armored Drone which fires a long range blob of plasma which destroys Buildings.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
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
	  explodeAs           = [[DRONE_GROUND_UNIT]],
      footprintx          = 3,
	  footprintZ          = 3,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 90,
	  maxDamage           = 1200,
      maxSlope            = 18,
	  maxVelocity         = 2,
      maxWaterDepth       = 22,
	  movementClass       = [[TANK3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[kdroneroller.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[DRONE_GROUND_UNIT]],

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
	  turnRate            = 1000,
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
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Building
		default = 150,
		Cruiser = 150,
		Building = 300,
		Land = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 150,
		Spare1 = 150,
		Spare2 = 150,
		Spare3 = 150,
	      },
	
	   -- model                   = [[bshell.s3o]],
		  cegtag                  = [[ct_drone_energyshot]],	     
	      explosionGenerator      = [[custom:ct_impact_beamshot_green_big]],
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
	      damage           = 1000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 125,
	      object           = [[wrecks/kdronerollerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Roller Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 500,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 62,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneroller = unitDef })
