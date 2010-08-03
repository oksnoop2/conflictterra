local bseaengineer2 = {
	name                = [[Advanced Naval Engineer Support Ship]],
	description         = [[Larger seaworthy construction vessel with more advanced build options.]],
        acceleration        = 0.05,
	bmcode              = [[1]],
        brakerate           = 0.5,
	buildCostEnergy     = 280,
	buildCostMetal      = 224,
        buildDistance       = 300,
        builder             = true,

	buildoptions		= {
                [[bseamex]],
		[[bseapowerplant]],
		[[badvshipyard]],
		[[badvsubpens]],
		[[badvsearadartower]],
		[[badvtorpedoturret]],
		[[bnavydefship]],
	},

        buildpic            = [[bseaengineer2.png]],
	buildTime           = 25,
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
        energyMake          = 0.25,
	energyUse           = 0,
	explodeAs           = [[SMALL_UNIT]],
	floater             = true,
        footprintx          = 5,
	footprintZ          = 5,
	idleAutoHeal        = 0,
	maneuverleashlength = [[640]],
	mass                = 120,
	maxDamage           = 500,
	maxVelocity         = 2.5,
        metalMake           = 0.25,
	minCloakDistance    = 75,
        minWaterDepth       = 5,
	movementClass       = [[BOAT3]],
	noAutoFire          = false,
        noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	objectName          = "bseaengineer2.s3o",
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
	waterline           = 5,
	script		    = "bseaengineer2.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Naval Engineer]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 112,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Naval Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 56,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["bseaengineer2"] = bseaengineer2 })