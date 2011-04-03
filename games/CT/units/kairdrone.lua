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
	kamikaze            = 1,
	kamikazeDistance    = 25,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 300,
    maxSlope            = 99999999,
	maxVelocity         = 7,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS]],
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
	      def                = [[Laser]],
	      --badTargetCategory  = [[MINERALS]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Mine = {
	      name                    = [[Mine]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
	      },
	
	      
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
	      object           = [[wrecks/kairdronewreck.s3o]],
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


return lowerkeys({ ["kairdrone"] = kairdrone })