	unitDef = {
	  unitname            = [[blanddefmobileship]],
	  name                = [[Yamada Class Battery (Mobile Form)]],
	  description         = [[Anti-Land Defense Ship (Mobile Form) - Mobile Form of a land defense ship.  Unarmed.]],
	  acceleration        = 0.04,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 4000,
	  buildCostMetal      = 3200,
	  builder             = false,
	  buildPic            = [[blanddefship2.png]],
	  buildTime           = 180,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  canHover            = true,
	  category            = [[HOVER]],
          collisionVolumeOffsets = [[0 8 0]],
          collisionVolumeScales  = [[128 85 128]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[LARGE_BUILDING]],
          footprintx          = 8,
	  footprintZ          = 8,
	  idleAutoHeal        = 0,
	  mass                = 3000,
	  maxDamage           = 20000,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 150,
	  movementClass       = [[HOVER4]],
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[blanddefship2.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[LARGE_BUILDING]],

	  side                = [[NKG]],

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  sightDistance       = 750,
	  smoothAnim          = true,
	  TEDClass            = [[TANK]],
	  turnRate            = 231,
	  workerTime          = 0,
	  unitRestricted      = 5,
          script              = [[blanddefmobileship.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Land Defense Ship (Mobile Form)]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Land Defense Ship (Mobile Form)]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 8,
	      footprintZ       = 8,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b8x8heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blanddefmobileship = unitDef })
