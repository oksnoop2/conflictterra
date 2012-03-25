local kdiairdrone = {
	name                = [[Di Air Drone]],
	description         = [[Pair of flying Drones which fire a homing ball of plasma to attack flying units.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdiairdrone.png]],
	buildCostEnergy     = 120,
	buildCostMetal      = 120,
    buildDistance       = 150,
    builder             = false,
	buildTime           = 15,
    canAssist           = true,
	CanAttack 			= true,
	CanCapture			= false,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[FIXEDWING]],
    canFly              = true,
	corpse              = [[DEAD]],
    cruiseAlt           = 300,
	reclaimable         = false,
    collide             = true,
    energyMake          = 1,
	explodeAs           = [[DRONE_AIR_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	hoverAttack         = true,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 300,
    maxSlope            = 99999999,
	maxVelocity         = 8,
    maxWaterDepth       = 10000,
    metalMake           = 0,
    noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	objectName          = "kdiairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_AIR_UNIT]],
    side                = [[Drone]],
    sightDistance       = 700,
	sounds              = {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_drone_binder_di",
	    },
	
	  },
	  
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 800,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "kdiairdrone.lua",

	weapons             = {
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
		  avoidFeature            = false,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
		  collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		default = 20,
		Cruiser = 100,
		Building = 20,
		Land = 20,
		Aircraft = 100,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_beamshot_green_aa]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	     -- model                   = [[baamissile.s3o]],
	      range                   = 800,
		  cegtag                  = [[ct_drone_energyshot]],
	      reloadtime              = 3,
	      smokedelay              = [[0.1]],
	      smokeTrail              = false,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      turret                  = true,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },
	
	  },	
	
	
	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Drone Fighter]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 150,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 60,
	      object           = [[wrecks/kdiairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Fighter]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 75,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 30,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 900,
	    },

  	  },

	}


return lowerkeys({ ["kdiairdrone"] = kdiairdrone })