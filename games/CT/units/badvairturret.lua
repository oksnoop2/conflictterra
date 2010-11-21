	unitDef = {
	  unitname            = [[badvairturret]],
	  name                = [[Anti-Air Flak Cannon]],
	  description         = [[Very powerful flak cannon installation.  Tears through aircraft.]],
	  activateWhenBuilt   = true,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 800,
	  builder             = false,
	  buildPic            = [[badvairturret.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[SINK]],
	  collisionVolumeTest = 1,
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  damageModifier      = 0.25,
	  explodeAs           = [[SMALL_BUILDING]],
          footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 140,
	  maxDamage           = 10500,
          maxSlope            = 18,
          maxWaterDepth       = 0,
	  minCloakDistance    = 60,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[badvairturret.s3o]],
	  seismicSignature    = 16,
	  selfDestructAs      = [[SMALL_BUILDING]],

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash_big",
		"custom:orc_machinegun_muzzle_big",
	    },
	
	  },

	  shootme             = [[1]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  TEDClass            = [[FORT]],
	  workerTime          = 0,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
          script              = [[badvairturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Flak          = {
	      name                    = [[Flak Cannon]],
	      areaOfEffect            = 64,
	      burnblow                = true,
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 100,
		Ship = 5,
		Sub = 2.5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-24]],
	      range                   = 900,
	      reloadtime              = 0.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      unitsonly               = [[1]],
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Anti-Air Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 7875,
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
	      description      = [[Debris - Advanced Anti-Air Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 5250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvairturret = unitDef })
