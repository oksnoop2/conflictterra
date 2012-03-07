local kdronewarrior = {
	name                = [[Warrior Drone]],
	description         = [[Fires a powerful beam of plasma at ground units.]],
    acceleration        = 1,
    brakerate           = 0.1,
    buildpic            = [[kdronewarrior.png]],
	buildCostEnergy     = 300,
	buildCostMetal      = 300,
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
	explodeAs           = [[DRONE_GROUND_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 900,
    maxSlope            = 99999999,
	maxVelocity         = 3,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	objectName          = "kdronewarrior.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_GROUND_UNIT]],
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
	      def                = [[Laser]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Laser = {
	      name                    = [[BeamLaser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 300,
		Cruiser = 300,
		Building = 300,
		Mech = 300,
		Tank = 300,
		Aircraft = 300,
		Ship = 300,
		Sub = 300,

		Meteor = 0,
		Drone = 300,
		Spare1 = 300,
		Spare2 = 300,
		Spare3 = 300,
	      },

	      beamTime                = 0.5,
	      explosionGenerator      = [[custom:ct_impact_beam_green]],
	      duration                = 5,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 500,
	      reloadtime              = 2,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0,
	      thickness               = 5,
	      tolerance               = 100,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	  
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 1000,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "kdronewarrior.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Drone Warrior]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 450,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 150,
	      object           = [[wrecks/kdronewarriorwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Warrior]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 225,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 75,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2250,
	    },

  	  },

	}


return lowerkeys({ ["kdronewarrior"] = kdronewarrior })