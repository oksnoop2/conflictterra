	--Takeda Class Cruiser Unit Def by Sanada
	--Notes:  Balanced 1

	unitDef = {
	  unitname            = [[btransportcruiser]],
	  name                = [[JK-001 Takeda Class Cruiser]],
	  description         = [[Transport Cruiser - Ferries units through the air. Set to Repeat to establish ferry routes.]],
	  acceleration        = 0.16,
	  airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 62.5,
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



	  collide             = false,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 300,
	
	  explodeAs           = [[CRUISER_EXPLOSION]],
	  floater             = true,
	  footprintx          = 4,
	  footprintZ          = 4,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 500,
	  maxDamage           = 1000,
	  maxVelocity         = 8,
	  minAirbasePower     = 1,
	  verticalSpeed       = 50,
	  noAutoFire          = false,
	  objectName          = [[btransportcruiser.s3o]],
	  releaseHeld         = true,
	  seismicSignature    = 0,
	  selfDestructAs      = [[CRUISER_EXPLOSION]],
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
	  
	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_damage_fire",
	    },
	  },

	  transportCapacity   = 1,
	  transportMass       = 6000,
	  transportSize       = 1000,
	  loadingRadius       = 500,
	  turnRate            = 250,
	  verticalSpeed       = 30,
	  transportUnloadMethod = 1,
	  unloadSpread        = 10,
	  fallSpeed           = 1,
	  upright             = true,
	  script              = [[btransportcruiser.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Takeda Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 12,
	      footprintZ       = 12,
	      metal            = 250,
	      object           = [[wrecks/btransportcruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Takeda Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      footprintX       = 12,
	      footprintZ       = 12,
	      metal            = 125,
	      object           = [[b11x12heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ btransportcruiser = unitDef })
