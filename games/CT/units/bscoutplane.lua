	unitDef = {
	  unitname            = [[bscoutplane]],
	  name                = [[Suzume Type Plane]],
	  description         = [[Scout Plane - Unmanned and unarmed scouting aircraft.  Very fast, and equipped with radar.]],
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
	  maxVelocity         = 10,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
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
	      description      = [[Wreckage - Scout Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 213,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Scout Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 142,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bscoutplane = unitDef })