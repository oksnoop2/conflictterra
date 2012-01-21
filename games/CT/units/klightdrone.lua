local klightdrone = {
	name                = [[Anti-Air Cannon Drone]],
	description         = [[This drone is armed with an Anti-Air cannon, making it ideal for destroying aircraft and cruisers.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[klightdrone.png]],
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
    noChaseCategory     = [[SWIM LAND SHIP SINK FLOAT HOVER MINERALS SUB]],
	objectName          = "klightdrone.s3o",
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
	      badTargetCategory = [[BUILDING SWIM LAND SHIP SINK FLOAT HOVER]],
	      onlyTargetCategory  = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 2,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 16,
		Cruiser = 15,
		Building =0,
		Mech = 0,
		Tank = 0,
		Aircraft = 13,
		Ship = 0,
		Sub = 0,

		Meteor = 0,
		Drone = 16,
		Spare1 = 16,
		Spare2 = 16,
		Spare3 = 16,
	      },
	
	    --model                   = [[bshell.s3o]],
		  cegtag                  = [[VULCANFX]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
		  projectiles             =1,
		  -- groundbounce            =1,
		 -- numbounce               =3,
		 -- waterbounce             =1,
		 -- bouncebebound           =.8,
		 -- bounceblip              =.8,
		  sprayangle              =500,
	      interceptedByShieldType = 1,
	      range                   = 600,
	      reloadtime              = .4,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 3000,
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
	script		    = "klightdrone.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Cannon Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 350,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 75,
	      object           = [[wrecks/kdroneminerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Cannon Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 32,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1050,
	    },

  	  },

	}


return lowerkeys({ ["klightdrone"] = klightdrone })
