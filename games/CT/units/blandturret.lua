	unitDef = {
	  unitname            = [[blandturret]],
	  name                = [[Dual Cannon Turret]],
	  description         = [[Anti-Unit pair of cannons to defend your base.]],
	  buildCostEnergy     = 275,
	  buildCostMetal      = 275,
	  builder             = false,
	  buildPic            = [[blandturret.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 35,
	  maxDamage           = 1125,
	  maxSlope            = 36,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[blandturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 540,
	  smoothAnim          = true,
	  yardMap             = [[oooo oooo oooo oooo]],

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_tank",
	    },
	  },

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  script              = [[blandturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      burst                   = 2,
	      burstrate               = 0.001,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		default = 100,
		Cruiser = 100,
		Building = 100,
		Land = 200,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 600,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Dual Cannon Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 562,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 137,
	      object           = [[wrecks/blandturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3900,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Dual Cannon Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 281,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 68,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1950,
	    },
	
	  },
	
	}
	
	return lowerkeys({ blandturret = unitDef })
