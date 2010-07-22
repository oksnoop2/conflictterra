	unitDef = {
	  unitname            = [[bnavydefmobileship]],
	  name                = [[Yoshida Class Battery (Mobile Form)]],
	  description         = [[Anti-Navy Defense Ship (Mobile Form) - Mobile Form of a navy defense ship.  Unarmed.]],
	  acceleration        = 0.04,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 4000,
	  buildCostMetal      = 3200,
	  builder             = false,
	  buildPic            = [[bnavydefship.png]],
	  buildTime           = 180,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[FLOAT]],
          collisionVolumeOffsets = [[0 8 0]],
          collisionVolumeScales  = [[128 85 128]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[LARGE_BUILDING]],
          footprintx          = 10,
	  footprintZ          = 10,
	  idleAutoHeal        = 0,
	  mass                = 3000,
	  maxDamage           = 20000,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  minWaterDepth       = 22,
	  minCloakDistance    = 150,
	  movementClass       = [[BOAT6]],
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[bnavydefship.s3o]],
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

	  sightDistance       = 500,
	  smoothAnim          = true,
	  TEDClass            = [[TANK]],
	  turnRate            = 231,
	  workerTime          = 0,
	  unitRestricted      = 5,
	  waterline           = 15,
          script              = [[bnavydefmobileship.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Navy Defense Ship (Mobile Form)]],
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
	      metal            = 15000,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Navy Defense Ship (Mobile Form)]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 10000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 8,
	      footprintZ       = 8,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 10000,
	      object           = [[b8x8heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bnavydefmobileship = unitDef })