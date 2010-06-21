	unitDef = {
	  unitname            = [[badvnavalturret]],
	  name                = [[Anti-Naval Gun Emplacement]],
	  description         = [[Advanced Anti-Naval Turret - Fires a powerful torpedo.  Should be built near shore.]],
	  acceleration        = 0,
	  activateWhenBuilt   = true,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildAngle          = 16384,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 1000,
	  builder             = false,
	  buildPic            = [[badvnavalturret.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
   reclaimable                   = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[SMALL_UNITEX]],
          footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 125,
	  maxDamage           = 4650,
          maxSlope            = 36,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[badvnavalturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNITEX]],
	  side                = [[NKG]],
	  sightDistance       = 638,
	  smoothAnim          = true,
	  sonarDistance       = 580,
	  TEDClass            = [[WATER]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[ooo ooo ooo]],
          script              = [[badvnavalturret.lua]],
	
	  weapons             = {
	
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
		Cruiser = 1500,
		Building = 1500,
		Mech = 1500,
		Tank = 1500,
		Aircraft = 1500,
		Ship = 1500,
		Sub = 1500,
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
	      description      = [[Wreckage - Advanced Anti-Naval Turret]],
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
	      description      = [[Debris - Advanced Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvnavalturret = unitDef })
