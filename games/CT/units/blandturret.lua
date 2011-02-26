	unitDef = {
	  unitname            = [[blandturret]],
	  name                = [[Dual Cannon Turret]],
	  description         = [[Cheap, mildly effective turret that fires on terrestrial units.  Fires two cannons.]],
	  acceleration        = 0,
	  brakeRate           = 0,
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
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[blandturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 540,
	  smoothAnim          = true,
	  yardMap             = [[oooo oooo oooo oooo]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
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
	      burst                   = 2,
	      burstrate               = 0.001,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
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
	      description      = [[Wreckage - Anti-Land Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3375,
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
	      description      = [[Debris - Anti-Land Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 70,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blandturret = unitDef })
