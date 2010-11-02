	unitDef = {
	  unitname            = [[badvradartank]],
	  name                = [[Ome Type Radar Tank]],
	  description         = [[Long Range Radar Hover Tank - More effective mobile radar and sonar unit.  Also jams radar. - Build Limit: 10]],
	  acceleration        = 0.04,
          activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 100,
	  buildCostMetal      = 80,
	  builder             = false,
	  buildPic            = [[badvradartank.png]],
	  buildTime           = 14,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  canHover            = true,
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
          energyUse           = 1.5,
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 70,
	  maxDamage           = 1750,
	  maxSlope            = 18,
	  maxVelocity         = 1.75,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[MedHOVER]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	  objectName          = [[badvradartank.s3o]],
          onoffable           = true,
          radarDistance       = 2500,
          radarDistanceJam    = 750,
          sonarDistance       = 2500,
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/hoverengine",
		},
	      ok = {
		"ct/hoverengine",
		},
	  },

	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  turninplace         = 0,
	  turnInPlace         = 0,
	  turnRate            = 231,
	  workerTime          = 0,
	  unitRestricted      = 10,
          script              = [[badvradartank.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Radar Tank]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1312,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 40,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Radar Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 875,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 20,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvradartank = unitDef })