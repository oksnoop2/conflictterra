	unitDef = {
	  unitname            = [[badvtorpedoturret]],
	  name                = [[Advanced Torpedo Emplacement]],
	  description         = [[Advanced Floating Torpedo Emplacement - Floating torpedo platform that fires at nearby ships.]],
	  acceleration        = 0,
	  activateWhenBuilt   = true,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 800,
	  builder             = false,
	  buildPic            = [[badvtorpedoturret.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[FLOAT]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[SMALL_BUILDING]],
          footprintx          = 4,
	  footprintZ          = 4,
	  floater             = true,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 125,
	  maxDamage           = 9300,
          maxSlope            = 36,
	  maxVelocity         = 0,
          minWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[badvtorpedoturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  TEDClass            = [[WATER]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[ooo ooo ooo]],
          script              = [[badvtorpedoturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

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
		Cruiser = 500,
		Building = 500,
		Mech = 500,
		Tank = 500,
		Aircraft = 500,
		Ship = 500,
		Sub = 500,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[btorpedo.s3o]],
	      propeller               = [[1]],
	      range                   = 500,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/torpedolaunch]],
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
	      metal            = 6975,
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
	      metal            = 4650,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvtorpedoturret = unitDef })
