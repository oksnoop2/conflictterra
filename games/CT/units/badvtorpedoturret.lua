	unitDef = {
	  unitname            = [[badvtorpedoturret]],
	  name                = [[Advanced Floating Torpedo Turret]],
	  description         = [[Floating torpedo platform that fires at nearby ships.]],
	  acceleration        = 0,
	  activateWhenBuilt   = true,
	  brakeRate           = 0,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 800,
	  builder             = false,
	  buildPic            = [[badvtorpedoturret.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[FLOAT]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
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
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP]],
	  objectName          = [[badvtorpedoturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  yardMap             = [[ooo ooo ooo]],
          script              = [[badvtorpedoturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
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
		default = 500,
		Cruiser = 500,
		Building = 500,
		Mech = 500,
		Tank = 500,
		Aircraft = 500,
		Ship = 500,
		Sub = 500,

		Meteor = 0,
		Drone = 500,
		Spare1 = 500,
		Spare2 = 500,
		Spare3 = 500,
	      },
	
	      --explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/btorpedo.s3o]],
	      range                   = 500,
	      reloadtime              = 1.5,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
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
	      damage           = 6975,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 400,
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
	      damage           = 4650,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvtorpedoturret = unitDef })
