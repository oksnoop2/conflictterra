	unitDef = {
	  unitname            = [[kdroneflyer]],
	  name                = [[Flying Replicator]],
	  description         = [[Replicator that flys.]],
	  acceleration        = 0.154,
	  amphibious          = false,
	  bankscale           = [[1]],
	  bmcode              = [[1]],
	  brakeRate           = 3.75,
	buildCostEnergy     = 0,
	buildCostMetal      = 100,
    buildDistance       = 150,
    builder             = true,
		buildoptions		= {
        [[kdrone]],
 		[[kdronemine]],
		[[kdronefactory]],
		[[kdroneflyer]],
               
	},

	buildTime           = 15,
    canAssist           = true,
	CanAttack 			=1,
	CanCapture			=1,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canstop             = [[1]],
	  category            = [[GUNSHIP]],
	  collide             = false,
	  corpse              = [[DEAD]],
      cruiseAlt           = 50,
      reclaimable         = false,
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  floater             = false,
      footprintx          = 3,
	  footprintZ          = 3,
      hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 125,
	  maxDamage           = 575,
	  maxVelocity         = 5,
	  minCloakDistance    = 75,
	  moverate1           = [[3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[kdroneflyer.s3o]],
	  scale               = [[1]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
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

	  side                = [[Replicator]],
	  sightDistance       = 500,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  turnRate            = 693,
	  workerTime          = 0,
          script              = [[kdroneflyer.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 50,
		Building = 50,
		Mech = 50,
		Tank = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 100,
	      reloadtime              = 0.5,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 1,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Flying Replicator]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 431,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 325,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Wreckage - Flying Replicator]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 287,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 162,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneflyer = unitDef })