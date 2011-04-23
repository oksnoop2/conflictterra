local kairdrone = {
	name                = [[Air Drone]],
	description         = [[The Air Drone is a weak kamikaze stealth cloaking unit used for scouting and air defense Can only attack air.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kairdrone.png]],
	buildCostEnergy     = 100,
	buildCostMetal      = 100,
    buildDistance       = 150,
    builder             = false,
	buildTime           = 15,
    canAssist           = true,
	CanAttack 			= 1,
	CanCapture			= 0,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[GUNSHIP]],
    canFly              = true,
	corpse              = [[DEAD]],
    cruiseAlt           = 50,
	cloakCost           = 10,
    cloakCostMoving     = 10,
    init_Cloaked        = false,
	reclaimable         = false,
	stealth             =true,
    energyMake          = 1,
	explodeAs           = [[DRONE_PETARD]],
    footprintx          = 2,
	footprintZ          = 2,
	hoverAttack         = true,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 500,
    maxSlope            = 99999999,
	maxVelocity         = 7,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	objectName          = "kairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_PETARD]],
    side                = [[Drone]],
    sightDistance       = 500,
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
		"custom:buildersparks",
	    },
	
	  },

	weapons             = {
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[FIXEDWING]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 0,
		Cruiser = 0,
		Building = 0,
		Mech = 0,
		Tank = 0,
		Aircraft = 0,
		Ship = 0,
		Sub = 0,

		Meteor = 0,
		Drone = 0,
		Spare1 = 0,
		Spare2 = 0,
		Spare3 = 0,
	      },
	
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 100,
	      reloadtime              = 1,
	      smokedelay              = [[0.1]],
	      smokeTrail              = false,
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
	  
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 800,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "kairdrone.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Air Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 50,
	      object           = [[wrecks/kairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Air Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	    },

  	  },

	}


return lowerkeys({ ["kairdrone"] = kairdrone })