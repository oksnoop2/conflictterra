local ktriairdrone = {
	name                = [[Tri Air Drone]],
	description         = [[Shoots a long range beam of deadly plasma at its enemies.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[ktriairdrone.png]],
	buildCostEnergy     = 600,
	buildCostMetal      = 600,
	buildTime           = 20,
	CanAttack 			= true,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
	canStop             = true,
	category            = [[GUNSHIP]],
    canFly              = true,
	corpse              = [[DEAD]],
    cruiseAlt           = 200,
	collide             = true,
	reclaimable         = false,

    energyMake          = 1,
	explodeAs           = [[DRONE_AIR_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	hoverAttack         = true,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 500,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
    noChaseCategory     = [[MINERALS GUNSHIP FIXEDWING CRUISER SUB]],
	objectName          = "ktriairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_AIR_UNIT]],
    side                = [[Drone]],
    sightDistance       = 500,
	
	sounds              = {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },
	  
	  sfxtypes          = {
	    explosiongenerators = {
		"custom:ct_drone_binder_tri",
	    },
	  },	  

	smoothAnim          = true,
	turnInPlace         = 1,
	turnRate            = 800,
	script              = "ktriairdrone.lua",

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
		  avoidFeature            = false,
	      coreThickness           = 1,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--No Bonus
		default = 9,		  
		Cruiser = 9,
		Building = 9,
		Land = 9,
		Aircraft = 9,
		Ship = 9,
		Sub = 9,

		Meteor = 0,
		Drone = 9,
		Spare1 = 9,
		Spare2 = 9,
		Spare3 = 9,
	      },

	      beamTime                = 0.1,
	      explosionGenerator      = [[custom:ct_impact_beam_green]],		  
	      duration                = 5,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 600,
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
	
	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Tri Air Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 400,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 250,
	      object           = [[wrecks/ktriairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tri Air Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 200,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 125,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3750,
	    },

  	  },

	}


return lowerkeys({ ["ktriairdrone"] = ktriairdrone })
