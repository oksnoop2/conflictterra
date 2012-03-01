local ktriairdrone = {
	name                = [[Tri Air Drone]],
	description         = [[The Tri Air Drone is a long range flying siege unit. Can only attack ground.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[ktriairdrone.png]],
	buildCostEnergy     = 400,
	buildCostMetal      = 400,
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
	reclaimable         = false,

    energyMake          = 1,
	explodeAs           = [[DRONE_AIR_UNIT]],
    footprintx          = 2,
	footprintZ          = 2,
	hoverAttack         = true,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 1000,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
    noChaseCategory     = [[MINERALS GUNSHIP FIXEDWING CRUISER SUB]],
	objectName          = "ktriairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_AIR_UNIT]],
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

	weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 1,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 12,
		Building = 12,
		Mech = 12,
		Tank = 12,
		Aircraft = 12,
		Ship = 12,
		Sub = 12,

		Meteor = 0,
		Drone = 12,
		Spare1 = 12,
		Spare2 = 12,
		Spare3 = 12,
	      },

	      beamTime                = 0.1,
	      explosionGenerator      = [[custom:ct_impact_beam_green]],		  
	      duration                = 5,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 800,
	      reloadtime              = 0.1,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      sweepFire               = true,
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
	turnRate            = 800,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "ktriairdrone.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Tri Air Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 200,
	      object           = [[wrecks/ktriairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 6000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tri Air Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 100,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3000,
	    },

  	  },

	}


return lowerkeys({ ["ktriairdrone"] = ktriairdrone })
