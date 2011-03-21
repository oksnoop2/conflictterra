local kdiairdrone = {
	name                = [[Di Air Drone]],
	description         = [[Drone Fighter]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdiairdrone.png]],
	buildCostEnergy     = 80,
	buildCostMetal      = 80,
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
    cruiseAlt           = 50,
	reclaimable         = false,

    energyMake          = 1,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 2,
	footprintZ          = 2,
	hoverAttack         = false,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 300,
    maxSlope            = 99999999,
	maxVelocity         = 8,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	objectName          = "kdiairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
    side                = [[Drone]],
    sightDistance       = 700,
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
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 10,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 20,
		Ship = 10,
		Sub = 10,
	      },

	      duration                = 0.01,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      range                   = 700,
	      reloadtime              = 0.25,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.07,
	      thickness               = 4,
	      tolerance               = 2000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 2000,
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

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Drone Engineer]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 50,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["kdiairdrone"] = kdiairdrone })