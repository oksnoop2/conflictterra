	unitDef = {
	  unitname            = [[bscoutvehicle]],
	  name                = [[Shika Type Vehicle]],
	  description         = [[Recon Vehicle - Quick, cheap, unarmed reconnaissance vehicle. Radar equipped.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 75,
	  buildCostMetal      = 75,
	  builder             = false,
	  buildPic            = [[bscoutvehicle.png]],
	  buildTime           = 7,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 110,
	  maxDamage           = 350,
	  maxSlope            = 18,
	  maxVelocity         = 5,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK2x2]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bscoutvehicle.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,
	  radarDistance       = 500,
	  
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 2,
	  trackType           = [[StdTank]],
	  trackWidth          = 20,
	  
	  turnInPlace         = 0,
	  turnInPlaceSpeedLimit= 2.5,
	  turnRate            = 500,
	  workerTime          = 0,
	  script              = [[bscoutvehicle.lua]],

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Shika Type Vehicle]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 175,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 37,
	      object           = [[wrecks/bscoutvehiclewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 900,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Shika Type Vehicle]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 87.5,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 18,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 450,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bscoutvehicle = unitDef })