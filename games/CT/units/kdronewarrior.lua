local kdronewarrior = {
	name                = [[Warrior Drone]],
	description         = [[Fires a powerful beam of Anti-Unit plasma. Can Burrow.]],
    acceleration        = 1,
    brakerate           = 0.1,
    buildpic            = [[kdronewarrior.png]],
	buildCostEnergy     = 300,
	buildCostMetal      = 300,
	buildTime           = 15,
	CanAttack 			= true,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
	canStop             = true,
	category            = [[LAND]],
    corpse              = [[DEAD]],
    reclaimable         = false,
	
	cloakCost           = 2,
    cloakCostMoving     = 2,
	cloakTimeout        = 0,
    init_Cloaked        = false,	
	
    energyMake          = 0,
	explodeAs           = [[DRONE_GROUND_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 700,
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
	
	sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_dirt",
	    },
	},	
	
	sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	smoothAnim          = true,
	turnInPlace         = 1,
	turnRate            = 1000,
	script              = "kdronewarrior.lua",

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
		  avoidFeature            = false,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Land
		default = 50,
		Cruiser = 50,
		Building = 50,
		Tank = 100,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,

		Meteor = 0,
		Drone = 50,
		Spare1 = 50,
		Spare2 = 50,
		Spare3 = 50,
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