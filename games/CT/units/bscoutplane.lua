	unitDef = {
	  unitname            = [[bscoutplane]],
	  name                = [[Suzume Type Plane]],
	  description         = [[Scout Plane - Unmanned and unarmed scouting aircraft. Very fast, and equipped with radar.]],
	  amphibious          = false,
	  buildCostEnergy     = 100,
	  buildCostMetal      = 100,
	  builder             = false,
	  buildPic            = [[bscoutplane.png]],
	  buildTime           = 10,
	  canAttack           = false,
	  canDropFlare        = false,
	  canFly              = true,
	  canFight            = false,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[FIXEDWING]],
	  collide             = false,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 400,
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  floater             = false,
	  footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  mass                = 150,
	  maxAcc              = 1,
	  maxDamage           = 200,
	  maxVelocity         = 8,
	  noAutoFire          = false,
	  objectName          = [[bscoutplane.s3o]],
	  radarDistance       = 750,
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  turnRadius          = 200,
	  script              = [[bscoutplane.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Suzume Type Plane]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 100,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 50,
	      object           = [[wrecks/bscoutplanewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Suzume Type Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 50,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 750,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bscoutplane = unitDef })