local kdroneminer = {
	name                = [[Spread Shot Drone]],
	description         = [[Dangerous at close range, this unit fires a spread of shots.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdroneminer.png]],
	buildCostEnergy     = 150,
	buildCostMetal      = 150,
    buildDistance       = 150,
    builder             = false,


	buildTime           = 15,
    canAssist           = true,
	CanAttack 			= 1,
	CanCapture			= false,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[LAND]],
    corpse              = [[DEAD]],
    reclaimable         = false,

    energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 700,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	objectName          = "kdroneminer.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
    side                = [[Drone]],
    sightDistance       = 400,
	sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },
	 weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 50,
		Cruiser = 50,
		Building = 30,
		Mech = 50,
		Tank = 50,
		Aircraft = 50,
		Ship = 30,
		Sub = 30,

		Meteor = 0,
		Drone = 30,
		Spare1 = 20,
		Spare2 = 30,
		Spare3 = 30,
	      },
	
	    --model                   = [[bshell.s3o]],
		  cegtag                  = [[VULCANFX]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
		  projectiles             =5,
		  -- groundbounce            =1,
		 -- numbounce               =3,
		 -- waterbounce             =1,
		 -- bouncebebound           =.8,
		 -- bounceblip              =.8,
		  sprayangle              =2000,
	      interceptedByShieldType = 1,
	      range                   = 400,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 500,
	    },
	
	  },
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 560,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "kdroneminer.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Spread Shot Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 50,
	      object           = [[wrecks/kdroneminerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Spread Shot Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 25,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	    },

  	  },

	}


return lowerkeys({ ["kdroneminer"] = kdroneminer })