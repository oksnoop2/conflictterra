	unitDef = {
	  unitname            = [[btorpedoturret]],
	  name                = [[Floating Torpedo Turret]],
	  description         = [[Torpedo Turret - Fires two torpedoes at nearby naval vessels.]],
	  acceleration        = 0,
	  activateWhenBuilt   = true,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 280,
	  builder             = false,
	  buildPic            = [[btorpedoturret.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[FLOAT]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[SMALL_UNITEX]],
          footprintx          = 3,
	  footprintZ          = 3,
	  floater             = true,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 125,
	  maxDamage           = 3500,
          maxSlope            = 36,
	  maxVelocity         = 0,
          minWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[btorpedoturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNITEX]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,
	  TEDClass            = [[WATER]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[ooo ooo ooo]],
          script              = [[btorpedoturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Torpedo = {
	      name                    = [[Torpedo]],
	      areaOfEffect            = 16,
	      avoidFriendly           = false,
	      burnblow                = true,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 400,
		Building = 400,
		Mech = 400,
		Tank = 400,
		Aircraft = 400,
		Ship = 400,
		Sub = 400,
	      },
	
	      explosionGenerator      = [[custom:TORPEDO_HIT]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[btorpedo.s3o]],
	      propeller               = [[1]],
	      range                   = 500,
	      reloadtime              = 3,
	      soundHit                = [[OTAunit/XPLODEP1]],
	      soundStart              = [[OTAunit/TORPEDO1]],
	      startVelocity           = 140,
	      tolerance               = 42767,
	      tracks                  = true,
	      turnRate                = 8000,
	      turret                  = true,
	      waterWeapon             = true,
	      weaponAcceleration      = 15,
	      weaponTimer             = 4,
	      weaponType              = [[TorpedoLauncher]],
	      weaponVelocity          = 140,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Torpedo Turret]],
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
	      description      = [[Debris - Torpedo Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ btorpedoturret = unitDef })
