	unitDef = {
	  unitname            = [[bvhsamobile]],
	  name                = [[Sekai Type Tank]],
	  description         = [[Heavy Siege Artillery - Long range Anti-Building artillery. Must Deploy to fire.]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 700,
	  builder             = false,
	  buildPic            = [[bvhsamobile.png]],
	  buildTime           = 26,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[General's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 950,
	  maxDamage           = 850,
	  maxSlope            = 18,
	  maxVelocity         = 1.5,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bvhsa.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 1600,
	  smoothAnim          = true,
	  
	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 32,
	  
	  turnInPlace         = 1,
	  turnRate            = 500,
	  script              = [[bvhsamobile.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Sekai Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 425,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 350,
	      object           = [[wrecks/bvhsamobilewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 10500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Sekai Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 212,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 175,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bvhsamobile = unitDef })