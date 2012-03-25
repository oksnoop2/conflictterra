	unitDef = {
	  unitname            = [[btorpedoturret]],
	  name                = [[Floating Torpedo Turret]],
	  description         = [[Fires two Anti-Navy torpedoes.]],
	  activateWhenBuilt   = true,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 280,
	  builder             = false,
	  buildPic            = [[btorpedoturret.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[FLOAT]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 3,
	  footprintZ          = 3,
	  floater             = true,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 125,
	  maxDamage           = 875,
	  maxSlope            = 36,
	  minWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP CRUISER]],
	  objectName          = [[btorpedoturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  sightDistance       = 500,
	  smoothAnim          = true,
	  yardMap             = [[ooo ooo ooo]],
	  script              = [[btorpedoturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Torpedo = {
	      name                    = [[Torpedo]],
	      areaOfEffect            = 16,
		  avoidFeature            = false,
	      avoidFriendly           = false,
	      burnblow                = true,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Navy
		default = 200,
		Cruiser = 200,
		Building = 200,
		Land = 200,
		Aircraft = 200,
		Ship = 400,
		Sub = 400,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,
	      },
	
	      --explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/btorpedo.s3o]],
	      range                   = 500,
	      reloadtime              = 3,
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
	      description      = [[Wreckage - Torpedo Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 140,
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
	      damage           = 1750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 70,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ btorpedoturret = unitDef })
