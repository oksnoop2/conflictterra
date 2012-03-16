	unitDef = {
	  unitname            = [[btransportcruiser]],
	  name                = [[Takeda Class Cruiser]],
	  description         = [[Transport Cruiser - Ferries units through the air. Set to Repeat to establish ferry routes.]],
	  acceleration        = 0.16,
	  airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 6.25,
	  buildCostEnergy     = 500,
	  buildCostMetal      = 500,
	  builder             = false,
	  buildPic            = [[btransportcruiser.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  reclaimable         = false,

	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[192 100 302]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[ellipsoid]],

	  collide             = true,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 300,
	
	  explodeAs           = [[BIG_UNIT]],
	  floater             = true,
	  footprintx          = 12,
	  footprintZ          = 12,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 1500,
	  maxDamage           = 2500,
	  maxVelocity         = 8,
	  verticalSpeed       = 40,
	  noAutoFire          = false,
	  objectName          = [[btransportcarrier2.s3o]],
	  releaseHeld         = true,
	  seismicSignature    = 0,
	  selfDestructAs      = [[BIG_UNIT]],
	  showNanoFrame       = false,
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  transportCapacity   = 10,
	  transportMass       = 6000,
	  transportSize       = 1000,
	  loadingRadius       = 220,
	  turnRate            = 250,
	  verticalSpeed       = 30,
	  transportUnloadMethod = 2,
	  upright             = true,
	  script              = [[btransportcruiser.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Takeda Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 12,
	      footprintZ       = 12,
	      metal            = 1000,
	      object           = [[wrecks/btransportcarrier2wreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Takeda Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1000,
	      energy           = 0,
	      footprintX       = 12,
	      footprintZ       = 12,
	      metal            = 500,
	      object           = [[b11x12heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ btransportcruiser = unitDef })
