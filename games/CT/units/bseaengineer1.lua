local bseaengineer1 = {
	name                = [[Naval Engineer Support Ship]],
	description         = [[Seaworthy construction vessel.  Can build floating economy buildings, factories, and defences.]],
        acceleration        = 0.05,
	bmcode              = [[1]],
        brakerate           = 0.5,
	buildCostEnergy     = 140,
	buildCostMetal      = 112,
        buildDistance       = 300,
        builder             = true,

	buildoptions		= {
		[[bseapowerplant]],
		[[bshipyard]],
		[[bsubpens]],
		[[bsearadartower]],
		[[btorpedoturret]],
	},

        buildpic            = [[bseaengineer1.png]],
	buildTime           = 15,
        canAssist           = false,
        canGuard            = true,
	canFight            = false,
	canMove		    = true,
	canPatrol           = true,
        canReclaim          = true,
	canstop             = [[1]],
	category            = [[SHIP]],
        corpse              = [[DEAD]],
        reclaimable         = false,


	defaultmissiontype  = [[Standby]],
        energyMake          = 0,
	energyUse           = 0,
	explodeAs           = [[SMALL_UNIT]],
	floater             = true,
        footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 0,
	maneuverleashlength = [[640]],
	mass                = 90,
	maxDamage           = 350,
	maxVelocity         = 2,
        metalMake           = 0,
	minCloakDistance    = 75,
        minWaterDepth       = 5,
	movementClass       = [[LightSHIP]],
	noAutoFire          = false,
        noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	objectName          = "bseaengineer1.s3o",
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
	showNanoSpray       = false,
        side                = [[NKG]],
        sightDistance       = 500,
	smoothAnim          = true,
	steeringmode        = [[1]],

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:buildersparks",
	    },
	
	  },

	TEDClass            = [[SHIP]],
        terraformSpeed      = 600,
	reclaimSpeed        = 300,
	turnRate            = 448,
	workerTime          = 1,
	waterline           = 2,
	script		    = "bseaengineer1.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Naval Engineer]],
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
	      description      = [[Debris - Naval Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 28,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["bseaengineer1"] = bseaengineer1 })