	unitDef = {
	  unitname            = [[blanddefmobileship]],
	  name                = [[Yamada Class Battery (Mobile Form)]],
	  description         = [[Mobile Form of an anti-land battery.  Unarmed.  Can transform into an immobile, armed form.]],
	  acceleration        = 0.04,
	  brakeRate           = 0.02,
	  buildCostEnergy     = 1500,
	  buildCostMetal      = 1500,
	  builder             = false,
	  buildPic            = [[blanddefship2.png]],
	  buildTime           = 90,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canHover            = true,
	  category            = [[HOVER]],
          collisionVolumeOffsets = [[0 8 0]],
          collisionVolumeScales  = [[128 85 128]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[LARGE_BUILDING]],
          footprintx          = 8,
	  footprintZ          = 8,
	  idleAutoHeal        = 0,
	  mass                = 3000,
	  maxDamage           = 10000,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 150,
	  movementClass       = [[HOVER8x8]],
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
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
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  unitRestricted      = 2,
          script              = [[blanddefmobileship.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Land Defense Ship (Mobile Form)]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 15000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1600,
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
	      damage           = 10000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 8,
	      footprintZ       = 8,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 800,
	      object           = [[b8x8heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blanddefmobileship = unitDef })
