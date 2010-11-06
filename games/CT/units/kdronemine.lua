local kdronemine = {
	name                = [[Replicator]],
	description         = [[The Replicator will replicate.]],
        acceleration        = 0.06,
        brakerate           = 1.5,
        buildpic            = [[kdronemine.png]],
	buildCostEnergy     = 0,
	buildCostMetal      = 100,
        buildDistance       = 220,
        builder             = 1,

	buildoptions		= {
                [[kdronemine]],

               
	},

	buildTime           = 15,
        canAssist           = true,
		CanAttack =1,
	CanCapture =1,
        canGuard            = true,
	canMove		    = false,
	canPatrol           = true,
        canReclaim          = true,
	canstop             = [[1]],
	category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

	defaultmissiontype  = [[Standby]],
        energyMake          = 10,

	explodeAs           = [[SMALL_UNIT]],
        footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	leaveTracks         = false,
	maneuverleashlength = [[640]],
	mass                = 70,
	maxDamage           = 350,
        maxSlope            = 300,
	maxVelocity         = 2,
        maxWaterDepth       = 10000,
        metalMake           = 10,
	minCloakDistance    = 75,
	movementClass       = [[Engineer]],
        noChaseCategory     = [[MINERALS]],
	objectName          = "kdronemine.s3o",
        onoffable           = false,
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 500,
	Kamikaze=1;
	KamikazeDistance=50;
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
	      def                = [[Mine]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs             = {
	
	    Mine = {
	      name                    = [[Mine]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 160,
		Building = 160,
		Mech = 160,
		Tank = 160,
		Aircraft = 160,
		Ship = 160,
		Sub = 10,
	      },
	
	      
	    },
	
	  },
	  
	smoothAnim          = true,
	steeringmode        = [[1]],
	TEDClass            = [[TANK]],
        terraformSpeed      = 300,
	reclaimSpeed        = 300,
	trackOffset         = 12,
	trackStrength       = 5,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 15,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 560,
	showNanospray	    = 1,
	Resurrectspeed      =100,
	workerTime          = 1,
	script		    = "kdronemine.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Replicator]],
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
	      metal            = 56,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Replicator]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 28,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["kdronemine"] = kdronemine })